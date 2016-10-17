<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
	<title>buscador bicis robadas</title>
</head>
<body>

	<?php
	//conexion a la bbdd 		direccion, ususario, contraseña, base de datos con la q queremos trabajar
	$conexion = mysqli_connect('localhost', 'root', '','bd_proyecto1' );


	if (!$conexion) {
    echo "Error: No se pudo conectar a MySQL." . PHP_EOL;
    echo "errno de depuración: " . mysqli_connect_errno() . PHP_EOL;
    echo "error de depuración: " . mysqli_connect_error() . PHP_EOL;
    exit;
	}

	extract($_REQUEST);

	echo $anu_marca . "<br/>";
	echo $anu_modelo . "<br/>";
	echo $anu_color . "<br/>";

	$sql = "SELECT * FROM `anunci` ";

	if($anu_marca !="0"){

		$sql .= " WHERE `anu_marca` LIKE '$anu_marca' ";
	}
	
	if($anu_modelo !=""){

		$sql .= " WHERE `anu_modelo` LIKE '$anu_modelo' ";
	}
	if($anu_color !="0"){

	$sql .= " WHERE `anu_color` LIKE '$anu_color' ";
	}
	
	echo $sql;
	$anuncios = mysqli_query($conexion, $sql);

	//cuantos registros devuelven de la consulta correcta.
	echo "numero de anuncios: " . mysqli_num_rows($anuncios) . "</br></br></br>";

	//si el numero de registros que devuelve es mayor que 0 mostrara los elementos de la consulta, sino, muestra error.
if (mysqli_num_rows($anuncios) > 0) {
	while($anuncio = mysqli_fetch_array($anuncios))
	{	
		echo "<div>";
		echo "id: " . $anuncio['anu_id'] . "<br/>";
		echo "fecha anuncio: " .$anuncio['anu_data_anunci'] . "<br/>";
		echo "marca bici: " . $anuncio['anu_marca'] . "<br/>";
		echo "modelo bici: " .$anuncio['anu_model'] . "<br/>";
		echo "color bici: " .$anuncio['anu_color'] . "<br/>";
		echo "fecha robo: " .$anuncio['anu_data_robatori'] . "<br/>";
		echo "ubicacion robo: " .$anuncio['anu_ubicacio_robatori'] . "<br/>";
		$foto='img/'.$anuncio['anu_foto'];

				if (file_exists ($foto)){
					echo "<img src='" . $foto . "' width='300'/><br/><br/>";
				} else {
					echo "<img src='img/0.jpg' width='300'/><br/><br/>";
				}
		echo "</div>";
		echo "</br> </br>";
	}
}
else{
	echo "No hay datos que motrar";
}
	
	mysqli_close($conexion);
	?>

</body>
</html>