<template>
    <div>
        <h1>Hello, Larvuent!</h1>
        <el-button @click="visible=true">按钮</el-button>
        <el-dialog v-model="visible">
            <p>欢迎使用 Element</p>
        </el-dialog>
    </div>
</template>
    
<script>
export default {
    data() {
        return {
            visible: false
        }
    },
    methods: {
        getCode: function (event) {
          this.$api.get('test', null, r => {
            console.log(r)
          })
        }
    }
}
</script>
    
<style>
.hello {
    font-size: 2em;
    color: green;
}
</style>