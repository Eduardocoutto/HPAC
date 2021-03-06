CREATE TABLE IF NOT EXISTS tipo_medida(
ID_tmed INT PRIMARY KEY,
nome VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS marca(
ID_marc INT PRIMARY KEY,
nome VARCHAR
);

CREATE TABLE IF NOT EXISTS pais (
ID_pais INT PRIMARY KEY,
nome VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS estado (
ID_esta INT PRIMARY KEY,
ID_pais INT,
nome VARCHAR(100),
FOREIGN KEY(ID_pais) REFERENCES pais (ID_pais) MATCH FULL ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS cidade (
ID_cida INT PRIMARY KEY,
ID_esta INT,
nome VARCHAR(100),
FOREIGN KEY(ID_esta) REFERENCES estado (ID_esta) MATCH FULL ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS bairro (
ID_bair INT PRIMARY KEY,
ID_cida INT,
nome VARCHAR(100),
FOREIGN KEY(ID_cida) REFERENCES cidade (ID_cida) MATCH FULL ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS avalia_sys (
ID_pess INT primary key,
comentario VARCHAR(255),
nota INT
);

CREATE TABLE IF NOT EXISTS endereco (
ID_ende INT PRIMARY KEY,
ID_bair INT,
cep CHAR(8),
logradouro VARCHAR(100),
numero INTEGER,
complemento VARCHAR(100),
FOREIGN KEY(ID_bair) REFERENCES bairro (ID_bair) MATCH FULL ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS supermercado (
ID_supe INT PRIMARY KEY,
ID_ende INT,
nome VARCHAR(100),
unidade VARCHAR(100),
logo INT NULL,
FOREIGN KEY(ID_ende) REFERENCES endereco (ID_ende) MATCH FULL ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS pessoa (
ID_pess INT PRIMARY KEY,
ID_ende INT,
nome VARCHAR(100),
login VARCHAR(50),
senha VARCHAR(50),
nivel INT,
data_nas DATE,
FOREIGN KEY(ID_ende) REFERENCES endereco (ID_ende) MATCH FULL ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS tipo_contato (
ID_tcon INT PRIMARY KEY,
tipo VARCHAR(50)
);


CREATE TABLE IF NOT EXISTS contato (
ID_cont INT,
ID_pess INT,
ID_tcon INT,
descricao VARCHAR(100),
primary key(ID_cont),
FOREIGN KEY (ID_pess) REFERENCES pessoa (ID_pess) MATCH FULL ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (ID_tcon) REFERENCES tipo_contato (ID_tcon) MATCH FULL ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS lista_de_compras (
ID_list INT PRIMARY KEY,
ID_pess INT,
nome VARCHAR(100),
dataCria DATE,
dataFim DATE,
dataLemb DATE,
FOREIGN KEY(ID_pess) REFERENCES pessoa (ID_pess) MATCH FULL ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS produto (
ID_prod INT PRIMARY KEY,
ID_tmed INT,
ID_marc INT,
nome VARCHAR(100),
unidade INT NULL,
validado INT,
FOREIGN KEY(ID_tmed) REFERENCES tipo_medida (ID_tmed) MATCH FULL ON DELETE RESTRICT ON UPDATE CASCADE,
FOREIGN KEY(ID_marc) REFERENCES marca (ID_marc) MATCH FULL ON DELETE RESTRICT ON UPDATE CASCADE
);

create table if not exists data_Lemb(
ID_list INT,
dataLemb DATE ,
primary key(ID_list,dataLemb),
FOREIGN KEY(ID_list) REFERENCES lista_de_compras (ID_list) MATCH FULL ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS avaliacao_produto (
nota INT,
comentario VARCHAR(250),
ID_prod INT NULL,
ID_pess INT NULL,
primary key(ID_prod,ID_pess),
FOREIGN KEY(ID_pess) REFERENCES pessoa (ID_pess) MATCH FULL ON DELETE RESTRICT ON UPDATE CASCADE,
FOREIGN KEY(ID_prod) REFERENCES produto (ID_prod) MATCH FULL ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS avaliacao_supermercado (
nota INT,
comentario VARCHAR(255),
ID_supe INT NULL ,
ID_pess INT NULL ,
primary key(ID_supe, ID_pess),
FOREIGN KEY(ID_supe) REFERENCES supermercado (ID_supe) MATCH FULL ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY(ID_pess) REFERENCES pessoa (ID_pess) MATCH FULL ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS venda_varejo (
ID_venv INT,
ID_supe INT,
ID_prod INT,
valido INT,
preco MONEY,
primary key(ID_venv),
FOREIGN KEY(ID_supe) REFERENCES supermercado (ID_supe) MATCH FULL ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY(ID_prod) REFERENCES produto (ID_prod) MATCH FULL ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS venda_atacado (
ID_vena INT,
ID_supe INT,
ID_prod INT,
preco MONEY,
valido INT,
quantidade INT,
primary key(ID_vena),
FOREIGN KEY(ID_supe) REFERENCES supermercado (ID_supe) MATCH FULL ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY(ID_prod) REFERENCES produto (ID_prod) MATCH FULL ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS contem_produto (
ID_list INT,
ID_prod INT,
quantidade INT,
PRIMARY KEY(ID_list, ID_prod),
FOREIGN KEY(ID_list) REFERENCES lista_de_compras (ID_list) MATCH FULL ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY(ID_prod) REFERENCES produto (ID_prod) MATCH FULL ON DELETE RESTRICT ON UPDATE CASCADE
);

INSERT INTO marca (ID_marc, nome)
VALUES  (1,  'Nenhuma'),
		(2,  'Nestle'),
		(3,  'Sepé'),
		(4,  'Coca Cola'),
		(5,  'Unilever'),
		(6,  'Seara'),
		(7,  'Quero'),
		(8,  'PEPSI'),
		(9,  'SAMSUMG'),
		(10, 'Gillette');

INSERT INTO tipo_medida (ID_tmed, nome)
VALUES  (1,  'KG'),
		(2,  'Litro'),
		(3,  'Grama'),
		(4,  'UNIDADE'),
		(5,  'PACOTE'),
		(6,  'Seara'),
		(7,  'Watts'),
		(8,  'ML'),
		(9,  'CM'),
		(10, 'Gigas');
		

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

INSERT INTO bairro (ID_bair,ID_cida,nome)
VALUES  (1,  1, 'Manguinhos'           ),
	(2,  1, 'Laranjeiras'         ),
        (3,  1, 'Goiabeiras'      ),
        (4,  1, 'Jardim Marilandia'       ),
        (5,  1, 'Barcelona'       ),
        (6,  1, 'Feu Rosa'  ),
        (7,  7, 'São Pedro'        ),
        (8,  7, 'São Torquato'),
	(9,  2, 'Dombosco'       ),
        (10, 2, 'Colina de Laranjerias'        ),
        (11, 6, 'Marilândia'  ),
        (12, 6, 'Coqueiral de itapuã');
		
INSERT INTO endereco (id_ende, ID_bair, cep, logradouro, numero, complemento)
VALUES  (1, 1,'29123123', 'Rua dos estudantes',  661, 'Ifes Serra'),
        (2, 1, 	    '29165000', 'Av Central', 	       152, 'Comercio'	),
        (3, 2,  	    '29165001', 'Av Fernando Ferrari', 122, 'Nenhum'	),
        (4, 3, '29179450', 'Av Teste', 	       14,  'Comercio'	),
        (5, 1, 	    '29666200', 'Rua Aquario Santos',  433, 'Nope' 	),
        (6, 1,          '29165666', 'Rua teste',           11,  'Nenhum'),
        (7, 2,         '29887887', 'Rua Absurda',         12,  'Ifes Vitoria'),
        (8, 2,      '29665123', 'Rua Terminal',        22,  'Certurb'),
        (9, 1,          '29123332', 'Rua Juraci',          212,  'Nehum'),
        (10,1,'29165082', 'Rua Herman Stern', 371, 'Condominio');
		
INSERT INTO avalia_sys (ID_pess, nota , comentario)
VALUES  (1,1, 'Banana podre'   ),
	(2, 5, 'Dá pro gasto'   ),
	(3, 9, 'Muito bom'      ),
	(4, 7, 'Dá pra melhorar'),
	(5, 8, 'Funcionou'	     );
	
INSERT INTO supermercado(ID_supe ,ID_ende ,nome , unidade ,logo)
VALUES  (1,  1, 'Devens',     'Serra',      NULL),
	(2,  2, 'Extrabom',   'Cariacica',  NULL),
	(3,  3, 'Wallmart',   'Vitória',    NULL),
	(4,  4, 'Carone',     'Serra', 	    NULL),
	(5,  5, 'Meridional', 'Aracruz',    NULL),
	(6,  6, 'Devens',     'Aracruz',    NULL),
	(7,  7, 'Carrefour',  'Serra', 	    NULL),
	(8,  8, 'Extrabom',   'Vila Velha', NULL),
	(9,  9, 'Carrefour',  'Vitória',    NULL),
	(10, 10, 'Wallmart',   'Linhares',   NULL);

INSERT INTO pessoa(ID_pess, ID_ende, nome, login, senha, nivel, data_nas)
VALUES (01, 1, 'Antonio',    'casablanca', '######', 0, '1998/02/01'),
       (02, 1, 'Guilherme',  'Gigi',       '######', 0, '1991/04/07'),
       (03, 1, 'Julieta',    'Jubisk',     '######', 0, '1995/07/21'),
       (04, 1, 'Bartolomeu', 'barto',      '######', 2, '1992/10/11'),
       (05, 1, 'Erica',      'novinha123', '######', 4, '1991/10/01'),
       (06, 1, 'Beatriz',    'asdfg',      '######', 5, '1990/09/24'),
       (07, 1, 'Milena',     'pink',       '######', 0, '1993/12/31'),
       (08, 1, 'Robeerto',   'matador',    '######', 3, '1994/10/10'),
       (09, 1, 'Antonio',    'antonio',    '######', 0, '1996/12/07'),
       (10, 1, 'Lucas',      'lulu',       '######', 1, '1999/01/30');
       
INSERT INTO tipo_contato (ID_tcon, tipo)
VALUES (1, 'Telefone fixo'),
       (2, 'Telefone celular'),
       (3, 'Telefone comercial'),
       (4, 'Telefone fax'),
       (5, 'Telefone outro'),
       (6, 'Email pessoal'),
       (7, 'Email profissional'),
       (8, 'Email outro');    
       
INSERT INTO contato (ID_cont, ID_pess, ID_tcon, descricao)
VALUES  (1, 1, 2, '+5521985556723'),
	(2, 2, 2, '+5527988857776'),
	(3, 3, 1, '+553133367957' ),
	(4, 4, 4, '+552733377722' ),
	(5, 5, 2, '+5529804630127'),
	(6 ,5, 6, 'novinha123@cestadecompras.com.br'),
	(7, 6, 6, 'asdfg@cestadecompras.com.br'     ),
	(8, 1, 7, 'casablanca@cestadecompras.com.br'),
	(9, 3, 8, 'Jubisk@cestadecompras.com.br'    ),
	(10, 7, 6, 'pink@cestadecompras.com.br'      );
	
	   
INSERT INTO lista_de_compras (ID_list, ID_pess, nome, dataCria, dataFim)
VALUES (01, 1, 'churas turma',          '2017/04/01', '2017/12/25'),
       (02, 7, 'churas turma',          '2017/03/18', '2017/05/22'),
       (03, 5, 'compras casa',          '2017/02/02', '2017/02/17'),
       (04, 1, 'idiota do chefe mando', '2017/01/01', '2017/12/31'),
       (05, 4, 'encontro beneficente',  '2017/10/12', '2017/10/30'),
       (06, 1, 'frutas',                '2017/04/10', '2017/04/11'),
       (07, 5, 'pescaria',              '2017/04/12', '2017/05/12'),
       (08, 2, 'natal',                 '2017/04/01', '2017/12/25'),
       (09, 4, 'churas antonio',        '2017/05/15', '2017/08/17'),
       (10, 4, 'churas familia',        '2017/01/13', '2017/02/28');
	   
	  

--Alterado em 30/05/17	   
INSERT INTO produto (ID_prod, nome, ID_tmed, ID_marc ,unidade,validado)
VALUES  (1,  'Banana',            1,  1,   NULL,32),
	(2,  'Coca Cola',             8,  4,    300,25),
	(3,  'Coca Cola',             8,  4,	600,42),
	(4,  'Coca Cola',             2,  4,	  2,33),
	(5,  'Arroz',                 2,  3,	  1,10),
	(6,  'Feijao',                2,  3, 	  2,12),
	(7,  'Milho',  	              2,  6,      1,13),
	(8,  'Escova de dente',       9,  5,     10,14),
	(9,  'Copos de plastico',     8,  5,    300,16),
	(10, 'Pendrive', 	      10,  9,     16   ,17),
	(11, 'Barra de chocolate',    3,  2,    200,18),
	(12, 'Lãmpada LED',           7,  9,      6,19),
	(13, 'Lâmpada Incandescente', 7,  9,     40,20),
	(14, 'Trigo',                 1,  3,      1,21),
	(15, 'Biscoito recheado',     3,  2,    100,22),
	(16, 'Batata chips',          3,  7,     75,23),
	(17, 'Detergente',            8,  5,    500,24),
	(18, 'Par de Chinelos',       4,  1,   NULL,25),
	(19, 'Carne picanha',         1,  6,   NULL,26),
	(20, 'Pacote de lenço',       5,  1,   NULL,27);
    
insert into data_Lemb(ID_list,dataLemb)
values  (1,'2017/06/21'),
		(2,'2017/06/22'),
		(3,'2017/06/23'),
		(4,'2017/06/25'),
		(5,'2017/06/29');
		
INSERT INTO avaliacao_produto(nota , comentario,ID_prod , ID_pess)
VALUES  (1, 'Banana podre',    1, 1),
	(5, 'Dá pro gasto',    8, 2),
	(9, 'Muito bom',       3, 5),
	(7, 'Dá pra melhorar', 4, 7),
	(8, 'Funcionou',       5, 9);

INSERT INTO avaliacao_supermercado (nota , comentario,ID_supe , ID_pess)
VALUES  (1, 'Bom',    1, 1),
	(5, 'Ruim',    8, 2),
	(9, 'Muito bom',       3, 5),
	(7, 'Mais ou menos', 4, 7),
	(8, 'Ótimo',       5, 9);
	
INSERT INTO venda_varejo(ID_venv, ID_supe ,ID_prod ,valido , preco)
VALUES  (1, 1, 1,  1, 4.20 ),
	(2, 1, 2,  1, 5.50 ),
	(3, 1, 3,  1, 8.00 ),
	(4, 1, 4,  1, 12.30),
	(5, 1, 5,  1, 3.69 ),
	(6, 1, 6,  1, 3.59 ),
	(7, 1, 7,  1, 4.59 ),
	(8, 1, 8,  1, 18.39),
	(9, 1, 9,  1, 17.00),
	(10, 1, 10, 1, 32.00);
		
INSERT INTO venda_atacado(ID_vena, ID_supe ,ID_prod ,valido , preco, quantidade)
VALUES  (1, 1, 1,  1, 4.00,  10),
	(2, 1, 2,  1, 5.00,  5),
	(3, 1, 3,  1, 8.00,  3),
	(4, 1, 4,  1, 12.30, 7),
	(5, 1, 5,  1, 3.69,  2),
	(6, 1, 6,  1, 3.59,  9),
	(7, 1, 7,  1, 4.59,  6),
	(8, 1, 8,  1, 18.39, 7),
	(9, 1, 9,  1, 17.00, 8),
	(10, 1, 10, 1, 32.00, 3);
	
INSERT INTO contem_produto (ID_list, ID_prod, quantidade)
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
