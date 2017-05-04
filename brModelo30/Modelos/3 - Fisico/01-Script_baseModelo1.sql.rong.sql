CREATE TABLE pais (
ID_pais INT PRIMARY KEY,
nome VARCHAR(100)
)

CREATE TABLE estado (
ID_esta INT PRIMARY KEY,
ID_pais INT,
nome VARCHAR(100),
FOREIGN KEY(ID_pais) REFERENCES pais (ID_pais)
)

CREATE TABLE cidade (
ID_cida INT PRIMARY KEY,
ID_esta INT,
nome VARCHAR(100),
FOREIGN KEY(ID_esta) REFERENCES estado (ID_esta)
)

CREATE TABLE avaliacao sistema (
nota INT,
comentario VARCHAR(250)
)

CREATE TABLE endereço (
ID_ende INT PRIMARY KEY,
ID_cida INT,
bairro VARCHAR(100),
cep CHAR(8),
logradouro VARCHAR(100),
nº INT,
complemento VARCHAR(100),
FOREIGN KEY(ID_cida) REFERENCES cidade (ID_cida)
)

CREATE TABLE supermecado (
ID_supe INT PRIMARY KEY,
ID_ende INT,
nome VARCHAR(100),
unidade VARCHAR(100),
logo BIGINT(10),
FOREIGN KEY(ID_ende) REFERENCES endereço (ID_ende)
)

CREATE TABLE pessoa (
ID_pess INT PRIMARY KEY,
ID_ende INT,
nome VARCHAR(100),
login VARCHAR(50),
senha VARCHAR(50),
nivel INT,
FOREIGN KEY(ID_ende) REFERENCES endereço (ID_ende)
)

CREATE TABLE telefone (
telefone_PK INT PRIMARY KEY,
telefone CHAR(14)
)

CREATE TABLE e-mail (
ID_pess_FK INT,
e-mail VARCHAR(150),
FOREIGN KEY(ID_pess_FK) REFERENCES pessoa (ID_pess)
)

CREATE TABLE lista de compras (
ID_list INT PRIMARY KEY,
ID_pess INT,
nome VARCHAR(100),
dataCria DATE,
dataFim DATE,
dataLemb DATE,
FOREIGN KEY(ID_pess) REFERENCES pessoa (ID_pess)
)

CREATE TABLE avalia (
nota INT,
Atributo2 VARCHAR(250),
ID_supe INT,
ID_pord INT,
ID_pess INT,
FOREIGN KEY(ID_supe) REFERENCES supermecado (ID_supe),
FOREIGN KEY(ID_pess) REFERENCES pessoa (ID_pess)
)

CREATE TABLE venda (
ID_supe INT,
ID_pord INT,
valido INT,
preço INT,
FOREIGN KEY(ID_supe) REFERENCES supermecado (ID_supe)
)

CREATE TABLE venda_atacado (
ID_supe INT,
ID_pord INT,
valido INT,
preço INT,
quantidade INT,
FOREIGN KEY(ID_supe) REFERENCES supermecado (ID_supe)
)

CREATE TABLE contem (
ID_list INT,
ID_pord INT,
quantidade INT,
PRIMARY KEY(ID_list,ID_pord)
)

CREATE TABLE produto (
ID_pord INT PRIMARY KEY,
nome VARCHAR(100),
tamanho INT,
marca VARCHAR(100),
validado INT,
tipoMedida VARCHAR(10),
possui_ID_pord INT
)

ALTER TABLE avalia ADD FOREIGN KEY(ID_pord) REFERENCES produto (ID_pord)
ALTER TABLE venda ADD FOREIGN KEY(ID_pord) REFERENCES produto (ID_pord)
ALTER TABLE venda_atacado ADD FOREIGN KEY(ID_pord) REFERENCES produto (ID_pord)
