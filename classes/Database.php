<?php
/**
 * Clase Database
 * Se encarga de establecer y proveer la conexión a la base de datos.
 */
class Database {
    private string $host = "localhost";
    private string $user = "root";     
    private string $password = "";     
    private string $dbname = "Loz-autosDB";
    private ?PDO $connection = null;

    /**
     * Constructor: inicializa la conexión al instanciar la clase.
     */
    public function __construct() {
        try {
            $this->connection = new PDO(
                "mysql:host={$this->host};dbname={$this->dbname};charset=utf8",
                $this->user,
                $this->password
            );
            $this->connection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        } catch (PDOException $e) {
            // Nunca mostramos el error técnico completo al usuario final
            die("Error al conectar con la base de datos.");
        }
    }

    /**
     * Retorna la conexión PDO para ser utilizada en otras clases.
     */
    public function getConnection(): PDO {
        return $this->connection;
    }
}
