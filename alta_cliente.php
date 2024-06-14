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
if (!empty($_POST)) {

    $idUsuario = (isset($_POST["idUsuario"]) ? $_POST["idUsuario"] : "ninguno");
    $nombre = (isset($_POST["nombre"]) ? $_POST["nombre"] : "");
    $email = (isset($_POST["email"]) ? $_POST["email"] : "");
    $tel = (isset($_POST["tel"]) ? $_POST["tel"] : "");
    $contraseña = (isset($_POST["contraseña"]) ? $_POST["contraseña"] : "");

    $sentencia = "INSERT INTO 
    usuarios(idUsuario,nombre,email,tel,contraseña )
    VALUES
    ('$idUsuario','$nombre','$email','$tel','$contraseña')";
    echo $sentencia;
    
    // realizar la sentencia
    $query = $conexion->prepare($sentencia);
    $query->execute();
} else {
    echo "sin datos recibidos";
}
exit();
?>