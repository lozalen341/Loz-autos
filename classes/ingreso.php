<?php
require_once "Auto.php";
$autoObj = new Auto();
// Agregar auto
if (isset($_POST['agregar'])) {
    $marca = $_POST['marca'];
    $modelo = $_POST['modelo'];
    $tipo = $_POST['tipo'];
    $color = $_POST['color'];
    $fecha_fabricacion = $_POST['fecha_fabricacion'];
    $precio = $_POST['precio'];
    $estado = $_POST['estado'];
    $url_img = $_POST['url_img'];

    $autoObj->agregarAuto($marca, $modelo, $tipo, $color, $fecha_fabricacion, $precio, $estado, $url_img);
    header("Location: ../index.php");
    exit;
}

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../styles.css">
    <title>Nuevo Ingreso</title>
</head>
<body>
    
  <!-- NAVBAR -->
  <header class="agregar">
    <h1>Loz-Autos</h1>
    <nav>
      <ul>
        <li><a href="../index.php">Inicio</a></li>
      </ul>
    </nav>
  </header>

      <!-- AGREGAR AUTO -->
  <section id="agregar">
    <h2 class="puto">Agregar un nuevo auto</h2>
    <form method="POST">
      <input type="text" name="marca" placeholder="Marca" required>
      <input type="text" name="modelo" placeholder="Modelo" required>
      <input type="text" name="tipo" placeholder="Tipo" required>
      <input type="text" name="color" placeholder="Color" required>
      <input type="date" name="fecha_fabricacion" required>
      <input type="number" name="precio" placeholder="Precio (en USD$)" step="0.01" required>
      <input type="text" name="url_img" placeholder="URL de la imagen del vehículo" required>
      <select class="estado" name="estado" required>
        <option value="Nuevo">Nuevo</option>
        <option value="Usado">Usado</option>
      </select>
      <button type="submit" name="agregar">Agregar Auto</button>
    </form>
  </section>
</body>
</html>