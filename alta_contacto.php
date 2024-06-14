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
$telefono = isset($_POST["telefono"]) ? $_POST["telefono"] : "";
$email = isset($_POST["email"]) ? $_POST["email"] : "";
$mensaje = isset($_POST["mensaje"]) ? $_POST["mensaje"] : "";




// Insertar los datos en la base de datos
$sql = "INSERT INTO contacto(nombre, telefono, email, mensaje) VALUES ('$nombre', '$telefono', '$email', '$mensaje')";

if ($conn->query($sql) === TRUE) {
    echo "Mensaje registrado exitosamente";
} else {
    echo "Error al registrar al cliente: " . $conn->error;
}

$conn->close();
?>