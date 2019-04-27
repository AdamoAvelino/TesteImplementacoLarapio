<?php

namespace Larapio\App\Controller;

use Larapio\Http\Request;
use Larapio\Http\Response;
use Larapio\Http\Session;
use Larapio\App\Model\Compra;

class CompraController
{

    private $request;

    private $compra;

    private $sessao;

  /**
   * ----------------------------------------------------------------------------------
   * Undocumented function
   *
   * @param Request $request
   */
    public function __construct(Request $request)
    {
        $this->request = $request;

        $this->compra = new Compra();

        $this->sessao = new Session();
    }

  /**
   * ----------------------------------------------------------------------------------
   * Undocumented function
   *
   * @return void
   */
    public function listar()
    {
        $lista = $this->compra->all();
        Response::set($lista, 'compras');
        Response::view('compra/lista');
    }


  /**
   * ----------------------------------------------------------------------------------
   */
    public function incluir()
    {
        Response::view('compra/formulario');
    }
}
