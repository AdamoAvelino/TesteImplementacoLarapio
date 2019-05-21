<?php

namespace Larapio\App\Model;

use Larapio\BD\Model;

class UnidadeMedida extends Model
{

    public $colection = [];
    private $id;
    private $nome;

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
        $select = 'id, nome';
        $lista = $this->result = $this->query->select($select)
                ->from($this->table)
                ->getSql(false);
        $obj = new ModelColection('UnidadeMedida', $lista);
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
     * @return type
     */
    function getNome()
    {
        return $this->nome;
    }

    /**
     * ------------------------------------------------------------------------------------------------------------
     * @param type $id
     */
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
}
