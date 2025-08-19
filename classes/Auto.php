<?php
require_once "Database.php";

/**
 * Clase Auto
 * Representa la lógica de negocio de los vehículos en la concesionaria.
 */
class Auto {
    private PDO $conn;

    /**
     * Inyección de la dependencia Database.
     */
    public function __construct() {
        $database = new Database();
        $this->conn = $database->getConnection();
    }

    /**
     * Devuelve todos los autos registrados.
     * @return array
     */
    public function obtenerTodos(): array {
        $sql = "SELECT * FROM autos ORDER BY id_auto DESC";
        $stmt = $this->conn->prepare($sql);
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    /**
     * Elimina un auto de la base de datos (cuando es comprado).
     * @param int $id_auto
     * @return bool
     */
    public function eliminar(int $id_auto): bool {
        $sql = "DELETE FROM autos WHERE id_auto = :id_auto";
        $stmt = $this->conn->prepare($sql);
        $stmt->bindParam(":id_auto", $id_auto, PDO::PARAM_INT);
        return $stmt->execute();
    }

    /**
     * Agrega un auto a la base de datos.
     */
    public function agregar(
        string $marca,
        string $modelo,
        string $tipo,
        string $color,
        string $fecha_fabricacion,
        float $precio,
        string $estado,
        string $url_img
    ): bool {
        $sql = "INSERT INTO autos 
                (marca, modelo, tipo, color, fecha_fabricacion, precio, estado, url_img) 
                VALUES (:marca, :modelo, :tipo, :color, :fecha_fabricacion, :precio, :estado, :url_img)";
        $stmt = $this->conn->prepare($sql);

        $stmt->bindParam(":marca", $marca);
        $stmt->bindParam(":modelo", $modelo);
        $stmt->bindParam(":tipo", $tipo);
        $stmt->bindParam(":color", $color);
        $stmt->bindParam(":fecha_fabricacion", $fecha_fabricacion);
        $stmt->bindParam(":precio", $precio);
        $stmt->bindParam(":estado", $estado);
        $stmt->bindParam(":url_img", $url_img);

        return $stmt->execute();
    }
}
