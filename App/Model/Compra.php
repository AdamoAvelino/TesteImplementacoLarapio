<?php

namespace Larapio\App\Model;

use Larapio\BD\Model;
use Larapio\App\Model\ModelColection;

class Compra extends Model
{

    private $colection = [];
    private $compraIntens;
    private $id;
    private $data;
    private $mercado;
    private $valor;

    /**
     * ------------------------------------------------------------------------------------------------------------
     * @param type $dados
     */
    public function __construct($dados = null)
    {

        if ($dados) {
            foreach ($dados as $propriedade => $valor) {
                $this->$propriedade = $valor;
            }
        }
        parent::__construct();
    }

    /**
     * ------------------------------------------------------------------------------------------------------------
     */
    public function all()
    {
        $colunas = 'c.id, c.`data`, c.mercado, SUM(ci.valor) valor';
        $lista = $this->query->select($colunas)
                ->from('compra c')
                ->join('compra_item ci')
                ->on(['ci.id_compra', '=', 'c.id'])
                ->group_by('c.id')
                ->getSql(false);
        $obj = new ModelColection('compra', $lista);
        return $this->colection = $obj->getColection();
    }
    
    /**
     * ------------------------------------------------------------------------------------------------------------
     * @return type
     */
    function getId()
    {
        return $this->id;
    }
    /**
     * ------------------------------------------------------------------------------------------------------------
     * @param type $dataOrHora
     * @return type
     */
    function getData($dataOrHora)
    {
        if ($dataOrHora == 'data') {
            return date('d/m/Y', strtotime($this->data));
        } else {
            return date('H:i', strtotime($this->data));
        }
    }

    /**
     * ------------------------------------------------------------------------------------------------------------
     * @return type
     */
    function getMercado()
    {
        return $this->mercado;
    }
    
    /**
     * ------------------------------------------------------------------------------------------------------------
     * @return type
     */

    function getEmbalagem()
    {
        return $this->embalagem;
    }
    /**
     * ------------------------------------------------------------------------------------------------------------
     * @return type
     */
    function getValor()
    {
        
        return number_format($this->valor, '2', ',', '');
    }
    /**
     * ------------------------------------------------------------------------------------------------------------
     * @return type
     */
    function getQuantidade()
    {
        return $this->quantidade;
    }
    
    /**
     * ------------------------------------------------------------------------------------------------------------
     * @return type]
     */
    function getNome()
    {
        return $this->nome;
    }
}
