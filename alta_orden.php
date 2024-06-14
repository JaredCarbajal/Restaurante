<?php
// Archivo: guardar_datos.php

// Obtener los datos enviados desde el cliente
$comida = $_POST['comida'];
$cantidad = $_POST['cantidad'];


    	//crear la conexion a la base de datos
	try{
		//intenta la conexión
		$conexion = new PDO("mysql:host=localhost;
		dbname=id20704670_malabar2;charset=utf8",
		 "root", 
		 "Melanie516*");
	} catch (PDOException $e) {
		//atrapa el error
		echo "Falla al obtener un manejador de BD: ".$e->getMessage() . "\n";
		exit();
	}


// Preparar la consulta SQL para insertar los datos en la tabla deseada
$sql = "INSERT INTO pedido (comida, cantidad) VALUES ('$comida', '$cantidad')";

// Ejecutar la consulta
if ($conn->query($sql) === TRUE) {
    echo "Datos insertados correctamente en la base de datos.";
} else {
    echo "Error al insertar los datos: " . $conn->error;
}

// Cerrar la conexión a la base de datos
$conn->close();
?>