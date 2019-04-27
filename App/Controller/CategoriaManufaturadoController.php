<?php

namespace Larapio\App\Controller;

use Larapio\App\Model\CategoriaManufaturado;
use Larapio\Http\Request;
use Larapio\Http\Response;
use Larapio\Http\Session;

class CategoriaManufaturadoController
{
    private $categoriaManufaturado;

    private $request;

    private $sessao;

  /**
   * ---------------------------------------------------------------------
   * Undocumented function
   *
   * @param Request $request
   */
    public function __construct(Request $request)
    {
        $this->request = $request;

        $this->categoriaManufaturado = new CategoriaManufaturado();

        $this->sessao = new Session();
    }

  /**
   * ----------------------------------------------------------------------
   * Undocumented function
   *
   * @return void
   */
    public function listar()
    {
        $lista = $this->categoriaManufaturado->all();
        Response::set($lista, 'categoria_manufaturado');
        Response::view('categoria_manufaturado/listar');
    }

  /**
   * -----------------------------------------------------------------------
   * Undocumented function
   *
   * @return void
   */
    public function incluir()
    {
        Response::$ha_token = true;
        Response::view('categoria_manufaturado/formulario');
    }

  /**
   * -----------------------------------------------------------------------
   * Undocumented function
   *
   * @return void
   */
    public function salvar()
    {
        if ($this->entradas_validas()) {
            $request = $this->request->getRequest(['token']);
            $id = $this->categoriaManufaturado->insert($request);
            $this->sessao->setFlash('sucesso', 'inclusao', 'Categoria Manufaturado Incluida com Sucesso');
            $this->consultar($id);
        }
    }

  /**
   * -----------------------------------------------------------------------
   * Undocumented function
   *
   * @return void
   */
    public function alterar()
    {
        if ($this->entradas_validas()) {
            $request = $this->request->getRequest(['token']);
            $id = $request['id'];
            unset($request['id']);
            $this->categoriaManufaturado->update($request, $id);
            $this->sessao->setFlash('sucesso', 'alteracao', 'Categoria Manufaturado Incluida com Sucesso');
            $this->consultar($id);

        }
    }

  /**
   * -----------------------------------------------------------------------
   * Undocumented function
   *
   * @return void
   */
    public function consultar($id)
    {
        $categoria_manufaturado = $this->categoriaManufaturado->get($id);
        Response::set($categoria_manufaturado, 'categoria_manufaturado');
        $this->incluir();
    }

  /**
   * Undocumented function
   *
   * @return void
   */
    public function excluir()
    {
        $id = $this->request->getRequest()['id'];
    
        if ($this->entradas_validas()) {
            $this->categoriaManufaturado->delete($id);
            $this->sessao->setFlash('sucesso', 'exclusao', 'Categoria Manufaturado Excluida com Sucesso');
            $this->listar();
            return true;
        }

        $this->consultar($id);
    }

  /**
   * -----------------------------------------------------------------------
   * Undocumented function
   *
   * @return void
   */
    public function apresentar()
    {
        $id = $this->request->getQuery()['id'];
        $this->consultar($id);
    }


  /**
   * -----------------------------------------------------------------------
   * Undocumented function
   *
   * @return void
   */
    private function entradas_validas()
    {
    
        foreach ($this->request->getRequest() as $nome_entrada => $entrada) {
            if ($nome_entrada == 'nome' and !$entrada) {
                $this->sessao->setFlash('erro', 'nome', 'Preencha um Nome para Categoria Manufaturado');
            } else if ($nome_entrada == 'token' and $entrada != $this->sessao->getSession('token')) {
                $this->sessao->setFlash('erro', 'token', 'Token Invalido');
            }
        }

        $this->sessao->deletaSession('token');

        if ($this->sessao->has('flash')) {
            Response::set($this->request->getRequest(), 'categoria_manufaturado');
            $this->incluir();
            return false;
        }
        return true;
    }
}
