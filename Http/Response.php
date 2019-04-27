<?php

namespace Larapio\Http;

use Larapio\Http\Session;
use Larapio\Http\Crsf;
use Twig\Loader\FilesystemLoader;
use Twig\Environment;

class Response
{

    private static $objeto = [];
    private static $response = null;
    public static $ha_token;

    private function __construct()
    {
        
    }

    public static function set($response, $key, $unico = false)
    {

        self::$objeto[$key] = $response;
        self::$response = new Response();

        //return self::$response;
    }

    public static function view($view)
    {
        if (self::$objeto) {
            extract(self::$objeto);
        }

//Expanção
        $sessao = new Session();
        self::set($sessao, 'sessao');

        if (self::$ha_token) {
            $crsf = new Crsf();
            $sessao->setSession('token', $crsf->getCrsf());
            self::set($crsf, 'crsf');
        }

        $template = self::template();
        echo $template->render($view . '.twig', self::$objeto);
    }

    private function template()
    {
        $loader = new FilesystemLoader('view');
        $twig = new Environment($loader, [
            'debug' => true,
        ]);
        $twig->addExtension(new \Twig\Extension\DebugExtension());
        return $twig;
    }
}
