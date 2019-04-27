<?php

namespace Larapio\App\Controller;

use Larapio\App\Model\UnidadeMedida;
use Larapio\Http\Request;
use Larapio\Http\Response;
use Larapio\Http\Session;

class UnidadeMedidaController
{
    private $unidadeMedida;

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

        $this->unidadeMedida = new UnidadeMedida();

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
        $lista = $this->unidadeMedida->all();
        Response::set($lista, 'unidade_medida');
        Response::view('unidade_medida/listar');
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
        Response::view('unidade_medida/formulario');
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
            $id = $this->unidadeMedida->insert($request);
            $this->sessao->setFlash('sucesso', 'inclusao', 'Unidade de Medida Incluida com Sucesso');
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
            $this->unidadeMedida->update($request, $id);
            $this->sessao->setFlash('sucesso', 'alteracao', 'Unidade de Medida Incluida com Sucesso');
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
        $unidade_medida = $this->unidadeMedida->get($id);
        Response::set($unidade_medida, 'unidade_medida');
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
            $this->unidadeMedida->delete($id);
            $this->sessao->setFlash('sucesso', 'exclusao', 'Unidade de Medida Excluida com Sucesso');
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
                $this->sessao->setFlash('erro', 'nome', 'Preencha um Nome para Unidade de Medida');
            } else if ($nome_entrada == 'token' and $entrada != $this->sessao->getSession('token')) {
                $this->sessao->setFlash('erro', 'token', 'Token Invalido');
            }
        }

        $this->sessao->deletaSession('token');

        if ($this->sessao->has('flash')) {
            Response::set($this->request->getRequest(), 'unidade_medida');
            $this->incluir();
            return false;
        }
        return true;
    }
}
