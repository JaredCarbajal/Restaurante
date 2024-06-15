<?php
    try {
		$conexion = new PDO("mysql:host=boed0eaafkqbsadaavot-mysql.services.clever-cloud.com;dbname=boed0eaafkqbsadaavot;charset=utf8", "usgen2uz8lwzcx3h", "LCIrtssYqK1M2RakS0xc");
		// Cambia 'hostname_servidor_nube', 'nombre_base_datos', 'nombre_usuario', 'contraseña' por los valores correctos
	} catch (PDOException $e) {
		echo "Falla al obtener un manejador de BD: " . $e->getMessage();
		exit();
	}