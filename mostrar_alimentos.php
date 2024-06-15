<?php
try {
    // Establecer la conexión PDO a la base de datos en Clever Cloud
    $conexion = new PDO("mysql:host=boed0eaafkqbsadaavot-mysql.services.clever-cloud.com;dbname=boed0eaafkqbsadaavot;charset=utf8", "usgen2uz8lwzcx3h", "LCIrtssYqK1M2RakS0xc");
    // Establecer el modo de errores para excepciones
    $conexion->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // Preparar la consulta SQL
    $query = $conexion->prepare("SELECT * FROM alimentosprep");

    // Ejecutar la consulta
    $query->execute();

    // Verificar si se encontraron resultados
    if ($query->rowCount() > 0) {
        // Obtener todos los resultados como un arreglo asociativo
        $userData = $query->fetchAll(PDO::FETCH_ASSOC);
    } else {
        $userData = NULL;
    }

    // Liberar la conexión
    unset($conexion);

    // Convertir los datos a formato JSON y mostrarlos
    echo json_encode($userData);

} catch (PDOException $e) {
    // Capturar y mostrar cualquier error de conexión o consulta
    echo "Falla al obtener un manejador de BD: " . $e->getMessage();
    exit();
}
?>