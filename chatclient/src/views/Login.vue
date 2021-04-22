<template>
  <div>
    <img alt="Vue logo" src="../assets/game.png" />
    <login msg="Welcome to ChatApp" btn="登录" :isLoading="isLoading" />
  </div>
</template>

<script>
// @ is an alias to /src
import login from "@/components/login/login";

export default {
  components: {
    login,
  },
  data() {
    return {
      isLoading: false,
    };
  },
  methods: {
    handleOK(values) {
      this.$axios.post("/chat/login", values).then((res) => {
        if (res.data.code === 200) {
          this.$message.success(res.data.msg);
          this.isLoading = true;
          window.localStorage.setItem("currentUserId", res.data.data[0].id);
          this.$router.push("/home");
        } else {
          this.$message.error("登录失败，未找到该用户");
        }
      });
    },
  },
};
</script>
