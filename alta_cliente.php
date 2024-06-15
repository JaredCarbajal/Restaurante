<?php
header("Access-Control-Allow-Origin:*");
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type,Accept");
header("Access-Control-Allow-Methods: GET, POST, PUT, DELETE");
    	//crear la conexion a la base de datos
        try {
            $conexion = new PDO("mysql:host=boed0eaafkqbsadaavot-mysql.services.clever-cloud.com;dbname=boed0eaafkqbsadaavot;charset=utf8", "usgen2uz8lwzcx3h", "LCIrtssYqK1M2RakS0xc");
            // Cambia 'hostname_servidor_nube', 'nombre_base_datos', 'nombre_usuario', 'contraseña' por los valores correctos
        } catch (PDOException $e) {
            echo "Falla al obtener un manejador de BD: " . $e->getMessage();
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