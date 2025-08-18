<?php
require_once "classes/Auto.php";
$autoObj = new Auto();

// Eliminar auto (comprar)
if (isset($_POST['comprar'])) {
    $id_auto = $_POST['id_auto'];
    $autoObj->eliminarAuto($id_auto);
    header("Location: index.php");
    exit;
}

$autos = $autoObj->obtenerAutos();
?>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="styles.css">
  <title>Concesionaria Usados Premium</title>
</head>
<body>

  <!-- NAVBAR -->
  <header>
    <h1>Loz-Autos</h1>
    <nav>
      <ul>
        <li><a href="#inicio">Inicio</a></li>
        <li><a href="#catalogo">Catálogo</a></li>
        <li><a href="classes/ingreso.php">Agregar Auto</a></li>
      </ul>
    </nav>
  </header>

  <!-- INICIO -->
  <section id="inicio">
    <h2>Bienvenido a "Loz-Autos"</h2>
    <p>Tu concesionaria de confianza en compra y venta de autos usados. Calidad, garantía y el mejor precio para vos.</p>
  </section>

  <!-- CATALOGO -->
  <section id="catalogo">
  <h2>Catálogo de nuestros vehículos</h2>
  
  <div class="catalogo-container" id="catalogo-container">
    <div class="catalogo-grid">
    <?php foreach ($autos as $auto): ?>
        <div class="card">
        <img src="<?php echo htmlspecialchars($auto['url_img']); ?>" alt="<?php echo $auto['marca'] . ' ' . $auto['modelo']; ?>">
        <div class="card-body">
        <h3><?php echo $auto['marca'] . " " . $auto['modelo']; ?></h3>
        <p>Tipo: <?php echo $auto['tipo']; ?></p>
        <p>Color: <?php echo $auto['color']; ?></p>
        <p>Año: <?php echo date("Y", strtotime($auto['fecha_fabricacion'])); ?></p>
        <p>Precio: USD$<?php echo number_format($auto['precio'], 2); ?></p>
        <p>Estado: <?php echo $auto['estado']; ?></p>
        <form method="POST" style="margin-top:10px;">
        <input type="hidden" name="id_auto" value="<?php echo $auto['id_auto']; ?>">
        <button type="submit" name="comprar">Comprar</button>
      </form>
    </div>
  </div>
<?php endforeach; ?>

    </div>
  </div>

  <button class="ver-mas-btn" id="ver-mas">Ver más autos</button>
</section>
  <!-- CONTACTO -->
  <!-- <section id="contacto">
    <h2>Contacto</h2>
    <form>
      <input type="text" placeholder="Nombre" required>
      <input type="email" placeholder="Correo electrónico" required>
      <textarea rows="5" placeholder="Escribe tu mensaje..." required></textarea>
      <button type="submit">Enviar</button>
    </form>
    <div style="text-align:center; margin-top:20px;">
      <p>Tel: (011) 5555-5555</p>
      <p>Email: contacto@usadospremium.com</p>
      <p>Dirección: Av. Siempre Viva 123, Buenos Aires</p>
    </div>
  </section> -->

  <!-- FOOTER -->
  <footer>
    <p>&copy; 2025 Loz-Autos | Diseñado por Destch-Compani & Equipo</p>
    <p><a href="#inicio">Volver arriba</a></p>
  </footer>

  <script>
  document.getElementById("ver-mas").addEventListener("click", function() {
    const container = document.getElementById("catalogo-container");
    container.style.maxHeight = "none";
    container.style.overflow = "visible";
    container.classList.remove("catalogo-container");
    this.style.display = "none";
  });
  </script>
</body>
</html>
