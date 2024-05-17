const App = {
    data() {
     return {
        operations: [],
        }
     },

    methods: {
        loadOperations(){
            vm = this
            axios.get('/api/operations/')
            .then(function(response){
                vm.operations = response.data;
                console.log(vm.operations)
                })
        },
       },
    created: function(){
        this.loadOperations()
    }
}

Vue.createApp(App).mount('#app')