<?php

namespace Larapio\App\Model;

use Larapio\BD\Model;
use Larapio\App\Model\ModelColection;

class Compra extends Model {

    private $colection = [];
    private $id;
    private $data;
    private $mercado;
    private $embalagem;
    private $valor;
    private $quantidade;
    private $nome;
    
    /**
     * ------------------------------------------------------------------------------------------------------------
     * @param type $dados
     */
    public function __construct($dados = null) {

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
    public function all() {
        $colunas = 'c.id, c.`data`, c.mercado, ci.embalagem, ci.valor, ci.embalagem, ci.quantidade,ig.nome, un.nome';
        $lista = $this->query->select($colunas)
                ->from('compra c')
                ->join('compra_item ci')
                ->on(['ci.id_compra', '=', 'c.id'])
                ->join('ingrediente ig')
                ->on(['ig.id', '=', 'ci.id_ingrediente'])
                ->join('unidade_medida un')
                ->on(['un.id', '=', 'ig.unidade_medida'])
                ->getSql(false);
        $obj = new ModelColection('compra', $lista);
        $this->colection = $obj->getColection();
        var_dump($this->colection);
        die();
    }

}
