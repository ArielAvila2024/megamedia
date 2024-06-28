<?php
require '../vendor/autoload.php';
require '../app/Models/Article.php';
require '../app/Models/Category.php';

class HomeController {
    private $twig;
    private $articleModel;
    private $categoryModel;


    public function __construct($twig, $pdo) {
        $this->twig = $twig;
        $this->articleModel = new Article($pdo);
        $this->categoryModel = new Category($pdo);
    }

    public function index() {
        $articles = $this->articleModel->getAllArticles();
        $categories = $this->categoryModel->getAllCategories();
        echo $this->twig->render('index.html.twig', ['articles' => $articles, 'categories' => $categories]);
    }
}
?>