const App = {
    data() {
     return {
        selected_stock_index:0,
        selected_stock_id:0,
        selected_stock_name:'****',
        stocks: [],
        items: [],
        }
     },

    methods: {
        loadStocks(){
            vm = this
            axios.get('/api/stocks/')
            .then(function(response){
                vm.stocks = response.data;
                console.log(response.data)
                console.log(vm.stocks)
                vm.selected_stock_id = vm.stocks[0].id
                vm.selected_stock_name = vm.stocks[0].name
                console.log(vm.selected_stock_id)
                })
        },
        loadItems(){
            vm = this
            axios.get('/api/items/')
            .then(function(response){
                vm.items = response.data;
                })
        },
       },
    created: function(){
        this.loadStocks()
        this.loadItems()
    }
}

Vue.createApp(App).mount('#app')