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

    $id_factura = (isset($_POST["id_factura"]) ? $_POST["id_factura"] : "ninguno");
    $nombre = (isset($_POST["nombre"]) ? $_POST["nombre"] : "");
    $correo = (isset($_POST["correo"]) ? $_POST["correo"] : "");
    $tel = (isset($_POST["tel"]) ? $_POST["tel"] : "");
    $rfc = (isset($_POST["rfc"]) ? $_POST["rfc"] : "");
    $cp = (isset($_POST["cp"]) ? $_POST["cp"] : "");
    $estado = (isset($_POST["estado"]) ? $_POST["estado"] : "");
    $img = (isset($_FILES["img"]) ? $_FILES["img"] : "");

    $sentencia = "INSERT INTO 
    facturacion(id_factura,nombre,correo,tel,rfc,cp,estado,img)
    VALUES
    ('$id_factura','$nombre','$correo','$tel','$rfc','$cp','$estado','$img')";
    echo $sentencia;

    // realizar la sentencia
    $query = $conexion->prepare($sentencia);
    $query->execute();
} else {
    echo "sin datos recibidos";
}
exit();
?>