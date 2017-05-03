CREATE TABLE IF NOT EXISTS pais (
ID_pais INT PRIMARY KEY,
nome VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS estado (
ID_esta INT PRIMARY KEY,
ID_pais INT,
nome VARCHAR(50),
FOREIGN KEY(ID_pais) REFERENCES pais (ID_pais)
);

CREATE TABLE IF NOT EXISTS cidade (
ID_cida INT PRIMARY KEY,
ID_esta INT,
nome VARCHAR(50),
FOREIGN KEY(ID_esta) REFERENCES estado (ID_esta)
);

CREATE TABLE IF NOT EXISTS avaliacao_sistema (
nota DECIMAL(1),
comentario VARCHAR(250)
);

CREATE TABLE IF NOT EXISTS endereço (
ID_ende INT PRIMARY KEY,
ID_cida INT,
bairro VARCHAR(20),
cep CHAR(8),
logradouro VARCHAR(100),
nº INTEGER,
complemento VARCHAR(50),
FOREIGN KEY(ID_cida) REFERENCES cidade (ID_cida)
);

CREATE TABLE IF NOT EXISTS supermecado (
ID_supe INT PRIMARY KEY,
ID_ende INT,
nome VARCHAR(20),
unidade VARCHAR(20),
logo INT NOT NULL,
FOREIGN KEY(ID_ende) REFERENCES endereço (ID_ende)
);

CREATE TABLE IF NOT EXISTS pessoa (
ID_pess VARCHAR(10) PRIMARY KEY,
ID_ende INT,
nome VARCHAR(30),
login VARCHAR(10),
senha VARCHAR(10),
nivel INT(),
FOREIGN KEY(ID_ende) REFERENCES endereço (ID_ende)
);

CREATE TABLE IF NOT EXISTS telefone (
telefone_PK INT NOT NULL PRIMARY KEY,
telefone CHAR(14)
);

CREATE TABLE IF NOT EXISTS email (
ID_pess_FK VARCHAR(10),
email VARCHAR(20),
FOREIGN KEY(ID_pess_FK) REFERENCES pessoa (ID_pess)
);

CREATE TABLE IF NOT EXISTS lista_de_compras (
ID_list INT PRIMARY KEY,
ID_pess VARCHAR(10),
nome VARCHAR(15),
dataCria DATE,
dataFim DATE,
dataLemb DATE,
FOREIGN KEY(ID_pess) REFERENCES pessoa (ID_pess)
);

CREATE TABLE IF NOT EXISTS avalia (
nota DECIMAL(1),
Atributo2 VARCHAR(250),
ID_supe VARCHAR(10),
ID_pord VARCHAR(10),
ID_pess VARCHAR(10)/*falha: chave estrangeira*//*falha: chave estrangeira*//*falha: chave estrangeira*/
);

CREATE TABLE IF NOT EXISTS venda (
ID_supe INT,
ID_pord INT,
valido VARCHAR(10),
preço VARCHAR(10),
FOREIGN KEY(ID_supe) REFERENCES supermecado (ID_supe)
);

CREATE TABLE IF NOT EXISTS venda_atacado (
ID_supe INT,
ID_pord INT,
valido INTEGER,
preço VARCHAR(10),
quantidade VARCHAR(10),
FOREIGN KEY(ID_supe) REFERENCES supermecado (ID_supe)
);

CREATE TABLE IF NOT EXISTS contem (
ID_list INT,
ID_pord INT,
PRIMARY KEY(ID_list,ID_pord)
);

CREATE TABLE IF NOT EXISTS produto (
ID_pord INT PRIMARY KEY,
nome VARCHAR(20),
tamanho INT NULL,
marca VARCHAR(10) NULL,
validado VARCHAR(10),
tipoMedida VARCHAR(10),
quantidade VARCHAR(10),
possui_ID_pord INT NOT NULL
);

ALTER TABLE venda ADD FOREIGN KEY(ID_pord) REFERENCES produto (ID_pord);
ALTER TABLE venda_atacado ADD FOREIGN KEY(ID_pord) REFERENCES produto (ID_pord)
