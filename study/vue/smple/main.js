// let data={
//   status: 'Critial'
// }
Vue.component('my-cmp',{
  data: function(){
    return {status:'Critical'}
  },
  template: '<p> Server Status: {{ status}}(<button @click="changeStatus">change</button>)</p>',
  methods:{
    changeStatus: function(){
      this.status='Normal'
    }
  }
})


new Vue({
  el:"#app"
})