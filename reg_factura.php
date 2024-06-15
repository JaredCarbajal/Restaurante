<?php
header("Access-Control-Allow-Origin:*");
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type,Accept");
header("Access-Control-Allow-Methods: GET, POST, PUT, DELETE");
// Conexión a la base de datos en Clever Cloud
$clever_cloud_host = "boed0eaafkqbsadaavot-mysql.services.clever-cloud.com";
$clever_cloud_username = "usgen2uz8lwzcx3h";
$clever_cloud_password = "LCIrtssYqK1M2RakS0xc";
$clever_cloud_dbname = "boed0eaafkqbsadaavot";

$conn = mysqli_connect($clever_cloud_host, $clever_cloud_username, $clever_cloud_password, $clever_cloud_dbname);

// Verificar la conexión
if (!$conn) {
    die("Conexión fallida: " . mysqli_connect_error());
}

// Procesar los datos del formulario
$nombre = isset($_POST["nombre"]) ? $_POST["nombre"] : "";
$correo = isset($_POST["correo"]) ? $_POST["correo"] : "";
$tel = isset($_POST["tel"]) ? $_POST["tel"] : "";
$rfc = isset($_POST["rfc"]) ? $_POST["rfc"] : "";
$cp = isset($_POST["cp"]) ? $_POST["cp"] : "";
$estado = isset($_POST["estado"]) ? $_POST["estado"] : "";
$img = isset($_POST["img"]) ? $_POST["img"] : "";

// Escapar los datos para evitar inyección SQL (mejor opción sería usar sentencias preparadas)
$nombre = mysqli_real_escape_string($conn, $nombre);
$correo = mysqli_real_escape_string($conn, $correo);
$tel = mysqli_real_escape_string($conn, $tel);
$rfc = mysqli_real_escape_string($conn, $rfc);
$cp = mysqli_real_escape_string($conn, $cp);
$estado = mysqli_real_escape_string($conn, $estado);
$img = mysqli_real_escape_string($conn, $img);

// Insertar los datos en la base de datos
$sql = "INSERT INTO facturacion (nombre, correo, tel, rfc, cp, estado, img) VALUES ('$nombre', '$correo', '$tel', '$rfc', '$cp', '$estado', '$img')";

if (mysqli_query($conn, $sql)) {
    echo "Cliente registrado exitosamente";
} else {
    echo "Error al registrar al cliente: " . mysqli_error($conn);
}

// Cerrar la conexión
mysqli_close($conn);
?>

