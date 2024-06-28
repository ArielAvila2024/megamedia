<?php
require '../vendor/autoload.php';

// Configuración
$config = require '../app/config/config.php';
$dsn = "mysql:host=" . $config['db']['host'] . ";dbname=" . $config['db']['dbname'];
$pdo = new PDO($dsn, $config['db']['user'], $config['db']['pass']);

// Twig
$loader = new \Twig\Loader\FilesystemLoader('../app/Views');
$twig = new \Twig\Environment($loader);

// Controlador
require '../app/Controllers/HomeController.php';
$controller = new HomeController($twig, $pdo);
$controller->index();
?>
