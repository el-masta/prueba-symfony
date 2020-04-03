Vue.filter('toCurrency', function (value) {
   if (typeof value !== "number") {
       return value;
   }
   var formatter = new Intl.NumberFormat('es-MX', {
       style: 'currency',
       currency: 'MXN',
       minimumFractionDigits: 2
   });
   return formatter.format(value);
});

Vue.filter('toFixed', function (value) {
   if (typeof value !== "number") {
       return value;
   }
   var formatter = new Intl.NumberFormat('es-MX', {
       style: 'percent',
       minimumFractionDigits: 4
   });
   return formatter.format(value);
});

new Vue({
   delimiters: ['{', '}'],
   el: '#app',
   data: {
      'materiales':{},
      'total_venta':0,
      'elementos_vendidos':0,
      'total_compra':0,
      'total_utilidad':0,
      'promedio_utilidad':0,
      'perc_utilidad':0.0,
      'grupos':[],
      'maters':[],
      'marcas':[],
      'meses':[],

   },
   methods: {
      cargarDatos(){
         axios.get('/material')
         .then(response => {
            this.materiales=response.data;
            this.calcularTotales();
            this.filtrarItems();
         })
      },
      calcularTotales(){
         var items=0;
         var totalCompra=0;
         var totalVenta=0;
         for (mat in this.materiales){
            if (this.materiales[mat].esVisible){
               items+=this.materiales[mat].venta_mes;
               totalCompra+=this.materiales[mat].venta_mes*this.materiales[mat].precio_compra;
               totalVenta+=this.materiales[mat].venta_mes*this.materiales[mat].precio_venta;
            }
         }
         this.elementos_vendidos=items;
         this.total_compra=totalCompra;
         this.total_venta=totalVenta;
         this.total_utilidad=totalVenta-totalCompra;
         if (items==0){
            this.promedio_utilidad=0;
            this.perc_utilidad=0;
         } else {
            this.promedio_utilidad=(totalVenta-totalCompra)/items;
            this.perc_utilidad=(totalVenta/totalCompra)-1;
         }
         
      },
      filtrarItems(){
         // Construye categorías sin elementos duplicados
         var grupos=new Set();
         var maters=new Set();
         var marcas=new Set();
         var meses=new Set();
         for (mat in this.materiales){
            grupos.add(this.materiales[mat].grupo);
            maters.add(this.materiales[mat].material);
            marcas.add(this.materiales[mat].marca);
            meses.add(this.materiales[mat].mes);
         }
         // Convierte los Sets en Arrays
         this.grupos =[...new Set(grupos)]
         this.maters =[...new Set(maters)]
         this.marcas =[...new Set(marcas)]
         this.meses =[...new Set(meses)]
      },
      setGrupo(grupo){
         const estado=document.getElementById(grupo).checked;
         for (mat in this.materiales){
            if (this.materiales[mat].grupo==grupo){
               this.materiales[mat].esVisible=estado;
            }
            this.calcularTotales();
         }
      },
      setMaterial(mater){
         const estado=document.getElementById(mater).checked;
         for (mat in this.materiales){
            if (this.materiales[mat].material==mater){
               this.materiales[mat].esVisible=estado;
            }
            this.calcularTotales();
         }
      },
      setMarca(marca){
         const estado=document.getElementById(marca).checked;
         for (mat in this.materiales){
            if (this.materiales[mat].marca==marca){
               this.materiales[mat].esVisible=estado;
            }
            this.calcularTotales();
         }
      },
      setMes(mes){
         const estado=document.getElementById(mes).checked;
         for (mat in this.materiales){
            if (this.materiales[mat].mes==mes){
               this.materiales[mat].esVisible=estado;
            }
            this.calcularTotales();
         }
      },
   },
   mounted(){
      this.cargarDatos()
   }
})