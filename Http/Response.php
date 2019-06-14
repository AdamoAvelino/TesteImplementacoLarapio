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

        $templateGrid = new \Twig\TwigFunction('montarGrid', function($fop, $dados) {
            
            $entidade = strtolower(end(explode("\\", get_class($dados[0]))));
            
            $atributos = array_keys(get_class_vars(get_class($dados[0])));
            $tabela = "<table class = 'table table-hover table-striped table-sm shadow table-bordered'>
            <thead class = 'thead-dark'>
            <tr>";
            foreach ($atributos as $atributo) {
                $titulo_attr = ucwords(str_replace('_', ' ', $atributo));
                $tabela .= "<th scope = 'col'>
                <a href = '/$entidade/ordenacao/{$fop['form']}/order_{$atributo}/{$fop['order']}'>$titulo_attr</a>
                </th>";
            }
            $tabela .= "</tr>";
            $tabela .= "</thead>";
            $tabela .= "<tbody>";
            foreach ($dados as $objeto) {
                $tabela .= "<tr>
                    <th scope='row' class='text-center'>
                        <a href='/$entidade/editar/{$objeto->id}'>
                            {$objeto->id}
                        </a>
                    </th>
                    <td>{$objeto->nome}</td>
                    <td class='text-right'>{$objeto->quantidade}</td>
                    <td>{$objeto->unidade_medida}</td>
                    </tr>";
            }
            $tabela .= "</tbody>";
            $tabela .= "</table>";
            echo $tabela;
        });

        $twig->addFunction($templateGrid);
        $twig->addExtension(new \Twig\Extension\DebugExtension());
        return $twig;
    }

}
