<template>
    <div class="container">
        <h1>{{message}}</h1>
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
            visible: false,
            message: 'laravel mongodb vue mysql '
        }
    },
    created () {
        this.$api.get('test', null, r => {
            console.log(r)
          })
    }
}
</script>
    
<style>
.hello {
    font-size: 2em;
    color: green;
}
</style>