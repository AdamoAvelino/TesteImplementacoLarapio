<?php

use Larapio\Http\Response;

$router->get('/', function(){
  Response::view('home');
});

//--------------------------------------------------------------------------
// Rotas para igredientes
$router->get('/ingredientes', 'IngredienteController.index');
$router->post('/incluir_ingrediente', 'IngredienteController.incluir');
$router->post('/salvar_ingrediente', 'IngredienteController.salvar_ingrediente');

//--------------------------------------------------------------------------
//Rotas para unidade de medida
$router->get('/unidade_medida', 'UnidadeMedidaController.listar');
$router->post('/unidade_medida/incluir', 'UnidadeMedidaController.incluir');
$router->post('/unidade_medida/salvar', 'UnidadeMedidaController.salvar');
$router->get('/unidade_medida/consultar/{id}/', 'UnidadeMedidaController.apresentar');
$router->post('/unidade_medida/alterar', 'UnidadeMedidaController.alterar');
$router->post('/unidade_medida/excluir', 'UnidadeMedidaController.excluir');



//--------------------------------------------------------------------------
//Rotas para Categoria Manufaturado
$router->get('/categoria_manufaturado', 'CategoriaManufaturadoController.listar');
$router->post('/categoria_manufaturado/incluir', 'CategoriaManufaturadoController.incluir');
$router->post('/categoria_manufaturado/salvar', 'CategoriaManufaturadoController.salvar');
$router->get('/categoria_manufaturado/consultar/{id}/', 'CategoriaManufaturadoController.apresentar');
$router->post('/categoria_manufaturado/alterar', 'CategoriaManufaturadoController.alterar');
$router->post('/categoria_manufaturado/excluir', 'CategoriaManufaturadoController.excluir');


//--------------------------------------------------------------------------
//Rotas para Categoria Manufaturado
$router->get('/compra', 'CompraController.listar');
$router->post('/compra/incluir', 'CompraController.incluir');
//$router->post('/compra/salvar', 'CompraController.salvar');
//$router->get('/compra/consultar/{id}/', 'CompraController.apresentar');
//$router->post('/compra/alterar', 'CompraController.alterar');
//$router->post('/compra/excluir', 'CompraController.excluir');

