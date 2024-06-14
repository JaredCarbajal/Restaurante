<?php
//crear la conexion a la base de datos
try {
    //intenta la conexión
    $conexion = new PDO("mysql:host=localhost;
		dbname=id20704670_malabar2;charset=utf8",
        "root",
        "Melanie516*"
    );
} catch (PDOException $e) {
    //atrapa el error
    echo "Falla al obtener un manejador de BD: " . $e->getMessage() . "\n";
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