<template>
    <div id="app">
		<transition name="fade"
		            mode="out-in">
            <router-view></router-view> <!-- 路由引入的组件将在这里被渲染 -->
    	</transition>
	</div>
</template>
     
<script>
export default {
    data() {
        return {
            msg: 'Vue'
        }
    }
}
</script>
    
<style>
</style>