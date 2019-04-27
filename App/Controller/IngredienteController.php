<?php

namespace Larapio\App\Controller;

use Larapio\Http\Response;
use Larapio\Http\Request;
use Larapio\App\Model\Ingrediente;
use Larapio\Http\Session;

class IngredienteController
{

    private $request;

    private $ingrediente;

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

        $this->ingrediente = new Ingrediente();

        $this->sessao = new Session();
    
    }
/**
 * ----------------------------------------------------------------------------------
 * Undocumented function
 *
 * @return void
 */
    public function index()
    {
        $lista = $this->ingrediente->all();
        Response::set($lista, 'ingredientes');
        Response::view('ingrediente/index');
    }


  /**
   * ----------------------------------------------------------------------------------
  */
    public function incluir()
    {
        Response::view('ingrediente/formulario');
    
    }
  /**
   * ----------------------------------------------------------------------------------
   * Undocumented function
   *
   * @return void
   */
    public function salvar_ingrediente()
    {

        if ($this->entradas_validas()) {
            $id = $this->ingrediente->insert($this->request->getRequest());
            $this->sessao->setFlash('sucesso', 'inclusao', 'Ingrediente Incluido com Sucesso');
            $this->editar_ingrediente($id);
        }
    }

  /**
   * ----------------------------------------------------------------------------------
   * Undocumented function
   *
   * @param [type] $id
   * @return void
   */
    public function editar_ingrediente($id)
    {
        $ingrediente = $this->ingrediente->get($id);
        Response::set($ingrediente, 'ingrediente');
        $this->incluir();
    }
  /**
   * ----------------------------------------------------------------------------------
   * Undocumented function
   *
   * @return void
   */
    private function entradas_validas()
    {
    
        foreach ($this->request->getRequest() as $nome_entrada => $entrada) {
            if ($nome_entrada == 'nome' and strlen($entrada) < 3) {
                $this->sessao->setFlash('erro', 'nome', 'O Nome do Ingrediente deve Ter ao Menos 3 Caracteres');
            } else if ($nome_entrada == 'unidade_medida' and !$entrada) {
                $this->sessao->setFlash('erro', 'unidade_medida', 'Selecione uma Unidade de Medida');
            }
        }

        if ($this->sessao->has('flash')) {
            Response::set($this->request->getRequest(), 'ingrediente');
            $this->incluir();
            return false;
        }
        return true;

    }
}
