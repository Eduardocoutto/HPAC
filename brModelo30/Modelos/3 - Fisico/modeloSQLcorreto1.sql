CREATE TABLE pais (
ID_pais NUMERIC(10) PRIMARY KEY,
nome VARCHAR(50)
);

INSERT INTO pais (ID_pais, nome)
VALUES (1234567890, 'João'),
		(1234567890, 'Maria'),
        (1234567890, 'Pera'),
        (1234567890, 'Pedro'),
        (1234567890, 'Bruno');

select * from pais

CREATE TABLE estado (
ID_esta NUMERIC(10) PRIMARY KEY,
ID_pais NUMERIC(10),
nome VARCHAR(50),
FOREIGN KEY(ID_pais) REFERENCES pais (ID_pais)
);

CREATE TABLE cidade (
ID_cida NUMERIC(10) PRIMARY KEY,
ID_esta NUMERIC(10),
nome VARCHAR(50),
FOREIGN KEY(ID_esta) REFERENCES estado (ID_esta)
);

CREATE TABLE avaliacao_sistema (
nota DECIMAL(1),
comentario VARCHAR(250)
);

CREATE TABLE endereço (
ID_ende NUMERIC(10) PRIMARY KEY,
ID_cida NUMERIC(10),
bairro VARCHAR(20),
cep CHAR(8),
logradouro VARCHAR(100),
nº INTEGER,
complemento VARCHAR(50),
FOREIGN KEY(ID_cida) REFERENCES cidade (ID_cida)
);

CREATE TABLE supermecado (
ID_supe NUMERIC(10) PRIMARY KEY,
ID_ende NUMERIC(10),
nome VARCHAR(20),
unidade VARCHAR(20),
logo INT NOT NULL,
FOREIGN KEY(ID_ende) REFERENCES endereço (ID_ende)
);

CREATE TABLE pessoa (
ID_pess VARCHAR(10) PRIMARY KEY,
ID_ende NUMERIC(10),
nome VARCHAR(30),
login VARCHAR(10),
senha VARCHAR(10),
nivel DECIMAL(10),
FOREIGN KEY(ID_ende) REFERENCES endereço (ID_ende)
);

CREATE TABLE telefone (
telefone_PK INT NOT NULL PRIMARY KEY,
telefone CHAR(14)
);

CREATE TABLE email (
email_PK INT NOT NULL PRIMARY KEY,
ID_pess_FK VARCHAR(10),
email VARCHAR(20),
FOREIGN KEY(ID_pess_FK) REFERENCES pessoa (ID_pess)
);

CREATE TABLE lista_de_compras (
ID_list NUMERIC(10) PRIMARY KEY,
ID_pess VARCHAR(10),
nome VARCHAR(15),
dataCria DATE,
dataFim DATE,
dataLemb DATE,
FOREIGN KEY(ID_pess) REFERENCES pessoa (ID_pess)
);

CREATE TABLE avalia (
nota DECIMAL(1),
Atributo2 VARCHAR(250),
ID_supe VARCHAR(10),
ID_pord VARCHAR(10),
ID_pess VARCHAR(10)/*falha: chave estrangeira*//*falha: chave estrangeira*//*falha: chave estrangeira*/
);

CREATE TABLE venda (
ID_supe NUMERIC(10),
ID_pord NUMERIC(10),
valido VARCHAR(10),
preço VARCHAR(10),
FOREIGN KEY(ID_supe) REFERENCES supermecado (ID_supe)
);

CREATE TABLE venda_atacado (
ID_supe NUMERIC(10),
ID_pord NUMERIC(10),
valido INTEGER,
preço VARCHAR(10),
quantidade VARCHAR(10),
FOREIGN KEY(ID_supe) REFERENCES supermecado (ID_supe)
);

CREATE TABLE contem (
ID_list NUMERIC(10),
ID_pord NUMERIC(10),
PRIMARY KEY(ID_list,ID_pord)
);

CREATE TABLE produto (
ID_pord NUMERIC(10) PRIMARY KEY,
nome VARCHAR(20),
tamanho INTEGER,
marca VARCHAR(10),
validado VARCHAR(10),
tipoMedida VARCHAR(10),
quantidade VARCHAR(10),
possui_ID_pord INT NOT NULL
);

ALTER TABLE venda ADD FOREIGN KEY(ID_pord) REFERENCES produto (ID_pord);
ALTER TABLE venda_atacado ADD FOREIGN KEY(ID_pord) REFERENCES produto (ID_pord)