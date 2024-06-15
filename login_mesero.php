<?php
session_start(); // Inicia la sesión

// Verifica si se ha enviado el formulario de inicio de sesión
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    
    // Recupera los datos enviados por el formulario
    $username = $_POST["usuario"];
    $password = $_POST["contrasena"];
    
    try {
        // Conecta a la base de datos usando PDO
        $conexion = new PDO("mysql:host=boed0eaafkqbsadaavot-mysql.services.clever-cloud.com;dbname=boed0eaafkqbsadaavot;charset=utf8", "usgen2uz8lwzcx3h", "LCIrtssYqK1M2RakS0xc");
        $conexion->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION); // Establece el modo de errores

        // Verifica las credenciales del usuario en la base de datos
        $sql = "SELECT * FROM meseros WHERE usuariomesero=:username AND contrasenames=:password";
        $query = $conexion->prepare($sql);
        $query->bindParam(':username', $username, PDO::PARAM_STR);
        $query->bindParam(':password', $password, PDO::PARAM_STR);
        $query->execute();

        // Si se encuentra una coincidencia, inicia la sesión de usuario
        if ($query->rowCount() == 1) {
            $_SESSION["loggedin"] = true;
            $_SESSION["username"] = $username;
            header("location: mesa_menu.html"); // Redirecciona al usuario a la página de inicio
            exit();
        } else {
            echo '<div id="mensaje-error">Usuario o contraseña incorrectos.</div>';
        }
    } catch (PDOException $e) {
        echo "Falla al obtener un manejador de BD: " . $e->getMessage();
        exit();
    }

    // Cierra la conexión a la base de datos
    $conexion = null; // Esto no es necesario en PDO, pero es buena práctica
}
?>
