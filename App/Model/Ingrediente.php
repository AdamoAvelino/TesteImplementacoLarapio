<?php

namespace Larapio\App\Model;

use Larapio\BD\Model;


class Ingrediente extends Model
{
  public function all()
  {
    $select = 'ig.id, ig.nome, un.nome unidade_medida, un.id id_unidade_medida';
    $this->result = $this->query->select($select)
      ->from($this->table. ' ig')
      ->join('unidade_medida un')
      ->on(['un.id', '=','ig.unidade_medida'])
      ->getSql(false);

    return $this->result;
  }
}
