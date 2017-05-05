INSERT INTO pais (ID_pais, nome)
VALUES  (1,  'Brasil'        ),
        (2,  'Estados Unidos'),
        (3,  'França'        ),
        (4,  'Itália'        ),
        (5,  'Canadá'        ),
        (6,  'Chile'         ),
        (7,  'Russia'        ),
        (8,  'Alemanha'      ),
        (9,  'México'        ),
        (10, 'Egito'         ),
        (11, 'China'         );

INSERT INTO estado (ID_pais, ID_esta, nome)
VALUES  (1, 1,  'Espirito Santo'    ),
        (1, 2,  'São Paulo'         ),
        (1, 3,  'Goias'             ),
        (1, 4,  'Amazonas'          ),
        (1, 5,  'Mato Grosso do Sul'),
        (1, 6,  'Rio de Janeiro'    ),
        (1, 7,  'Bahia'             ),
        (1, 8,  'Rio de Janeiro'    ),
	(2, 9,  'Texas'             ),
        (2, 10, 'Califórnia'        ),
        (2, 11, 'Flórida'           ),
        (2, 12, 'Alasca'            );
		
INSERT INTO cidade (ID_cida, ID_esta, nome)
VALUES  (1,  1, 'Serra'           ),
	(2,  1, 'Vitória'         ),
        (3,  1, 'Vila Velha'      ),
        (4,  1, 'Cariacica'       ),
        (5,  1, 'Guarapari'       ),
        (6,  1, 'Rio de Janeiro'  ),
        (7,  7, 'Salvador'        ),
        (8,  7, 'Feira de Santana'),
	(9,  2, 'São Paulo'       ),
        (10, 2, 'Campinas'        ),
        (11, 6, 'Rio de Janeiro'  ),
        (12, 6, 'Niterói'         );
		
INSERT INTO endereço (id_ende, ID_cida, bairro, cep, logradouro, numero, complemento)
VALUES  (1, 1, 'Manguinhos',  	    '29123123', 'Rua dos estudantes',  661, 'Ifes Serra'),
        (2, 1, 'Laranjeiras', 	    '29165000', 'Av Central', 	       152, 'Comercio'	),
        (3, 2, 'Goiabeiras',  	    '29165001', 'Av Fernando Ferrari', 122, 'Nenhum'	),
        (4, 3, 'Jardim Marilandia', '29179450', 'Av Teste', 	       14,  'Comercio'	),
        (5, 1, 'Barcelona', 	    '29666200', 'Rua Aquario Santos',  433, 'Nope' 	);
		
INSERT INTO avaliacao_sistema (nota , comentario)
VALUES  (1, 'Banana podre'   ),
	(5, 'Dá pro gasto'   ),
	(9, 'Muito bom'      ),
	(7, 'Dá pra melhorar'),
	(8, 'Funcionou'	     );
	
INSERT INTO supermecado(ID_supe ,ID_ende ,nome , unidade ,logo)
VALUES  (1,  1, 'Devens',     'Serra',      NULL),
	(2,  2, 'Extrabom',   'Cariacica',  NULL),
	(3,  3, 'Wallmart',   'Vitória',    NULL),
	(4,  4, 'Carone',     'Serra', 	    NULL),
	(5,  5, 'Meridional', 'Aracruz',    NULL),
	(6,  1, 'Devens',     'Aracruz',    NULL),
	(7,  2, 'Carrefour',  'Serra', 	    NULL),
	(8,  3, 'Extrabom',   'Vila Velha', NULL),
	(9,  4, 'Carrefour',  'Vitória',    NULL),
	(10, 5, 'Wallmart',   'Linhares',   NULL);

INSERT INTO pessoa(ID_pess, ID_ende, nome, login, senha, nivel)
VALUES (01, 1, 'Antonio',    'casablanca', '######', 0),
       (02, 1, 'Guilherme',  'Gigi',       '######', 0),
       (03, 1, 'Julieta',    'Jubisk',     '######', 0),
       (04, 1, 'Bartolomeu', 'barto',      '######', 2),
       (05, 1, 'Erica',      'novinha123', '######', 4),
       (06, 1, 'Beatriz',    'asdfg',      '######', 5),
       (07, 1, 'Milena',     'pink',       '######', 0),
       (08, 1, 'Robeerto',   'matador',    '######', 3),
       (09, 1, 'Antonio',    'antonio',    '######', 0),
       (10, 1, 'Lucas',      'lulu',       '######', 1);
	   
INSERT INTO telefone (ID_pess, telefone)
VALUES (1, '+5521985556723'),
       (2, '+5527988857776'),
       (3, '+553133367957' ),
       (4, '+552733377722' ),
       (5, '+5529804630127');
	   
INSERT INTO email (ID_pess_FK, email)
VALUES (5, 'novinha123@cestadecompras.com.br'),
       (6, 'asdfg@cestadecompras.com.br'     ),
       (1, 'casablanca@cestadecompras.com.br'),
       (3, 'Jubisk@cestadecompras.com.br'    ),
       (7, 'pink@cestadecompras.com.br'      );
	   
