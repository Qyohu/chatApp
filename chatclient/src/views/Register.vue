<template>
  <div>
    <img alt="Vue logo" src="../assets/game.png">
    <login msg="Welcome to ChatApp" btn="注册" :isLoading='isLoading'/>
  </div>
</template>

<script>
// @ is an alias to /src
import login from "@/components/login/login";


export default {
  name: 'Register',
  components: {
    login
  },
  data() {
    return {
      isLoading:false
    }
  },
  methods: {
    handleOK(values) {
      this.$axios.post('/chat/register',values).then((res)=> {
        if(res.data.code===200) {
          this.$message.success(res.data.msg)
          this.isLoading=true
          this.$router.replace('/')
        } else {
          this.$message.error('注册失败')
        }
      })
    }
  },
}
</script>