<?php
use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;
use Slim\Factory\AppFactory;
use Twig\Environment;
use Twig\Loader\FilesystemLoader;
use Blog\PostMapper;

require __DIR__ . '/vendor/autoload.php';

$loader = new FilesystemLoader('templates');
$view = new Environment($loader);

$config = include 'config/database.php';
$dsn = $config['dsn'];
$username = $config['username'];
$password = $config['password'];

try {
    $connection = new PDO($dsn, $username, $password);
    $connection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $connection->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
} catch (PDOException $exception) {
    echo 'Database error: ' . $exception->getMessage();
    die();
}

$postMapper = new PostMapper($connection);

// Create app
$app = AppFactory::create();

$app->get('/', function (Request $request, Response $response, $args) use ($view, $postMapper) {
    $posts = $postMapper->getList('DESC');
    $body = $view->render('index.html', [
        'posts' => $posts
    ]);
    $response->getBody()->write($body);
    return $response;
});

$app->get('/about', function (Request $request, Response $response, $args) use ($view) {
    $body = $view->render('about.html', [
        'name' => 'Max'
    ]);
    $response->getBody()->write($body);
    return $response;
});

$app->get('/about2', function (Request $request, Response $response, $args) {
    $response->getBody()->write("about2");
    return $response;
});

$app->get('/{url_key}', function (Request $request, Response $response, $args) use ($view, $postMapper) {
    $post = $postMapper->getByUrlKey((string)  $args['url_key']);

    if(empty($post)){
        $body = $view->render('not-found.html');
    }else{
    $body = $view->render('post.html', [
        //'url_key' => $args['url_key']
        'post' => $post
    ]);
    }

    $response->getBody()->write($body);
    return $response;
});


$app->run();