INSERT INTO lista_de_compras (ID_list, ID_pess, nome, dataCria, dataFim, dataLemb)
VALUES (01, 1, 'churas turma',          '01/04/2017', '25/12/2017', '02/09/2017'),
       (02, 7, 'churas turma',          '18/03/2017', '22/05/2017', '22/05/2017'),
       (03, 5, 'compras casa',          '02/02/2017', '17/02/2017', '13/02/2017'),
       (04, 1, 'idiota do chefe mando', '01/01/2017', '31/12/2017', '01/12/2017'),
       (05, 4, 'encontro beneficente',  '12/10/2017', '30/10/2017', '09/10/2017'),
       (06, 1, 'frutas',                '10/04/2017', '11/04/2017', '11/04/2017'),
       (07, 5, 'pescaria',              '12/04/2017', '12/05/2017', '10/05/2017'),
       (08, 2, 'natal',                 '01/04/2017', '25/12/2017', '02/09/2017'),
       (09, 4, 'churas antonio',        '15/05/2017', '17/08/2017', '09/08/2017'),
       (10, 4, 'churas familia',        '13/01/2017', '28/02/2017', '23/02/2017');
	   
INSERT INTO produto (ID_prod,nome ,tamanho ,marca ,tipoMedida,possui_ID_prod )
VALUES  (1,  'Banana', 		      NULL, NULL,        'kg',   NULL),
	(2,  'Coca Cola',	      300,  NULL,        'ml',   NULL),
	(3,  'Coca Cola',	      600,  NULL,        'ml',   NULL),
	(4,  'Coca Cola',	      2,    NUll,        'l',    NULL),
	(5,  'Arroz', 		      1,    'sepó',      'kg',   NULL),
	(6,  'Feijao', 		      2,    'sabugo',    'kg',   NULL),
	(7,  'Milho',  		      1,    'sadiga',    'kg',   NULL),
	(8,  'Escova de dente',       10,   'Lonis',     'cm',   NULL),
	(9,  'Copos de plastico',     300,  'Nanis',     'ml',   NULL),
	(10, 'Pendrive', 	      8,    'Kingspon',  'gb',   NULL),
	(11, 'Barra de chocolate',    200,  'maroto',    'g',    NULL),
	(12, 'Lãmpada LED',           6,    'lapda',     'watt', NULL),
	(13, 'Lâmpada Incandescente', 40,   'lapda',     'watt', NULL),
	(14, 'Trigo',                 1,    'felizardo', 'kg',   NULL),
	(15, 'Biscoito recheado',     100,  'Prakinas',  'g',    NULL),
	(16, 'Batata chips',          75,   'Muffles',   'g',    NULL),
	(17, 'Detergente',            500,  'Limol',     'ml',   NULL),
	(18, 'Par de Chinelos',       NULL, 'Cavaibana', NULL,   NULL),
	(19, 'Carne picanha',         1,     NULL,       'kg',   NULL),
	(20, 'Pacote de lenço',       NULL, 'glinex',    NULL,   NULL);
		
INSERT INTO avalia(nota , Atributo2 ,ID_supe, ID_prod , ID_pess)
VALUES  (1, 'Banana podre',    1, 1, 1),
	(5, 'Dá pro gasto',    8, 2, 2),
	(9, 'Muito bom',       3, 5, 3),
	(7, 'Dá pra melhorar', 4, 7, 4),
	(8, 'Funcionou',       5, 9, 5);
		
INSERT INTO venda(ID_supe ,ID_prod ,valido , preco)
VALUES  (1, 1,  1, 4.20 ),
	(1, 2,  1, 5.50 ),
	(1, 3,  1, 8.00 ),
	(1, 4,  1, 12.30),
	(1, 5,  1, 3.69 ),
	(1, 6,  1, 3.59 ),
	(1, 7,  1, 4.59 ),
	(1, 8,  1, 18.39),
	(1, 9,  1, 17.00),
	(1, 10, 1, 32.00);
		
INSERT INTO venda_atacado(ID_supe ,ID_prod ,valido , preco, quantidade)
VALUES  (1, 1,  1, 4.00,  10),
	(1, 2,  1, 5.00,  5),
	(1, 3,  1, 8.00,  3),
	(1, 4,  1, 12.30, 7),
	(1, 5,  1, 3.69,  2),
	(1, 6,  1, 3.59,  9),
	(1, 7,  1, 4.59,  6),
	(1, 8,  1, 18.39, 7),
	(1, 9,  1, 17.00, 8),
	(1, 10, 1, 32.00, 3);
	
INSERT INTO contem (ID_list, ID_prod, quantidade)
VALUES  (1, 1,  5 ),
	(1, 2,  8 ),
	(1, 3,  20),
	(1, 4,  15),
	(1, 5,  12),
	(1, 6,  7 ),
	(1, 7,  5 ),
	(1, 8,  5 ),
	(1, 9,  5 ),
	(1, 10, 5 );
