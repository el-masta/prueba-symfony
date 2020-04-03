<!DOCTYPE html>
<html lang="es">

<head>
  <title>Prueba de programación</title>
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="css/app.css">
  <script src="js/vue.js"></script>

</head>

<body>
  <div id="app">
    <div class="container">
      <table class="table table-striped  table-sm">
        <thead class="table-info">
          <tr>
            <th>Grupos</th>
            <th>Materiales</th>
            <th>Marcas</th>
            <th class="text-right">Meses</th>
            <th colspan="4"></th>
          </tr>
        </thead>
        <tr>
          <td>
            <div v-for="grupo in grupos" class="custom-control custom-switch">
              <input class="custom-control-input" v-bind:id="grupo" type="checkbox" @click="setGrupo(grupo)" checked>
              <label class="custom-control-label" v-bind:for="grupo">{grupo}</label>
            </div>
        </td>
        <td>
            <div v-for="mater in maters" class="custom-control custom-switch">
              <input class="custom-control-input" v-bind:id="mater" type="checkbox" @click="setMaterial(mater)" checked>
              <label class="custom-control-label" v-bind:for="mater">{mater}</label>
            </div>
        </td>
        <td>
            <div v-for="marca in marcas" class="custom-control custom-switch">
              <input class="custom-control-input" v-bind:id="marca" type="checkbox" @click="setMarca(marca)" checked>
              <label class="custom-control-label" v-bind:for="marca">{marca}</label>
            </div>
        </td>
        <td>
            <div v-for="mes in meses" class="custom-control custom-switch">
              <input class="custom-control-input" v-bind:id="mes" type="checkbox" @click="setMes(mes)" checked>
              <label class="custom-control-label" v-bind:for="mes">{mes}</label>
            </div>
        </td>
          <td colspan="4"></td>
        </tr>
        <tr>
          <td class="bg-success text-white text-right">Utilidad total: {total_utilidad | toCurrency }</td>
          <td class="bg-success text-white text-right">Utilidad promedio: {promedio_utilidad | toCurrency  }</td>
          <td class="bg-success text-white text-right">Indice de utilidad: {perc_utilidad  | toFixed }</td>
          <td colspan="2"></td>
          <td class="bg-info text-white text-right">Elementos vendidos: {elementos_vendidos}</td>
          <td class="bg-info text-white text-right">Costo total: {total_compra | toCurrency  }</td>
          <td class="bg-info text-white text-right">Venta total: {total_venta | toCurrency  }</td>
        </tr>
        <tr>
          <td colspan="8"></td>
        </tr>
        <thead class="table-secondary">
          <tr>
            <th scope="col">Grupo<span class="glyphicon glyphicon-triangle-bottom"></span></th>
            <th scope="col">Material</th>
            <th scope="col">Marca</th>
            <th class="text-right" scope="col">Mes</th>
            <th class="text-right" scope="col">Venta mensual</th>
            <th class="text-right" scope="col">Precio Compra</th>
            <th class="text-right" scope="col">Precio Venta</th>
            <th class="text-right" scope="col">Utilidad por pieza</th>
          </tr>
        </thead>
        <tbody>
          <tr scope="row" v-for="material in materiales" v-if="material.esVisible" :key="material.id">
            <td>{material.grupo}</td>
            <td>{material.material}</td>
            <td>{material.marca}</td>
            <td class="text-right">{material.mes}</td>
            <td class="text-right">{material.venta_mes}</td>
            <td class="text-right">{material.precio_compra  | toCurrency  }</td>
            <td class="text-right">{ material.precio_venta  | toCurrency }</td>
            <td class="text-right">{ material.utilidad  | toCurrency }</td>
          </tr>
        </tbody>
      </table>
    </div>
  </div>
  
  <script src="js/jquery.min.js"></script>
  <script src="js/axios.min.js"></script>
  <script src="js/app.js"></script>
  
</body>

</html>