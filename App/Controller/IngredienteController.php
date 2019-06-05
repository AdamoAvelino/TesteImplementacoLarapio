<?php

namespace Larapio\App\Controller;

use Larapio\App\OrdenarBuscarPaginacao;
use Larapio\Http\Response;
use Larapio\Http\Request;
use Larapio\App\Model\Ingrediente;
use Larapio\Http\Session;

class IngredienteController
{

    private $request;
    private $ingrediente;
    private $sessao;
    private $linksForm;
    private $fop; 

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

        $this->linksForm = new OrdenarBuscarPaginacao;
        $this->fop = $this->linksForm->gerarLinksForms($this->request);
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
        Response::set($this->fop, 'fop');
        Response::view('ingrediente/index');
    }

    /**
     * ----------------------------------------------------------------------------------
     */
    public function incluir()
    {
        Response::$ha_token = true;
        $this->ingrediente->setListaUnidadeMedida();
        $lista = $this->ingrediente->getListaUnidadeMedida();
        Response::set($lista, 'unidade');
        Response::view('ingrediente/formulario');
    }

    /**
     * ----------------------------------------------------------------------------------
     */
    public function buscarOrdernar()
    {
        if ($this->request->getRequest()) {

            $this->linksForm->setBusca($this->request);
        } else if ($this->request->getQuery()) {

            $this->linksForm->setOrdenacao($this->request);
        }

        $dadosBusca = $this->linksForm->getBusca();
        $dadosForm = $this->linksForm->getDadosForm();
        $ordenacao = $this->linksForm->getOrdenacao();

        $this->ingrediente->ordenar($ordenacao['coluna'], $ordenacao['order']);
        $this->ingrediente->buscar($dadosBusca);
        Response::set($dadosForm, 'filtros');
        $this->index();
    }

    /**
     * ----------------------------------------------------------------------------------
     */
//    public function ordenar($buscar = true)
//    {
//        if ($buscar) {
//            $this->linksForm->setOrdenacao($this->request);
//        }
//        $ordenacao = $this->linksForm->getOrdenacao();
//        $this->ingrediente->ordenar($ordenacao['coluna'], $ordenacao['order']);
//
//        if ($buscar) {
//            $this->buscar(false);
//        }
//    }

    /**
     * ----------------------------------------------------------------------------------
     * Undocumented function
     *
     * @return void
     */
    public function salvar()
    {

        if ($this->entradas_validas()) {
            $dados = $this->request->getRequest(['token']);
            $id = $this->ingrediente->insert($dados);
            $this->sessao->setFlash('sucesso', 'inclusao', 'Ingrediente Incluido com Sucesso');
            $this->consultar($id);
            $this->incluir();
        }
    }

    /**
     * ----------------------------------------------------------------------------------
     * Undocumented function
     *
     * @return void
     */
    public function alterar()
    {

        if ($this->entradas_validas()) {
            $id = $this->request->getRequest()['id'];
            $dados = $this->request->getRequest(['token', 'id']);
            $this->ingrediente->update($dados, $id);
            $this->sessao->setFlash('sucesso', 'inclusao', 'Ingrediente Incluido com Sucesso');
            $this->consultar($id);
            $this->incluir();
        }
    }

    /**
     * ----------------------------------------------------------------------------------
     * Undocumented function
     *
     * @param [type] $id
     * @return void
     */
    public function editar()
    {
        $id = $this->request->getQuery()['id'];
        $this->consultar($id);
        $this->incluir();
    }

    /**
     * ----------------------------------------------------------------------------------
     */
    public function consultar($id)
    {
        $ingrediente = $this->ingrediente->get($id);
        Response::set($ingrediente, 'ingrediente');
    }

    /**
     * Undocumented function
     *
     * @return void
     */
    public function excluir()
    {
        $id = $this->request->getRequest()['id'];
        $this->ingrediente->delete($id);
        $this->sessao->setFlash('sucesso', 'exclusao', 'Ingrediente Excluído com Sucesso');
        $this->index();
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
            } else if ($nome_entrada == 'unidade_medida' and ! $entrada) {
                $this->sessao->setFlash('erro', 'unidade_medida', 'Selecione uma Unidade de Medida');
            } else if ($nome_entrada == 'token' and $entrada != $this->sessao->getSession('token')) {
                $this->sessao->setFlash('erro', 'token', 'Token Invalido');
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
