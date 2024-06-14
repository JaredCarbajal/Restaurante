<?php
// Conexión a la base de datos
//$servername = "localhost";
//$username = "root";
//$password = "Melanie516*";
//$dbname = "id20704670_malabar2";

$conn = mysqli_connect("localhost", "root", "Melanie516*", "id20704670_malabar2");

// Verificar la conexión
if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

// Procesar los datos del formulario

$nombre = isset($_POST["nombre"]) ? $_POST["nombre"] : "";
$correo = isset($_POST["correo"]) ? $_POST["correo"] : "";
$tel = isset($_POST["tel"]) ? $_POST["tel"] : "";
$rfc = isset($_POST["rfc"]) ? $_POST["rfc"] : "";
$cp = isset($_POST["cp"]) ? $_POST["cp"] : "";
$estado = isset($_POST["estado"]) ? $_POST["estado"] : "";
$img = isset($_POST["img"]) ? $_POST["img"] : "";


// Insertar los datos en la base de datos
$sql = "INSERT INTO facturacion (nombre,correo,tel,rfc,cp,estado,img) VALUES ('$nombre','$correo','$tel','$rfc','$cp','$estado','$img')";
  

if ($conn->query($sql) === TRUE) {
    echo "Cliente registrado exitosamente";
} else {
    echo "Error al registrar al cliente: " . $conn->error;
}

$conn->close();
?>
