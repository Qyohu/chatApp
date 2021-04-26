<template>
  <div class="home">
    <a-row class="row">
      <a-col :xs="0" :sm="0" :md="2" :lg="2" :xl="2">
        <div class="slider">
          <span>
            <a-avatar :size="54" :src="userAvator">USER</a-avatar>
          </span>

          <a-menu
            :default-selected-keys="['1']"
            :default-open-keys="['sub1']"
            mode="inline"
            :inline-collapsed="true"
          >
            <a-menu-item key="1" title="联系人">
              <a-icon type="pie-chart" />
            </a-menu-item>
            <a-menu-item key="2" title="设置">
              <a-icon type="desktop" />
            </a-menu-item>
          </a-menu>
        </div>
      </a-col>
      <a-col :xs="contectUser ? 0 : 24" :sm="10" :md="7" :lg="7" :xl="7">
        <Userlist @chooseChat="connectUser" :unreadList.sync="unreadList" />
      </a-col>
      <a-col :xs="contectUser ? 24 : 0" :sm="14" :md="15" :lg="15" :xl="15">
        <Content
          v-if="contectUser"
          :contectUser="contectUser"
          :currentUser="currentUser"
          :newMsg="newMsg"
        />
        <div class="content" v-else>{{ msg }}</div>
      </a-col>
    </a-row>
  </div>
</template>

<script>
import Userlist from "@/components/userlist.vue";
import Content from "@/components/content.vue";
import socket from "@/assets/js/socket.js";
export default {
  components: {
    Userlist,
    Content,
  },
  data() {
    return {
      //当前用户
      currentUser: null,
      //联系的用户
      contectUser: null,
      userAvator: null,
      unreadList: [],
      msg: "登录成功，选择好友开始聊天吧！O(∩_∩)O",
      //是否在聊天
      isChat: false,
      //最新消息
      newMsg: null,
    };
  },
  mounted() {
    //获取登录用户的信息
    let userId = window.localStorage.getItem("currentUserId");
    const values = { id: userId };
    this.$axios.post("/chat/getUserById", values).then((res) => {
      if (res.data.code === 200) {
        this.currentUser = res.data.data[0];
        this.userAvator = res.data.data[0].avator;
        //socket连接
        socket.on("connect", function () {
          console.log("与服务器连接成功");
        });
        socket.emit("login", this.currentUser);
        
        // 获取未读消息
        socket.on("unreadMsg", (data) => {
          data.forEach((item) => {
            //传给用户列表，用于显示未读消息数目
            this.unreadList.push(item.from);
            let username = item.from;
            item.from = {
              username: username,
              avator: item.avator,
            };

            let arr = [];
            arr.push(item);
            let strKey =
              "chat-user" +
              this.currentUser.username +
              "-" +
              item.from.username;
            if (window.localStorage[strKey]) {
              let oldArr = JSON.parse(window.localStorage[strKey]);
              oldArr.push(item);
              window.localStorage[strKey] = JSON.stringify(oldArr);
            } else {
              window.localStorage[strKey] = JSON.stringify(arr);
            }
          });
        });

        //接收消息
        socket.on("accept", (msg) => {
          console.log(msg);
          //如果在线且正在联系，则直接发送新消息
          console.log(this.isChat == true &&
              msg.from.username == this.contectUser.username);
          console.log(this.isChat == true &&
              msg.to.username == this.contectUser.username &&
              msg.to.isgroup == "true");
          if (
            (this.isChat == true &&
              msg.from.username == this.contectUser.username && msg.to.isgroup == "false") ||
            (this.isChat == true &&
              msg.to.username == this.contectUser.username &&
              msg.to.isgroup == "true")
          ) {
            this.newMsg = msg;
          } else {
            let strKey;
            //如果在线但未建立联系，则存入localStorage
            if (msg.to.isgroup == "true") {
              strKey =
                "chat-user" + this.currentUser.username + "-" + msg.to.username;
              console.log("群聊");
              this.unreadList.push(msg.to.username);
            } else {
              strKey =
                "chat-user" +
                this.currentUser.username +
                "-" +
                msg.from.username;
              console.log("单聊");
              this.unreadList.push(msg.from.username);
            }
            localStorage[strKey] = localStorage[strKey]
              ? localStorage[strKey]
              : "[]";
            let newArr = JSON.parse(window.localStorage[strKey]);
            newArr.push(msg);
            localStorage[strKey] = JSON.stringify(newArr);
          }
        });
      } else {
        this.$message.error("登录失败，未找到该用户");
      }
    });
  },
  methods: {
    //连接用户
    connectUser(item) {
      this.isChat = true;
      this.contectUser = null;
      this.msg = "";
      this.$nextTick(() => {
        this.contectUser = item;
        this.msg = "登录成功，选择好友开始聊天吧！O(∩_∩)O";
      });

      console.log(item);
    },
  },
};
</script>

<style scoped>
.slider {
  margin-top: 20px;
}
.ant-menu {
  width: 100%;
  background-color: #f3f3f3;
  margin-top: 50px;
}
.home {
  height: 100%;
}
.home .row {
  height: 100%;
}
.home .row .ant-col {
  height: 100%;
  background-color: #f3f3f3;
}
.content {
  height: 100%;
  background-color: #ffffff;
}
</style>