CREATE TABLE IF NOT EXISTS pais (
ID_pais INT PRIMARY KEY,
nome VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS estado (
ID_esta INT PRIMARY KEY,
ID_pais INT,
nome VARCHAR(100),
FOREIGN KEY(ID_pais) REFERENCES pais (ID_pais)
);

CREATE TABLE IF NOT EXISTS cidade (
ID_cida INT PRIMARY KEY,
ID_esta INT,
nome VARCHAR(100),
FOREIGN KEY(ID_esta) REFERENCES estado (ID_esta)
);

CREATE TABLE IF NOT EXISTS avaliacao_sistema (
nota INT,
comentario VARCHAR(250)
);

CREATE TABLE IF NOT EXISTS endereço (
ID_ende INT PRIMARY KEY,
ID_cida INT,
bairro VARCHAR(100),
cep CHAR(8),
logradouro VARCHAR(100),
numero INTEGER,
complemento VARCHAR(100),
FOREIGN KEY(ID_cida) REFERENCES cidade (ID_cida)
);

CREATE TABLE IF NOT EXISTS supermecado (
ID_supe INT PRIMARY KEY,
ID_ende INT,
nome VARCHAR(100),
unidade VARCHAR(100),
logo INT NULL,
FOREIGN KEY(ID_ende) REFERENCES endereço (ID_ende)
);

CREATE TABLE IF NOT EXISTS pessoa (
ID_pess INT PRIMARY KEY,
ID_ende INT,
nome VARCHAR(100),
login VARCHAR(50),
senha VARCHAR(50),
nivel INT,
FOREIGN KEY(ID_ende) REFERENCES endereço (ID_ende)
);

CREATE TABLE IF NOT EXISTS telefone (
ID_pess INT,
telefone CHAR(14),
FOREIGN KEY (ID_pess) REFERENCES pessoa (ID_pess)
);

CREATE TABLE IF NOT EXISTS email (
ID_pess_FK INT,
email VARCHAR(150),
FOREIGN KEY(ID_pess_FK) REFERENCES pessoa (ID_pess)
);

CREATE TABLE IF NOT EXISTS lista_de_compras (
ID_list INT PRIMARY KEY,
ID_pess INT,
nome VARCHAR(100),
dataCria DATE,
dataFim DATE,
dataLemb DATE,
FOREIGN KEY(ID_pess) REFERENCES pessoa (ID_pess)
);

CREATE TABLE IF NOT EXISTS produto (
ID_prod INT PRIMARY KEY,
nome VARCHAR(100),
tamanho INT NULL,
marca VARCHAR(100) NULL,
validado INT,
tipoMedida VARCHAR(10),
possui_ID_prod INT NULL
);

CREATE TABLE IF NOT EXISTS avalia (
nota INT,
Atributo2 VARCHAR(250),
ID_supe INT,
ID_prod INT,
ID_pess INT,
FOREIGN KEY(ID_supe) REFERENCES supermecado (ID_supe),
FOREIGN KEY(ID_pess) REFERENCES pessoa (ID_pess),
FOREIGN KEY(ID_prod) REFERENCES produto (ID_prod));

CREATE TABLE IF NOT EXISTS venda (
ID_supe INT,
ID_prod INT,
valido INT,
preco MONEY,
FOREIGN KEY(ID_supe) REFERENCES supermecado (ID_supe),
FOREIGN KEY(ID_prod) REFERENCES produto (ID_prod)
);

CREATE TABLE IF NOT EXISTS venda_atacado (
ID_supe INT,
ID_prod INT,
valido INT,
preco MONEY,
quantidade INT,
FOREIGN KEY(ID_supe) REFERENCES supermecado (ID_supe),
FOREIGN KEY(ID_prod) REFERENCES produto (ID_prod)
);

CREATE TABLE IF NOT EXISTS contem (
ID_list INT,
ID_prod INT,
quantidade INT,
PRIMARY KEY(ID_list, ID_prod)
);
