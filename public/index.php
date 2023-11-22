<?php
use App\Kernel;

require_once dirname(__DIR__).'/vendor/autoload_runtime.php';

return function (array $context) {
    return new Kernel($context['APP_ENV'], (bool) $context['APP_DEBUG']);
};

// sur Heroku
if (getenv('JAWSDB_URL') !== false) {

    $url = getenv('JAWSDB_URL');
    $dbparts = parse_url($url);
    
    $hostname = $dbparts['host'];
    $username = $dbparts['user'];
    $password = $dbparts['pass'];
    $database = ltrim($dbparts['path'],'/');
} else {
    // en local
    $username = 'root';
    $password = '';
    $database = "parrot_garage";
    $hostname = 'localhost';
}