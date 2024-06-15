<?php
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
$correo = isset($_POST["email"]) ? $_POST["email"] : "";
$telefono = isset($_POST["tel"]) ? $_POST["tel"] : "";
$direccion = isset($_POST["direccion"]) ? $_POST["direccion"] : "";
$usuario = isset($_POST["usuario"]) ? $_POST["usuario"] : "";
$contrasena = isset($_POST["contraseña"]) ? $_POST["contraseña"] : "";

// Escapar los datos para evitar inyección SQL (mejor opción sería usar sentencias preparadas)
$nombre = mysqli_real_escape_string($conn, $nombre);
$correo = mysqli_real_escape_string($conn, $correo);
$telefono = mysqli_real_escape_string($conn, $telefono);
$direccion = mysqli_real_escape_string($conn, $direccion);
$usuario = mysqli_real_escape_string($conn, $usuario);
$contrasena = mysqli_real_escape_string($conn, $contrasena);

// Insertar los datos en la base de datos
$sql = "INSERT INTO usuarios (nombre, email, tel, direccion, nusuario, contrasena) VALUES ('$nombre', '$correo', '$telefono', '$direccion', '$usuario', '$contrasena')";

if (mysqli_query($conn, $sql)) {
    echo "Cliente registrado exitosamente";
} else {
    echo "Error al registrar al cliente: " . mysqli_error($conn);
}

// Cerrar la conexión
mysqli_close($conn);
?>

