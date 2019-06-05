<?php

namespace Larapio\App;

use Larapio\Http\Request;

class OrdenarBuscarPaginacao
{

    private $fop = [];
    private $dadosBusca;
    private $dadosForm;
    private $dadosLink = [];

    public function __construct()
    {
        
    }

    /**
     * ------------------------------------------------------------------------
     * @param Request $request
     */
    public function gerarLinksForms(Request $request)
    {
        $this->linksForm($request);
        $this->linksOrder($request);

        return $this->fop;
    }

    /**
     * -------------------------------------------------------------------------
     * @param Request $request
     */
    private function linksForm(Request $request)
    {
        $this->fop['form'] = 'nulo-nulo';
        if ($request->getRequest()) {

            foreach ($request->getRequest() as $input => $value) {
                $value = $value ?: 0;
                $this->linksForm[] = "$input-$value";
            }

            $this->fop['form'] = implode('*', $this->linksForm);
        }
    }

    private function linksOrder(Request $request)
    {
        $urlQuery = $request->getQuery();
        $this->fop['links'] = isset($urlQuery['coluna']) ? $urlQuery['coluna'] : 0;
        $this->fop['order'] = (isset($urlQuery['order']) ? ($urlQuery['order'] == 0 ? 1 : 0) : 0);

        if (isset($urlQuery['filtros'])) {
            $this->fop['form'] = $request->getQuery('filtros');
        }
//        $order = explode('/', $request->getQuery());
    }

    /**
     * ----------------------------------------------------------------------------------
     */
    public function setBusca(Request $request, $atributos = false)
    {
        $temDoForm = $request->getRequest();
        $filtraDados = ['coluna' => '', 'order' => ''];

        $this->dadosForm = $atributos ?: $request->getRequest();
        $this->dadosBusca = array_diff($this->dadosForm, $filtraDados);

        if ($temDoForm) {
            $this->setOrdenacao(null, $this->dadosForm);
        }
    }

    /**
     * ----------------------------------------------------------------------------------
     */
    public function setOrdenacao(Request $request = null, $atributos = false)
    {

        $dadosLink = $atributos ?: $request->getQuery();

        $this->dadosLink['coluna'] = $dadosLink['coluna'];
        $this->dadosLink['order'] = $dadosLink['order'];



        if (isset($dadosLink['filtros'])) {
            $inputs = explode('*', $dadosLink['filtros']);

            foreach ($inputs as $nameValor) {
                list($name, $value) = explode('-', $nameValor);
                $dadosBusca[$name] = $value;
            }

            $this->setBusca($request, $dadosBusca);
        }
    }

    /**
     * ------------------------------------------------------------------------
     * @return Array
     */
    public function getOrdenacao()
    {
        return $this->dadosLink;
    }

    /**
     * -------------------------------------------------------------------------
     * @return Array
     */
    public function getBusca()
    {
        return $this->dadosBusca;
    }

    /**
     * -------------------------------------------------------------------------
     * @return Array
     */
    public function getDadosForm()
    {
        return $this->dadosForm;
    }

}
