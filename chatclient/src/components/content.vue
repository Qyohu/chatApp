<template>
  <div class="content">
    <div class="header">
      <span class="back"
        ><a-icon type="left" v-if="currentUser" @click="backToUserlist"
      /></span>
      {{ contectUser.username }}
      <a-divider></a-divider>
    </div>
    <div class="chatlist">
      <div
        class="chatItem"
        v-for="(item, index) in chatList"
        :key="index"
        :class="{ self: item.from.username == currentUser.username }"
      >
        <div class="avatar">
          <a-avatar :size="56" :src="item.from.avator">user</a-avatar>
        </div>
        <div class="chatContent">
          {{ item.content }}
        </div>
      </div>
    </div>
    <div class="inputcome">
      <a-input-search
        placeholder="输入要发送的信息"
        enter-button="发送"
        v-model="inputData"
        size="large"
        @search="sendMessage"
      />
    </div>
  </div>
</template>
<script>
import socket from "@/assets/js/socket.js";
export default {
  props: {
    contectUser: Object,
    currentUser: Object,
    newMsg: Object,
  },
  data() {
    return {
      inputData: "",
      chatList: []
    };
  },
  beforeMount() {
    //读取信息
    this.getStorage();
    //发送已读指令
    socket.emit("readMsg", {
      from: this.currentUser.username,
      to: this.contectUser.username,
    });
  },
  mounted() {
    this.toBottom();
  },
  methods: {
    sendMessage() {
      let msg = {
        from: this.currentUser,
        to: this.contectUser,
        content: this.inputData,
        time: new Date().getTime(),
      };

      //发送到服务器
      socket.emit("sendMsg", msg);

      this.chatList.push(msg);
      this.saveStorage();
      this.inputData = "";
      //自动滚动到最底部
      this.$nextTick(() => {
        this.toBottom();
      });
    },
    //聊天记录存到localStorage
    saveStorage() {
      let strKey =
        "chat-user" +
        this.currentUser.username +
        "-" +
        this.contectUser.username;
      window.localStorage[strKey] = JSON.stringify(this.chatList);
    },
    //从localStorage读取聊天记录
    getStorage() {
      let strKey =
        "chat-user" +
        this.currentUser.username +
        "-" +
        this.contectUser.username;
      if (window.localStorage[strKey]) {
        this.chatList = JSON.parse(window.localStorage[strKey]);
      } else {
        this.chatList = [];
      }
    },
    //点击返回   ***使用$parent或$children可维护性很差，以后用$emit代替****
    backToUserlist() {
      //获取Home组件
      let homeNode = this.$parent.$parent.$parent;
      homeNode.contectUser = null;
      //调用userlist组件的清除样式属性
      homeNode.$children[0].$children[1].$children[0].clearCurrentClass();
      homeNode.isChat = false;
    },
    //自动滚动到最底部
    toBottom() {
      let chatbox = document.querySelector(".chatlist");
      chatbox.scrollTop = chatbox.scrollHeight;
    },
  },
  watch:{
    //收到新消息
    newMsg:function(val) {
      this.chatList.push(val);
      this.saveStorage();
      
      this.$nextTick(() => {
        this.toBottom();
      });
    }
  }
};
</script>

<style scoped>
.content {
  background-color: #ffffff;
  height: 100%;
  display: flex;
  flex-direction: column;
  justify-content: space-between;
}
.header {
  font-size: 20px;
  padding: 25px 0 0 0px;
}
.ant-divider-horizontal {
  margin-top: 15px;
  margin-bottom: 0;
}
.inputcome {
  background-color: #f3f3f3;
  display: flex-end;
  align-items: center;
  padding: 10px 0;
}

.inputcome .ant-input-search {
  width: 70%;
  margin: 0 auto;
}
.chatlist {
  display: flex;
  flex-direction: column;
  overflow: auto;
  padding: 0 20px 30px;
}
.chatItem {
  display: flex;
  justify-content: flex-start;
  margin-top: 30px;
}
.self {
  flex-direction: row-reverse;
  justify-content: flex-start;
  margin-top: 30px;
}
.chatItem .chatContent {
  margin: 0 10px 0;
  background-color: #f3f3f3;
  padding: 0 10px;
  border-radius: 30%;
  display: flex;
  align-items: center;
}
.back {
  cursor: pointer;
  float: left;
  margin-left: 10px;
}
</style>