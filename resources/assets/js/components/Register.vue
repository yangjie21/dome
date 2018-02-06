<template>
  <el-form :model="ruleForm2" :rules="rules2" ref="ruleForm2" label-position="left" label-width="0px" class="demo-ruleForm login-container">
    <h3 class="title">注册</h3>
    <el-form-item prop="name">
      <el-input type="text" v-model="ruleForm2.name" auto-complete="off" placeholder="用户名"></el-input>
    </el-form-item>
    <el-form-item prop="account">
      <el-input type="text" v-model="ruleForm2.account" auto-complete="off" placeholder="手机号"></el-input>
    </el-form-item>
    <el-form-item prop="checkPass">
      <el-input type="password" v-model="ruleForm2.password" auto-complete="off" placeholder="密码"></el-input>
    </el-form-item>

    <el-form-item prop="checkPass">
      <el-input type="password" v-model="ruleForm2.checkPass" auto-complete="off" placeholder="确认密码"></el-input>
    </el-form-item>
    <el-form-item prop="checkCode">
      <el-input style="width:50%;float:left;" type="type" v-model="ruleForm2.code" auto-complete="off" placeholder="验证码"></el-input>
      <el-button v-show="show" style="float:right"  @click.native.prevent="handleSubmit" type="primary">获取验证</el-button>
      <el-button v-show="!show" style="float:right" type="primary" :loading="!show">{{count}}s</el-button>
    </el-form-item>
    <el-form-item style="width:100%;">
      <el-button type="primary" style="width:100%;" @click.native.prevent="handleSubmit2" :loading="registering">注册</el-button>
      <!--<el-button @click.native.prevent="handleReset2">重置</el-button>-->
    </el-form-item>
  </el-form>
</template>

<script>
  //import NProgress from 'nprogress'
  export default {
    data() {
      return {
        registering:false,
      	show: true,
        count: '',
        timer: null,
        ruleForm2: {
          name: '',
          account: '',
          password: '',
          checkPass: '',
          code:'',
        },
        rules2: {
          name: [
            { required: true, message: '请输入用户名', trigger: 'blur' },
            //{ validator: validaePass }
          ],
          account: [
            { required: true, message: '请输入账号', trigger: 'blur' },
            //{ validator: validaePass }
          ],
          checkPass: [
            { required: true, message: '请输入密码', trigger: 'blur' },
            //{ validator: validaePass2 }
          ],
          checkCode: [
            { required: true, message: '请输入验证码', trigger: 'blur' },
            //{ validator: validaePass2 }
          ],
        },
        checked: true
      };
    },
    methods: {
        handleSubmit: function (event) {
            var reg=11 && /^((13|14|15|17|18)[0-9]{1}\d{8})$/;
            console.log(this.ruleForm2.account);
            if(this.ruleForm2.account=='' || !reg.test(this.ruleForm2.account)){
               this.$message({
                  message: '请输入正确的手机号！',
                  type: 'error'
                });
               return;
            }else{
                this.$message({
                  message: '已发送到你的手机上，请注意查收！',
                  type: 'success'
                });
                const TIME_COUNT = 60;
                if (!this.timer) {
                    this.count = TIME_COUNT;
                    this.show = false;
                    this.timer = setInterval(() => {
                        if (this.count > 0 && this.count <= TIME_COUNT) {
                            this.count--;
                            console.log(this.count);
                        } else {
                            this.show = true;
                            clearInterval(this.timer);
                            this.timer = null;
                        }
                    }, 1000)
                }
                let data = {'account': this.ruleForm2.account}
                this.$api.post('api/auth/verify_code', data, r => {

                })
            }
        },
        handleSubmit2: function (event) {
            var reg=11 && /^((13|14|15|17|18)[0-9]{1}\d{8})$/;
            if(this.ruleForm2.account=='' || !reg.test(this.ruleForm2.account)){
               this.$message({
                  message: '请输入正确的手机号！',
                  type: 'error'
                });
               return;
            }else{
                if(this.ruleForm2.code == '' || this.ruleForm2.code.length < 6){
                    this.$message({
                      message: '请输入正确的验证码！',
                      type: 'error'
                    });
                    return;
                }
                if (this.ruleForm2.password !== this.ruleForm2.checkPass) {
                    this.$message({
                      message: '两次输入的密码不同，请重新确认',
                      type: 'error'
                    });
                    return;
                }
                let data = {'name':this.ruleForm2.name,'phone': this.ruleForm2.account, 'grant_type':'password', 'password':this.ruleForm2.password,'confirm_password':this.ruleForm2.checkPass, 'code':this.ruleForm2.code}
                console.log(data);
                this.$api.post('api/register', data, r => {
                    console.log(r);
                })
            }
        } 
  	}
  }

</script>

<style lang="scss" scoped>
  .login-container {
    /*box-shadow: 0 0px 8px 0 rgba(0, 0, 0, 0.06), 0 1px 0px 0 rgba(0, 0, 0, 0.02);*/
    -webkit-border-radius: 5px;
    border-radius: 5px;
    -moz-border-radius: 5px;
    background-clip: padding-box;
    margin: 180px auto;
    width: 350px;
    padding: 35px 35px 15px 35px;
    background: #fff;
    border: 1px solid #eaeaea;
    box-shadow: 0 0 25px #cac6c6;
    .title {
      margin: 0px auto 40px auto;
      text-align: center;
      color: #505458;
    }
    .remember {
      margin: 0px 0px 35px 0px;
    }
  }
</style>