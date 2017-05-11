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

CREATE TABLE IF NOT EXISTS avaliacao_sistema (
nota INT,
comentario VARCHAR(250)
);

CREATE TABLE IF NOT EXISTS endereco (
ID_ende INT PRIMARY KEY,
ID_cida INT,
bairro VARCHAR(100),
cep CHAR(8),
logradouro VARCHAR(100),
numero INTEGER,
complemento VARCHAR(100),
FOREIGN KEY(ID_cida) REFERENCES cidade (ID_cida) MATCH FULL ON DELETE RESTRICT ON UPDATE CASCADE
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
FOREIGN KEY(ID_ende) REFERENCES endereco (ID_ende) MATCH FULL ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS telefone (
ID_pess INT,
telefone CHAR(14),
FOREIGN KEY (ID_pess) REFERENCES pessoa (ID_pess) MATCH FULL ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS email (
ID_pess_FK INT,
email VARCHAR(150),
FOREIGN KEY(ID_pess_FK) REFERENCES pessoa (ID_pess) MATCH FULL ON DELETE CASCADE ON UPDATE CASCADE
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
nome VARCHAR(100),
tamanho INT NULL,
marca VARCHAR(100) NULL,
validado INT,
tipoMedida VARCHAR(10),
);

CREATE TABLE IF NOT EXISTS avalia (
nota INT,
Atributo2 VARCHAR(250),
ID_supe INT NULL,
ID_prod INT NULL,
ID_pess INT NULL,
FOREIGN KEY(ID_supe) REFERENCES supermercado (ID_supe) MATCH FULL ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY(ID_pess) REFERENCES pessoa (ID_pess) MATCH FULL ON DELETE RESTRICT ON UPDATE CASCADE,
FOREIGN KEY(ID_prod) REFERENCES produto (ID_prod) MATCH FULL ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS venda (
ID_supe INT,
ID_prod INT,
valido INT,
preco MONEY,
FOREIGN KEY(ID_supe) REFERENCES supermercado (ID_supe) MATCH FULL ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY(ID_prod) REFERENCES produto (ID_prod) MATCH FULL ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS venda_atacado (
ID_supe INT,
ID_prod INT,
valido INT,
preco MONEY,
quantidade INT,
FOREIGN KEY(ID_supe) REFERENCES supermercado (ID_supe) MATCH FULL ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY(ID_prod) REFERENCES produto (ID_prod) MATCH FULL ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS contem (
ID_list INT,
ID_prod INT,
quantidade INT,
PRIMARY KEY(ID_list, ID_prod),
FOREIGN KEY(ID_list) REFERENCES lista_de_compras (ID_list) MATCH FULL ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY(ID_prod) REFERENCES produto (ID_prod) MATCH FULL ON DELETE RESTRICT ON UPDATE CASCADE
);

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
		
INSERT INTO endereco (id_ende, ID_cida, bairro, cep, logradouro, numero, complemento)
VALUES  (1, 1, 'Manguinhos',  	    '29123123', 'Rua dos estudantes',  661, 'Ifes Serra'),
        (2, 1, 'Laranjeiras', 	    '29165000', 'Av Central', 	       152, 'Comercio'	),
        (3, 2, 'Goiabeiras',  	    '29165001', 'Av Fernando Ferrari', 122, 'Nenhum'	),
        (4, 3, 'Jardim Marilandia', '29179450', 'Av Teste', 	       14,  'Comercio'	),
        (5, 1, 'Barcelona', 	    '29666200', 'Rua Aquario Santos',  433, 'Nope' 	),
        (6, 1, 'Feu Rosa',          '29165666', 'Rua teste',           11,  'Nenhum'),
        (7, 2, 'São Pedro',         '29887887', 'Rua Absurda',         12,  'Ifes Vitoria'),
        (8, 2, 'São Torquato',      '29665123', 'Rua Terminal',        22,  'Certurb'),
        (9, 1, 'Dombosco',          '29123332', 'Rua Juraci',          212,  'Nehum'),
        (10,1, 'Colina de Laranjerias','29165082', 'Rua Herman Stern', 371, 'Condominio');
		
INSERT INTO avaliacao_sistema (nota , comentario)
VALUES  (1, 'Banana podre'   ),
	(5, 'Dá pro gasto'   ),
	(9, 'Muito bom'      ),
	(7, 'Dá pra melhorar'),
	(8, 'Funcionou'	     );
	
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
VALUES (01, 1, 'churas turma',          '2017/04/01', '2017/12/25', '2017/09/02'),
       (02, 7, 'churas turma',          '2017/03/18', '2017/05/22', '2017/05/22'),
       (03, 5, 'compras casa',          '2017/02/02', '2017/02/17', '2017/02/13'),
       (04, 1, 'idiota do chefe mando', '2017/01/01', '2017/12/31', '2017/12/01'),
       (05, 4, 'encontro beneficente',  '2017/10/12', '2017/10/30', '2017/10/09'),
       (06, 1, 'frutas',                '2017/04/10', '2017/04/11', '2017/04/11'),
       (07, 5, 'pescaria',              '2017/04/12', '2017/05/12', '2017/05/10'),
       (08, 2, 'natal',                 '2017/04/01', '2017/12/25', '2017/09/02'),
       (09, 4, 'churas antonio',        '2017/05/15', '2017/08/17', '2017/08/09'),
       (10, 4, 'churas familia',        '2017/01/13', '2017/02/28', '2017/02/23');
	   
INSERT INTO produto (ID_prod,nome ,tamanho ,marca ,tipoMedida)
VALUES  (1,  'Banana', 		      NULL, NULL,        'kg'),
	(2,  'Coca Cola',	      300,  NULL,        'ml'),
	(3,  'Coca Cola',	      600,  NULL,        'ml'),
	(4,  'Coca Cola',	      2,    NUll,        'l'),
	(5,  'Arroz', 		      1,    'sepó',      'kg'),
	(6,  'Feijao', 		      2,    'sabugo',    'kg'),
	(7,  'Milho',  		      1,    'sadiga',    'kg'),
	(8,  'Escova de dente',       10,   'Lonis',     'cm'),
	(9,  'Copos de plastico',     300,  'Nanis',     'ml'),
	(10, 'Pendrive', 	      8,    'Kingspon',  'gb'),
	(11, 'Barra de chocolate',    200,  'maroto',    'g'),
	(12, 'Lãmpada LED',           6,    'lapda',     'watt'),
	(13, 'Lâmpada Incandescente', 40,   'lapda',     'watt'),
	(14, 'Trigo',                 1,    'felizardo', 'kg'),
	(15, 'Biscoito recheado',     100,  'Prakinas',  'g'),
	(16, 'Batata chips',          75,   'Muffles',   'g'),
	(17, 'Detergente',            500,  'Limol',     'ml'),
	(18, 'Par de Chinelos',       NULL, 'Cavaibana', NULL),
	(19, 'Carne picanha',         1,     NULL,       'kg'),
	(20, 'Pacote de lenço',       NULL, 'glinex',    NULL);
		
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
