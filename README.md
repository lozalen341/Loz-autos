# Loz-Autos


Gestión simple de catálogo de autos (MVP) desarrollada en PHP (POO) + MySQL. Permite alta, edición, listado y venta (eliminación) de vehículos con imagen.


## Integrantes
- Leandro Loza (@lozalen341)
- Elias Florencio (@PatiDePollo)


## Tecnologías
- PHP 8.x, MySQL 8.x / MariaDB 10.x
- HTML5, CSS3, JS
- Apache (XAMPP/WAMP)


## Estructura
- `index.php` — vista/control del listado y formularios
- `classes/Auto.php` — lógica de dominio y acceso a datos
- `styles.css` — estilos
- `autos_DB.sql` — esquema inicial de BD


## Instalación
1. Clonar el repo en `htdocs/consesionaria`.
2. Crear BD `consesionaria` (utf8mb4) e importar `autos_DB.sql`.
3. Ajustar credenciales de DB en el código (si aplica).
4. Abrir `http://localhost/consesionaria/`.


## Uso
- Agregar autos con sus datos e **URL de imagen**.
- Editar autos desde el listado.
- Botón **Comprar** elimina el auto (simula la venta) y redirige al inicio.
