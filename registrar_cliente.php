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
$nombre = $_POST["nombre"];
$correo = $_POST["email"];
$telefono = $_POST["tel"];
$direccion = $_POST["direccion"];
$usuario = $_POST["usuario"];
$contrasena = $_POST["contraseña"];


// Insertar los datos en la base de datos
$sql = "INSERT INTO usuarios (nombre, email, tel, direccion, nusuario, contrasena) VALUES ('$nombre', '$correo', '$telefono', '$direccion', '$usuario', '$contrasena')";

if ($conn->query($sql) === TRUE) {
    echo "Cliente registrado exitosamente";
} else {
    echo "Error al registrar al cliente: " . $conn->error;
}

$conn->close();
?>
