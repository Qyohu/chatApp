<template>
  <div class="main">
    <h3>{{ msg }}</h3>
    <a-form :form="form" class="form" @submit="handleSubmit">
      <a-form-item>
        <a-input
          v-decorator="[
            'username',
            { rules: [{ required: true, message: '用户名不能为空' }] },
          ]"
          placeholder="用户名"
        >
        <a-icon slot="prefix" type="user" style="color: rgba(0,0,0,.25)" />
        </a-input>
      </a-form-item>
      <a-form-item>
        <a-input-password
          v-decorator="[
            'password',
            {
              rules: [{ required: true, message: '密码不能为空' }],
            },
          ]"
          placeholder="密码"
        >
        <a-icon slot="prefix" type="lock" style="color: rgba(0,0,0,.25)" />

        </a-input-password>
        
      </a-form-item>
      <a-form-item
      >
        <a-button type="primary" html-type="submit" :loading='isLoading'> {{btn}} </a-button>
      </a-form-item>
    </a-form>
  </div>
</template>

<script>

export default {
  name: "login",
  props: {
    msg: String,
    btn: String,
    isLoading:Boolean
  },
  data() {
    return {
      checkNick: false,
      form: this.$form.createForm(this, { name: "login" }),
    };
  },
  methods: {
    //表单提交
    handleSubmit(e) {
      e.preventDefault();
      this.form.validateFields((err, values) => {
        if (!err) {
          this.$parent.handleOK(values)
        }
      });
    },
  },
};
</script>

<style scoped>
.main {
  margin: 0 auto;
  -webkit-border-radius: 12px 12px 12px 12px;
  border-radius: 12px 12px 12px 12px;
  background: #fff;
  width: 100%;
  max-width: 330px;
  position: relative;
  padding: 10px 20px 20px;
  -webkit-box-shadow: 0 32px 62px 0 rgb(0 0 0 / 30%);
  box-shadow: 0 32px 62px 0 rgb(0 0 0 / 30%);
  text-align: center;
}
.form {
  margin-top: 20px;
  display: flex;
  flex-direction: column;
}
</style>
