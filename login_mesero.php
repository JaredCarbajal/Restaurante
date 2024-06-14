<?php
session_start(); // Inicia la sesión

// Verifica si se ha enviado el formulario de inicio de sesión
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    
    // Recupera los datos enviados por el formulario
    $username = $_POST["usuario"];
    $password = $_POST["contrasena"];
    
    // Conecta a la base de datos
    //$servername = "localhost:3306";
   // $dbusername = "Malabar_user";
    //$dbpassword = "Malabar1234#";
    //$dbname = "id20704670_malabar2";
    $conn = mysqli_connect("localhost", "root", "Melanie516*", "id20704670_malabar2");

    // Verifica si la conexión se ha realizado correctamente
    if (!$conn) {
        die("Error de conexión: " . mysqli_connect_error());
    }
    
    // Verifica las credenciales del usuario en la base de datos
    $sql = "SELECT * FROM meseros WHERE usuariomesero='$username' AND contrasenames='$password'";
    $result = mysqli_query($conn, $sql);
    
    // Si se encuentra una coincidencia, inicia la sesión de usuario
    if (mysqli_num_rows($result) == 1) {
        $_SESSION["loggedin"] = true;
        $_SESSION["username"] = $username;
        header("location: mesa_menu.html"); // Redirecciona al usuario a la página de inicio
    echo '<div id="mensaje-error">Usuario o contraseña incorrectos.</div>';
 } else {
  // redirigir a la página de inicio después de iniciar sesión exitosamente
  header("Location: error_contra.html");
  exit();
}
    // Cierra la conexión a la base de datos
    mysqli_close($conn);
}
?>
