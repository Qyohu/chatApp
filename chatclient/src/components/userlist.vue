<template>
  <div class="userlist">
    <div class="header">
      <a-input-search placeholder="input search text" style="width: 200px" />

      <a-dropdown :trigger="['click']">
        <a class="ant-dropdown-link" @click="(e) => e.preventDefault()">
          <a-icon type="plus" style="fontsize: 0.7em" />
        </a>
        <a-menu slot="overlay">
          <a-menu-item key="0">
            <span>添加好友</span>
          </a-menu-item>
          <a-menu-item key="1">
            <span>扫一扫</span>
          </a-menu-item>
        </a-menu>
      </a-dropdown>
    </div>
    <a-divider></a-divider>
    <div class="user">
      <ul>
        <li
          v-for="(item, index) in userList"
          :key="index"
          @click="chooseChat(item)"
          ref="current"
          :id="item.id"
        >
          <div class="avatar">
            <a-badge :count="item.num"
              ><a-avatar :size="56" :src="item.avator">user</a-avatar></a-badge
            >
          </div>

          <span class="name">{{ item.username }}</span>
          <span class="time" v-if="item.isonline == 'true'">在线</span>
          <span class="time" v-else> </span>
        </li>
      </ul>
    </div>
  </div>
</template>
<script>
import socket from "@/assets/js/socket.js";
export default {
  props: {
    unreadList: Array,
  },
  data() {
    return {
      userList: [],
    };
  },
  mounted() {
    this.getUserlist();
    let that=this

    //监听好友上线
    socket.on("otherLogin", (data) => {
      this.$message.info(data.username + "上线了");
      that.getUserlist()
    });

    //监听好友退出登录
    socket.on("otherLogout", (data) => {
      this.$message.info(data.username + "下线了");
      that.getUserlist()
    });

    //监听好友断开连接
    socket.on("otherDisconnect", () => {
      that.getUserlist()
    });
  },
  methods: {
    //获取用户列表
    getUserlist() {
      let userId = window.localStorage.getItem("currentUserId");
      const values = { id: userId };
      this.$axios.post("/chat/getAllUser", values).then((res) => {
        if (res.data.code === 200) {
          let userList = res.data.data;
          userList.forEach((item) => {
            var arr = this.unreadList.filter((msg) => {
              return msg == item.username;
            });
            item.num = arr.length;
          });
          this.userList = userList;
        } else {
          this.$message.error("查询失败");
        }
      });
    },
    //选择聊天用户
    chooseChat(item) {
      //添加选中类
      this.$refs.current.forEach((li) => {
        if (li.id == item.id) {
          li.className = "current";
        } else {
          li.className = "";
        }
      });
      this.$emit("chooseChat", item);
      //删除小圆点
      if (this.unreadList) {
        this.userList.forEach((user) => {
          if (user.username == item.username) {
            user.num = 0;
          }
          let index = this.unreadList.indexOf(item.username);
          this.unreadList.splice(index, 1);
        });
      }
    },
    //清除选中类
    clearCurrentClass() {
      this.$refs.current.forEach((li) => {
        li.className = "";
      });
    },
  },
  watch: {
    //当未读信息更新时，更新用户列表
    unreadList: function (val) {
      this.userList.forEach((item) => {
        var arr = val.filter((msg) => {
          return msg == item.username;
        });
        item.num = arr.length;
      });
    },
    deep: true,
  },
};
</script>

<style scoped>
.userlist {
  padding-top: 10px;
  height: 100%;
  background-color: white;
  border-right: 1px solid #f3f3f3;
  overflow: auto;
}
.header {
  display: flex;
  justify-content: center;
  align-items: center;
}
.header a {
  cursor: pointer;
  font-size: 30px;
  color: #66b3ef;
  margin-left: 15px;
}
.ant-divider-horizontal {
  margin-top: 15px;
  margin-bottom: 0;
}
.user ul {
  padding: 0px;
}
.user li {
  cursor: pointer;
  padding: 6px;
  list-style: none;
  display: flex;
  align-items: center;
}
.user li:nth-child(1) {
  padding-top: 11px;
}
.user li:hover,
.user li.current {
  background-color: #f5f5f5;
}

.user li .avatar {
  flex: 1;
}
.user li .name {
  flex: 2;
  font-size: 17px;
  padding-left: 20px;
  text-align: start;
}
.user li .time {
  flex: 1;
}
</style>