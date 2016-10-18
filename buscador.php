<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="./css/estilos.css" media="all" />
<meta charset="utf-8">
	<title>buscador bicis robadas</title>
</head>
<body>
	<div class="buscador">
		<form id="search_mini_form" name="buscador" method="GET" action="buscador.php">
	        <fieldset>
	          <h1>Localizador de Bicicletas</h1>
	          <p>Rellena tus condiciones de búsqueda</p>
	          
	        </fieldset>
	        <fieldset>
	          <div class="form-search">
	            <label for="marca">Marca</label>
	             <input type="text" name="anu_marca" id="anu_marca" value="">
	          </div>
	          <div>
	            <label for="modelo">Modelo</label>
	           <input type="text" name="anu_modelo" id="anu_modelo" value="">
	          </div>
	          <div>
	           
	          </div>
	          <div>
	            <label for="color">Color</label>
	            <select name="anu_color" id="anu_color" >
	              <OPTION VALUE="0">Elige un Color</OPTION>
	              <OPTION VALUE="Amarilla">Amarilla</OPTION>
	              <OPTION VALUE="Azul">Azul</OPTION>
	              <OPTION VALUE="Blanca">Blanca</OPTION>
	              <OPTION VALUE="Negra">Negra</OPTION>
	              <OPTION VALUE="Verde">Verde</OPTION>
	              <OPTION VALUE="Naranja">Naranja</OPTION>
	              <OPTION VALUE="Rosa">Rosa</OPTION>
	             </select>
	              <div>
	            <label for="serie">Numero de serie</label>
	            <input type="text" name="anu_numero_serie" id="serie" value="">
	            
	          </div>
	          </div>
	        </fieldset>
	        <div>
	  
	            <label for="orden">Ordenar por:</label>

	            <select name="orden" id="orden" >
	              <OPTION VALUE="0">Elige un orden</OPTION>
	              <OPTION VALUE="`anu_marca`">Marca</OPTION>
	              <OPTION VALUE="`anu_modelo`">Modelo</OPTION>
	              <OPTION VALUE="`anu_data_anunci`">Fecha anuncio</OPTION>
	              <OPTION VALUE="`anu_data_robatori`">Fecha robo</OPTION>
	           
	             </select>
	             
	              <div>
	    
	         
	          <div class="botonform">
	            <input type="submit" name="accion" value="Borrar" />
	            <input type="submit" name="accion" value="Buscar" />
	          </div>
	  </form>   
      
    </div>
    
<div class="nueva_clase">
	<?php
	//conexion a la bbdd 		direccion, ususario, contraseña, base de datos con la q queremos trabajar
	$conexion = mysqli_connect('localhost', 'root', '','bd_proyecto1' );
	$acentos = $conexion->query("SET NAMES 'utf8'"); //esta sentencia hace que las consultas se muestren con acentos.


	if (!$conexion) {
    echo "Error: No se pudo conectar a MySQL." . PHP_EOL;
    echo "errno de depuración: " . mysqli_connect_errno() . PHP_EOL;
    echo "error de depuración: " . mysqli_connect_error() . PHP_EOL;
    exit;
	}

	extract($_REQUEST);


	$sql = "SELECT * FROM `anunci` ";

	if($anu_marca !=""){

		$sql .= " WHERE `anu_marca` LIKE '$anu_marca' ";
	}
	
	if($anu_modelo !=""){

		$sql .= " WHERE `anu_modelo` LIKE '$anu_modelo' ";
	}
	if($anu_color !="0"){

	$sql .= " WHERE `anu_color` LIKE '$anu_color' ";
	}
	
	if ($orden != "0"){
		$sql .= " ORDER BY $orden";
	} 

	//echo $sql;
	$anuncios = mysqli_query($conexion, $sql);

	//cuantos registros devuelven de la consulta correcta.
	echo "Resultados obtenidos: " . mysqli_num_rows($anuncios) . "</br></br>";

	//si el numero de registros que devuelve es mayor que 0 mostrara los elementos de la consulta, sino, muestra error.
if (mysqli_num_rows($anuncios) > 0) {
	while($anuncio = mysqli_fetch_array($anuncios))
	{	
		echo "<div  class="."anuncios".">";
		//echo "id: " . $anuncio['anu_id'] . "<br/>";
		echo "fecha anuncio: " .$anuncio['anu_data_anunci'] . "<br/>";
		echo "marca bici: " . $anuncio['anu_marca'] . "<br/>";
		echo "modelo bici: " .$anuncio['anu_model'] . "<br/>";
		echo "color bici: " .$anuncio['anu_color'] . "<br/>";
		echo "fecha robo: " .$anuncio['anu_data_robatori'] . "<br/>";
		echo "ubicacion robo: " .$anuncio['anu_ubicacio_robatori'] . "<br/>";
		$foto='img/'.$anuncio['anu_foto'];

				if (file_exists ($foto)){
					echo "<img  src='" . $foto . "' width='300' /><br/><br/>";
				} else {
					echo "<img src='img/0.jpg' width='300' class="."nueva_clase"."/><br/><br/>";
				}
		echo "Descripcion robatorio: " .$anuncio['anu_descripcio_robatori'] . "<br/>";		
		echo "</div>";
		echo "</br> </br>";
	}
}
else{
	echo "No hay datos que motrar";
}
	
	mysqli_close($conexion);
	?>
</div>

</body>
</html>