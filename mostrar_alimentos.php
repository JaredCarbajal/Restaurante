<?php
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

	// realizar la consulta y llenar la tabla
	$query = $conexion->prepare("SELECT * FROM alimentosprep");

	
	$query->execute();

	if($query->rowCount() > 0){
		$userData = $query->fetchAll(PDO::FETCH_ASSOC);
	}else{
		$userData = NULL;
	}

	
	

    unset($conexion);
        //para arreglos asociativos
        //var_dump($userData);
        
        //arreglo en json
        echo json_encode($userData);