select pessoa.nome, tipo_contato.tipo, contato.descricao as valor
from contato, tipo_contato, pessoa
where contato.id_tcon = tipo_contato.id_tcon and contato.id_pess = pessoa.id_pess;

select supermercado.nome, supermercado.unidade, bairro.nome as bairro, cidade.nome as cidade
from supermercado, endereco, bairro, cidade
where supermercado.id_ende = endereco.id_ende and endereco.id_bair = bairro.id_bair and bairro.id_cida = cidade.id_cida;

select lista_de_compras.nome as lista, produto.nome as produto, contem.quantidade
from contem, lista_de_compras, produto
where contem.id_list = lista_de_compras.id_list and contem.id_prod = produto.id_prod;

select *
from avalia_sys
where nota > 5;

select pessoa.nome as usuario, produto.nome as produto, supermercado.nome as supermercado, avalia.nota, avalia.comentario
from avalia, produto, pessoa, supermercado
where avalia.id_pess = pessoa.id_pess and avalia.id_prod = produto.id_prod and avalia.id_supe = supermercado.id_supe and nota between 3 and 7;