<?php

class Article {
    private $pdo;

    public function __construct($pdo) {
        $this->pdo = $pdo;
    }

    public function getAllArticles() {
        $stmt = $this->pdo->query("SELECT a.*, CONCAT(u.name,' ',u.last_name) as nombre_completo, CONCAT(UPPER(SUBSTRING(c.name, 1, 1)), LOWER(SUBSTRING(c.name, 2))) AS categoria, DATE_FORMAT(a.created_at, '%d-%m-%Y') AS fecha_creacion, DATE_FORMAT(a.created_at, '%H:%i:%s') AS hora_creacion FROM article a 
                                    inner join user u on u.id = a.user_id
                                    INNER JOIN category c ON c.id = a.category_id;");

        $result = $stmt->fetchAll(PDO::FETCH_ASSOC);

        return $result;
    }
}
?>