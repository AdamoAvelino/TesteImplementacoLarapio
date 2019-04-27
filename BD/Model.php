<?php

namespace Larapio\BD;

use Larapio\BD\QuerySql;

class Model
{

    protected $query;
    protected $table;
    protected $result;

    /**
     * ---------------------------------------------
     * Undocumented function
     *
     * @param [type] $model
     */
    public function __construct()
    {
        $this->query = new QuerySql;
        $this->table = $this->nome_tabela($this);
    }

    /**
     * --------------------------------------------------------------
     * Undocumented function
     *
     * @param [type] $model
     * @return void
     */
    private function nome_tabela($model)
    {
        $classe = end(explode('\\', get_class($model)));
        $entidade = preg_replace('#([A-Z])#', '_${1}', $classe);
        return strtolower(substr($entidade, 1));
    }

    /**
     * ------------------------------------------------------------------
     * Undocumented function
     *
     * @return void
     */
    public function all()
    {
        $this->result = $this->query->select('*')
            ->from($this->table)
            ->getSql(false);

        return $this->result;
    }

    /**
     * ----------------------------------------------------------------------------
     * Undocumented function
     *
     * @param [type] $id
     * @return void
     */
    public function get($id)
    {
        $this->result = $this->query->select('*')
            ->from($this->table)
            ->where(['id', '=', $id])
            ->getSql();

        return $this->result;
    }

    /**
     * ----------------------------------------------------------------------
     * Undocumented function
     *
     * @return void
     */
    public function update($coluna, $id)
    {
        $this->result = $this->query->update($this->table)
            ->set($coluna)
            ->where(['id', '=', $id])
            ->getSql();
    }

    /**
     * ----------------------------------------------------------------------
     * Undocumented function
     *
     * @param [type] $valores
     * @param [type] $id
     * @return void
     */
    public function insert($valores)
    {
        $this->result = $this->query->insert()
            ->into($this->table)
            ->values($valores)
            ->getSql();



        return $this->result;
    }

    /**
     * ------------------------------------------------------------------
     * Undocumented function
     *
     * @param [type] $id
     * @return void
     */
    public function delete($id)
    {
        $this->query->delete()
            ->from($this->table)
            ->where(['id', '=', $id])
            ->getSql();
    }
}
