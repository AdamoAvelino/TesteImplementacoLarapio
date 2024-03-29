<?php

namespace Larapio\App\Model;

use Larapio\BD\Model;
use Larapio\App\Model\UnidadeMedida;

class Ingrediente extends Model
{

    private $colection = [];
    //Atributos da entidade Ingrediente
    public $id;
    public $nome;
    public $quantidade;
    public $unidade_medida;
    private $listaUnidadeMedida;
    // Atributo que condiciona um filtro para um lista de montagem de colecao
    private $where = [['1', '=', '1']];
    //Atributos para ordenação do grid
//    private $ordenacao = '0';
    private $coluna = 'i.id';

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
     * @return type
     */
    public function all()
    {
        $select = ' i.id, i.nome
        , IF(en.id IS NOT NULL, 
            (ci.quantidade * ci.embalagem) - IF(pin.id IS NULL, 0, SUM(pin.quantidade_ingrediente)), 
        0) quantidade
        , um.nome unidade_medida';
        $lista = $this->result = $this->query->select($select)
                ->from($this->table . ' i')
                ->inner_join('unidade_medida um')
                ->on(['um.id', '=', 'i.unidade_medida'])
                ->left_join('compra_item ci')
                ->on(['ci.id_ingrediente', '=', 'i.id'])
                ->left_join('entrada en')
                ->on(['en.id_item_compra', '=', 'ci.id'])
                ->left_join('saida s')
                ->on(['s.id_entrada', '=', 'en.id'])
                ->left_join('preparacao_ingrediente pin')
                ->on(['pin.id', '=', 's.id_preparacao_ingrediente'])
                ->where($this->where)
                ->group_by('i.id')
                ->order_by($this->coluna)
                ->getSql(false);
        $obj = new ModelColection('ingrediente', $lista);
        return $this->colection = $obj->getColection();
    }

    /**
     * ------------------------------------------------------------------------------------------------------------
     * @param type $filtros
     */
    public function buscar($filtros)
    {

        if (isset($filtros['nome']) and $filtros['nome']) {
            $this->where[] = ['i.nome', 'LIKE', "%{$filtros['nome']}%",];
            $this->where[] = 'AND';
        }
    }

    /**
     * ------------------------------------------------------------------------------------------------------------
     */
    public function ordenar($coluna, $order)
    {
        $direcao = $order ? 'DESC' : 'ASC';
        switch ($coluna) {
            case 'order_id' : $ordenacao = 'i.id %s';
                break;
            case 'order_nome' : $ordenacao = 'i.nome %s';
                break;
            case 'order_quantidade' : $ordenacao = 'quantidade %s';
                break;
            case 'order_unidade_medida' : $ordenacao = 'unidade_medida %s';
                break;
            default : $ordenacao = 'i.id';
                break;
        }

        $this->coluna = sprintf($ordenacao, $direcao);
    }

    /**
     * 
     * @param array $busca
     * @param array $ordenacao
     */
    private function ordenarBuscar($busca, $ordem)
    {
        if ($busca) {
            $this->buscar(array_filter($busca));
        }
    }

    /**
     * ------------------------------------------------------------------------------------------------------------
     */
    public function setListaUnidadeMedida()
    {
        $unidade_medida = new UnidadeMedida();
        $this->lista_unidade_medida = $unidade_medida->all();
    }

    /**
     * ------------------------------------------------------------------------------------------------------------
     * @return type
     */
    public function getListaUnidadeMedida()
    {
        return $this->lista_unidade_medida;
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
     * @return type
     */
    function getNome()
    {
        return $this->nome;
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
     * @return type
     */
    function getUnidade_medida()
    {
        return $this->unidade_medida;
    }

    function setId($id)
    {
        $this->id = $id;
    }

    /**
     * ------------------------------------------------------------------------------------------------------------
     * @param type $nome
     */
    function setNome($nome)
    {
        $this->nome = $nome;
    }

    /**
     * ------------------------------------------------------------------------------------------------------------
     * @param type $quantidade
     */
    function setQuantidade($quantidade)
    {
        $this->quantidade = $quantidade;
    }

    /**
     * ------------------------------------------------------------------------------------------------------------
     * @param type $unidade_medida
     */
    function setUnidade_medida($unidade_medida)
    {
        $this->unidade_medida = $unidade_medida;
    }

}
