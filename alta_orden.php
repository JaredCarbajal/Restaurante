<?php
// Archivo: guardar_datos.php

// Obtener los datos enviados desde el cliente
$comida = $_POST['comida'];
$cantidad = $_POST['cantidad'];


try {
	$conexion = new PDO("mysql:host=boed0eaafkqbsadaavot-mysql.services.clever-cloud.com;dbname=boed0eaafkqbsadaavot;charset=utf8", "usgen2uz8lwzcx3h", "LCIrtssYqK1M2RakS0xc");
	// Cambia 'hostname_servidor_nube', 'nombre_base_datos', 'nombre_usuario', 'contraseña' por los valores correctos
} catch (PDOException $e) {
	echo "Falla al obtener un manejador de BD: " . $e->getMessage();
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