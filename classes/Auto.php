<?php
require_once "Database.php";

class Auto {
    private $conn;

    public function __construct() {
        $database = new Database();
        $this->conn = $database->getConnection();
    }

    // Obtener todos los autos
    public function obtenerAutos() {
        $sql = "SELECT * FROM autos ORDER BY id_auto DESC";
        $stmt = $this->conn->prepare($sql);
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    // Eliminar auto (cuando el usuario compra)
    public function eliminarAuto($id_auto) {
        $sql = "DELETE FROM autos WHERE id_auto = :id_auto";
        $stmt = $this->conn->prepare($sql);
        $stmt->bindParam(":id_auto", $id_auto, PDO::PARAM_INT);
        return $stmt->execute();
    }

    // Agregar auto nuevo
    public function agregarAuto($marca, $modelo, $tipo, $color, $fecha_fabricacion, $precio, $estado, $url_img) {
        $sql = "INSERT INTO autos (marca, modelo, tipo, color, fecha_fabricacion, precio, estado, url_img) 
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
