SELECT c.nome, c.cpf, c.rg, l.logradouro, e.nome_logradouro, e.numero, e.cep, cid.cidade, uf.uf
FROM cliente c
JOIN endereco e ON c.id_endereco = e.id
JOIN logradouro l ON e.id_logradouro = l.id
JOIN cidade cid ON e.id_cidade = cid.id
JOIN uf ON uf.id = cid.id_uf



Ingredientes por produtos (precisa melhorar)
SELECT ip.nome, pr.nome, i.nome ingrediente, ic.quantidade, um.nome un, pr.valor_venda
FROM produto pr
JOIN produto_ingrediente_parte pip ON pip.id_produto = pr.id
JOIN ingrediente_parte ip ON ip.id = pip.id_ingrediente_parte
JOIN ingrediente_configuracao ic ON ic.id_ingrediente_parte = pip.id_ingrediente_parte
JOIN ingrediente i ON i.id = ic.id_ingradiente
JOIN unidade_medida um ON um.id = i.unidade_medida
WHERE pr.id = 4