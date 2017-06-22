# TRABALHO 01:  Cesta De Compras

Trabalho desenvolvido durante a disciplina de BD

# Sumário

<!---A Cesta de Compras é um sistema de banco de dados para apoiar o consumidor no planejamento da compra de produtos, tendo como sua principal função: consulta de tabelas de pesquisas de produtos.--->
A Cesta de Compras é um sistema de banco de dados para apoiar o consumidor no planejamento da compra de produtos, tendo como sua principal função: consulta de tabelas de pesquisas de produtos. Para que essas atividades sejam realizadas, é necessário acessar as informações acerca dos estabelecimentos de venda e mantê-las atualizadas. Devem ser fornecidas facilidades de listagem das consultas de produtos, utilizando especificações como marcas, tipo do produto (alimento, bebida, etc), preço e local. O sistema deve gerar relatórios de acordo com a demanda de informações e parâmetros.

### 1	COMPONENTES<br>
Integrantes do grupo:<br>
Eduardo Couto eduardocoouto@gmail.com<br>
Edmiltho Santos edmiltho@hotmail.com<br>
Igor Barcellos Caniçali igorcanicali@gmail.com<br>

### 2	INTRODUÇÃO E MOTIVAÇAO<br>
Este documento contém a especificação do projeto do banco de dados <nome do projeto> 
<br>e motivação da escolha realizada. <br>

### 3	MINI-MUNDO<br>

<!---Descrever o mini-mundo! (Não deve ser maior do que 30 linhas) <br>
Entrevista com o usuário e identificação dos requisitos.<br>
Descrição textual das regras de negócio definidas como um  subconjunto do mundo real 
cujos elementos são propriedades que desejamos incluir, processar, armazenar, 
gerenciar, atualizar, e que descrevem a proposta/solução a ser desenvolvida.--->

O grupo deseja criar um sistema de informação para ajudar o civil comum a planejar melhor suas compras com mais facilidade e gastar menos dinheiro. Trata-se de um banco de dados cujo principal serviço é delegar informações e comparativos de produtos.

O usuário faz o login antes de entrar no sistema. Se ele não tiver deverá fazer o cadastro. O usuário pode criar listas, definindo nome, e estabelecimentos que serão usados na busca por produtos. O usuário poderá adicionar produtos a uma lista de compra. Podendo adicionar itens fora do catálogo do sistema, mas não armazenando o registro no sistema. Uma lista é composta de itens. Um item pode ter categoria, preço, histórico, e estabelecimentos com o mesmo disponível. Deverá ter uma tela com informações de listas já criadas no sistema e uma tela para o controle e informações de uma lista. A tela de informações da lista deverá mostrar gastos com itens por categoria, melhor estabelecimento para compras, como chegar no estabelecimento sugerido. Deverá mostrar o melhor dia para fazer compras. Podendo criar um lembrete para o usuário lembrar de fazer as compras.
 
O usuário utilizará uma lista para o auxiliar na hora da compra. O sistema deve ajuda-lo mostrando os itens da lista e mostrando o valor total da compra em tempo real. O usuário poderá colocar a quantidade em cada item. No final da compra o usuário precisa concluir a compra no aplicativo. A lista precisa ser registrada no histórico sendo disponível para consulta do usuário. O usuário poderá dar sugestões para o sistema, como itens e serviços. 
 
O sistema deve registrar o mesmo item de vários estabelecimentos diferentes, o preço e localidade, avaliação de usuários que pode ser classificação com ou sem comentário, e criar tabelas comparando os dados obtidos, a fim de que, no ato de consulta, possam ser verificadas facilmente as informações requeridas. O sistema utilizará os dados das compras concluídas dos usuários para melhorar a confiabilidade dos preços indicados.
 
A coleta de dados será feita em produtos mais populares como por exemplo: bebidas alcoólicas, refrigerantes, lanches e eletrodomésticos, visto que não há uma maneira certa de conseguir as informações de todos os produtos, necessitando então de um foco.


### 4	RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>
Neste ponto a codificação não e necessária, somente as ideias de telas devem ser criadas, o princípio aqui é pensar na criação da interface para identificar possíveis informações a serem armazenadas ou descartadas <br>

<!--Sugestão: https://balsamiq.com/products/mockups/<br>-->

![Alt text](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/pics/telasPrincipais.png?raw=true "Title")<br>
Link para telas mobile: https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/asets/Telas_Mobile.pdf
Link para telas desktop:
https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/asets/telas_desktop.pdf

#### 4.1 TABELA DE DADOS DO SISTEMA:
Esta tabela deve conter todos os atributos do sistema e um mínimo de 10 linhas.
![Alt text](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/pics/TabelaGeral.png?raw=true "Tabela de dados Gerais")
link para a tabela: https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/asets/TabelaGeralDadosCestadeCompras.xlsx
<!--(esta tabela tem a intenção de simular um relatório com todos os dados que serão armazenados e deve ser criada antes do modelo conceitual)-->

### 5	MODELO CONCEITUAL<br>
    5.1 NOTACAO ENTIDADE RELACIONAMENTO
![Alt text](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/pics/ModeloConceitual.jpg?raw=true "Modelo Conceitual")
    
 <!--   5.2 NOTACAO UML (Caso esteja fazendo a disciplina de analise)-->

#### 5.1 Validação do Modelo Conceitual
   <br>[GeMan]: Olavo Curatola, Gabriel Marchezi e Helen França.
   <br>[Transpoint]: Serenna Ferrari, André Martins, Elimar Macena, Hellesandro Gonzaga.
-->
#### 5.2 DECISÕES DE PROJETO
<!--    [atributo]: [descrição da decisão]
    
    EXEMPLO:
    a) Campo endereço: em nosso projeto optamos por um campo multivalorado e composto, pois a empresa 
    pode possuir para cada departamento mais de uma localização... 
    b) justifique!
-->
a) o campo de preço foi optado por ser armazenado em um relacionamento entre o produto e o supermecado pois varios supermecaods podem vender o mesmo produto e com preços diferentes.
b) atendendo a criterio do professor os dados de pais ate bairro foram armazenados em tabelas propias
c) as avaliações foram feitas separadas para evitar problemas com o destino dela
d) a avaliação do sistema nao possui o usuario para ser anonima

#### 5.3 DESCRIÇÃO DOS DADOS 
<!--    [objeto]: [descrição do objeto]
    
    EXEMPLO:
    CLIENTE: Tabela que armazena as informações relativas ao cliente<br>
    CPF: campo que armazena o número de Cadastro de Pessoa Física para cada cliente da empresa.<br>
-->
Tabela: agenda_lembrete 	- agenda de lembretes<br>
    Campo: ID_list      	- lista a ser lembrada<br>
    Campo: data         	- data a ser lembrada<br>
<br>
Tabela: avaliacao_produto	- avaliação de um produtp<br>
    Campo: ID_pess		- pessoa que esta avaliando<br>
    Campo: ID_pord		- produto que esta sendo avaliado<br>
    Campo: comentario		- comentario da avaliaçao<br>
    Campo: nota			- nota<br>
<br>
Tabela: avaliacao_sistema	- avaliação do sistema<br>
    Campo: comentario		- comentario<br>
    Campo: nota			- nora<br>
<br>
Tabela: avaliacao_supermecado	- avaliação do supermecado<br>
    Campo: ID_pess		- pessoa que esta avaliando<br>
    Campo: ID_supe		- supermecado que esta sendo avaliado<br>
    Campo: nota			- nota da avaliaçao<br>
    Campo: comentario		- comentario da avaliaçao<br>
<br>
Tabela: bairro			- bairro<br>
    Campo: ID_bair		- ID<br>
    Campo: ID_cida		- ID da cidade onde o bairro está<br>
    Campo: nome			- nome do bairro<br>
<br>
Tabela: contato			- tabla de contatos<br>
    Campo: ID_pess		- a pessoa<br>
    Campo: ID_tcon		- tipo de contato<br>
    Campo: descricao		- valor do dado(numero do telefone, e-mail, nome no face...)<br>
<br>
Tabela: contem_produto	- o que esta contido na lista de compras<br>
    Campo: ID_list		- a lista a qual se refere<br>
    Campo: ID_pord		- o produto a qual se refere<br>
    Campo: quantidade		- a quantidade de produto existente na lista<br>
<br>
Tabela: endereço		- guarda o endereço<br>
    Campo: ID_bair		- o bairro<br>
    Campo: ID_ende		- ID<br>
    Campo: cep			- cep<br>
    Campo: complemento		- complemento<br>
    Campo: logradouro		- rua/av/beco...<br>
    Campo: nº			- numero<br>
<br>
Tabela: estado			- guarda o estado<br>
    Campo: ID_esta		- ID<br>
    Campo: ID_pais		- pais onde o estado esta<br>
    Campo: nome			- nome do estado<br>
<br>
Tabela: lista_de_compras	- lista de compras<br>
    Campo: ID_list		- ID<br>
    Campo: ID_pess		- pessoa que detem a lista<br>
    Campo: nome			- nome da lista<br>
    Campo: dataCria		- data de criação<br>
    Campo: dataFim		- data que a lista finda<br>
<br>
Tabela: marca			- tabela que armazena as marcas<br>
    Campo: ID_marc		- ID<br>
    Campo: nome			- nome da marca<br>
<br>
Tabela: pais			- Paises<br>
    Campo: ID_pais		- ID<br>
    Campo: nome			- nome<br>
<br>
Tabela: pessoa			- pessoa<br>
    Campo: ID_ende		- endereço da pessoa<br>
    Campo: ID_pess		- ID<br>
    Campo: data_nas		- data de nascimento<br>
    Campo: login		- loguin do ususario<br>
    Campo: nivel		- niel de confiança do usuario<br>
    Campo: nome			- nome<br>
    Campo: senha		- hash da senha<br>
    Campo: sexo			- sexo do ser<br>
<br>
Tabela: produto			- produtos<br>
    Campo: ID_marc		- marca do produto<br>
    Campo: ID_pord		- ID<br>
    Campo: ID_tmed		- tipo de medida da variavel(kg, L, unidades, bits...)<br>
    Campo: nome			- nome do prodto<br>
    Campo: tamanho		- tamanho  quanto da unidade de medida tem(5(L), 1M(bit)...)<br>
<br>
Tabela: supermercado		- supermecado<br>
    Campo: ID_ende		- endereço<br>
    Campo: ID_supe		- ID<br>
    Campo: logo			- logo(fig)<br>
    Campo: nome			- nome<br>
    Campo: unidade		- unidade<br>
<br>
Tabela: tipo_contato		- tipo de contato<br>
    Campo: ID_tcon		- ID<br>
    Campo: tipo			- descrição do tipo(telefone movel, telefone residencial, fax, facebook, id no ICQ...)<br>
<br>
Tabela: tipo_medida		- tipo de medida<br>
    Campo: ID_tmed		- ID<br>
    Campo: nome			- texto que descreve(L, KG, T, Lb, anos luz...)<br>
<br>
Tabela: venda_atacado_atacado	- dedicada a aramzenar o preço do produto caso seja vendido mais barato em atacado<br>
    Campo: ID_pord		- produto<br>
    Campo: ID_supe		- supermecado<br>
    Campo: preco		- preço<br>
    Campo: valido		- se o preço está certo<br>
<br>

### 6	MODELO LÓGICO<br>

        a) inclusão do modelo lógico do banco de dados
        b) verificação de correspondencia com o modelo conceitual
        (não serão aceitos modelos que não estejam em conformidade)
![Alt text](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/pics/ModeloLogico.jpg?raw=true "Modelo Conceitual")

### 7	MODELO FÍSICO<br>
        a) inclusão das instruções de criacão das estruturas DDL 
        (criação de tabelas, alterações, etc..)<br/>
    
[Modelo fisico link](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/brModelo30/Modelos/3%20-%20Fisico/01-Script_CriaTabelas.sql?raw=true "Modelo fisico")
        
        Entrega até este ponto em: (Data a ser definida)

### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>

#### 8.1 DETALHAMENTO DAS INFORMAÇÕES
        Detalhamento sobre as informações e processo de obtenção ou geração dos dados.
        Referenciar todas as fontes referentes a :
        a) obtenção dos dados
        b) obtenção de códigos reutilizados
        c) fontes de estudo para desenvolvimento do projeto


#### 8.2 INCLUSÃO DO SCRIPT DE INSERÇÃO DOS DADOS

[insert link](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/brModelo30/Modelos/3%20-%20Fisico/01-Script_InsertTabelas.sql?raw=true "insert")<br/>
        a) inclusão das instruções de inserção dos dados nas tabelas criadas pelo script de modelo físico<br/>
        b) inclusão das instruções para execução de outros procedimentos necessários (caso existam)

#### 8.3 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELA E INSERÇÃO DOS DADOS
 
[insert + create link]https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/brModelo30/Modelos/3%20-%20Fisico/CestadeComprasCreateInsert.sql?raw=true "insert + crate")<br/> 
        a) Junção dos scripts anteriores em um único script <br/>
        (tabelas e estruturas de dados + dados a serem inseridos)<br/>
        b) Criar um novo banco de dados para testar a restauracao <br/>
        (em caso de falha na restauração o grupo não pontuará neste quesito)
        
        
        Entrega até este ponto em: (Data a ser definida)


### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>

```
select*from tipo_medida;
```
![Alt text](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/pics/consulta9.1-1.PNG?raw=true "Title")<br>
```
select*from marca;
```
![Alt text](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/pics/consulta9.1-2.PNG?raw=true "Title")<br>
```
select*from pais;
```
![Alt text](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/pics/consulta9.1-3.PNG?raw=true "Title")<br>
```
select*from estado;
```
![Alt text](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/pics/consulta9.1-4.PNG?raw=true "Title")<br>
```
select*from cidade;
```
![Alt text](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/pics/consulta9.1-5.PNG?raw=true "Title")<br>
```
select*from bairro;
```
![Alt text](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/pics/consulta9.1-6.PNG?raw=true "Title")<br>
```
select*from avalia_sys;
```
![Alt text](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/pics/consulta9.1-7.PNG?raw=true "Title")<br>
```
select*from endereco;
```
![Alt text](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/pics/consulta9.1-8.PNG?raw=true "Title")<br>
```
select*from supermercado;
```
![Alt text](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/pics/consulta9.1-9.PNG?raw=true "Title")<br>
```
select*from pessoa;
```
![Alt text](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/pics/consulta9.1-10.PNG?raw=true "Title")<br>
```
select*from tipo_contato;
```
![Alt text](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/pics/consulta9.1-11.PNG?raw=true "Title")<br>
```
select*from contato;
```
![Alt text](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/pics/consulta9.1-12.PNG?raw=true "Title")<br>
```
select*from lista_de_compras;
```
![Alt text](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/pics/consulta9.1-13.PNG?raw=true "Title")<br>
```
select*from produto;
```
![Alt text](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/pics/consulta9.1-14.PNG?raw=true "Title")<br>
```
select*from data_Lemb;
```
![Alt text](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/pics/consulta9.1-15.PNG?raw=true "Title")<br>
```
select*from avaliacao_produto;
```
![Alt text](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/pics/consulta9.1-16.PNG?raw=true "Title")<br>
```
select*from avaliacao_supermercado;
```
![Alt text](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/pics/consulta9.1-17.PNG?raw=true "Title")<br>
```
select*from venda_varejo;
```
![Alt text](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/pics/consulta9.1-18.PNG?raw=true "Title")<br>
```
select*from venda_atacado;
```
![Alt text](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/pics/consulta9.1-19.PNG?raw=true "Title")<br>
```
select*from contem_produto;
```
![Alt text](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/pics/consulta9.1-20.PNG?raw=true "Title")<br>
<!--
```
select * from tipo_medida;
```
![Alt text](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/pics/Consulta9.1-1.PNG?raw=true "Title")<br>
```
select * from marca;
```
![Alt text](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/pics/Consulta9.1-2.PNG?raw=true "Title")<br>
```
select * from pais;
```
![Alt text](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/pics/Consulta9.1-3.PNG?raw=true "Title")<br>
```
select * from estado;
```
![Alt text](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/pics/Consulta9.1-4.PNG?raw=true "Title")<br>
```
select * from cidade;
```
![Alt text](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/pics/Consulta9.1-5.PNG?raw=true "Title")<br>
```
select * from bairro;
```
![Alt text](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/pics/Consulta9.1-6.PNG?raw=true "Title")<br>
```
select * from avalia_sys;
```
![Alt text](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/pics/Consulta9.1-7.PNG?raw=true "Title")<br>
```
select * from endereco;
```
![Alt text](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/pics/Consulta9.1-8.PNG?raw=true "Title")<br>
```
select * from supermercado;
```
![Alt text](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/pics/Consulta9.1-9.PNG?raw=true "Title")<br>
```
select * from pessoa;
```
![Alt text](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/pics/Consulta9.1-10.PNG?raw=true "Title")<br>
```
select * from tipo_contato;
```
![Alt text](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/pics/Consulta9.1-11.PNG?raw=true "Title")<br>
```
select * from contato;
```
![Alt text](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/pics/Consulta9.1-12.PNG?raw=true "Title")<br>
```
select * from lista_de_compras;
```
![Alt text](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/pics/Consulta9.1-13.PNG?raw=true "Title")<br>
```
select * from produto;
```
![Alt text](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/pics/Consulta9.1-14.PNG?raw=true "Title")<br>
```
select * from avalia;
```
![Alt text](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/pics/Consulta9.1-15.PNG?raw=true "Title")<br>
```
select * from venda;
```
![Alt text](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/pics/Consulta9.1-16.PNG?raw=true "Title")<br>
```
select * from venda_atacado;
```
![Alt text](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/pics/Consulta9.1-17.PNG?raw=true "Title")<br>
```
select * from contem;
```
![Alt text](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/pics/Consulta9.1-18.PNG?raw=true "Title")<br>
-->
<!--        Entrega até este ponto em: (Data a ser definida)<br/>-->
#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 3)<br>
```
select pessoa.nome, tipo_contato.tipo, contato.descricao as valor
from contato, tipo_contato, pessoa
where contato.id_tcon = tipo_contato.id_tcon and contato.id_pess = pessoa.id_pess;
```
![Alt text](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/pics/Consulta9.2-1.PNG?raw=true "Title")<br>
```
select supermercado.nome, supermercado.unidade, bairro.nome as bairro, cidade.nome as cidade
from supermercado, endereco, bairro, cidade
where supermercado.id_ende = endereco.id_ende and endereco.id_bair = bairro.id_bair and bairro.id_cida = cidade.id_cida;
```
![Alt text](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/pics/Consulta9.2-2.PNG?raw=true "Title")<br>
```
select lista_de_compras.nome as lista, produto.nome as produto, contem.quantidade
from contem, lista_de_compras, produto
where contem.id_list = lista_de_compras.id_list and contem.id_prod = produto.id_prod;
```
![Alt text](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/pics/Consulta9.2-3.PNG?raw=true "Title")<br>
```
select *
from avalia_sys
where nota > 5;
```
![Alt text](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/pics/Consulta9.2-4.PNG?raw=true "Title")<br>
```
select pessoa.nome as usuario, produto.nome as produto, supermercado.nome as supermercado, avalia.nota, avalia.comentario
from avalia, produto, pessoa, supermercado
where avalia.id_pess = pessoa.id_pess and avalia.id_prod = produto.id_prod and avalia.id_supe = supermercado.id_supe and nota between 3 and 7;
```
![Alt text](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/pics/Consulta9.2-5.PNG?raw=true "Title")<br>

#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E CAMPOS RENOMEADOS (Mínimo 2)<br>
```
SELECT nota as avaliação, comentario as opinião, id_supe, id_prod, id_pess
	FROM avalia;
```
![Alt text](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/pics/Consulta9.3-1.PNG?raw=true "Title")<br>
```
SELECT id_list, id_prod, quantidade, quantidade*2
	FROM public.contem;
```
![Alt text](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/pics/Consulta9.3-2.PNG?raw=true "Title")<br>
```
SELECT id_prod, id_tmed, id_marc, nome, tamanho FROM public.produto where id_marc=9 or id_marc=4
```
![Alt text](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/pics/Consulta9.3-3.PNG?raw=true "Title")<br>
```
SELECT id_prod, id_tmed, id_marc, nome, tamanho FROM public.produto where id_tmed=2 and id_marc=3
```
![Alt text](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/pics/Consulta9.3-4.PNG?raw=true "Title")<br>
```
SELECT id_prod, id_tmed, id_marc, nome as produto, tamanho FROM public.produto where id_tmed=5 or id_marc=6 or id_marc=7
```
![Alt text](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/pics/Consulta9.3-5.PNG?raw=true "Title")<br>
#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE (Mínimo 3) <br>
```
SELECT * FROM PRODUTO WHERE nome LIKE '%Carne%';
```
![Alt text](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/pics/9-4-1.png?raw=true "Title")<br>
```
SELECT  comentario FROM avalia_sys WHERE comentario LIKE '%bom%';
```
![Alt text](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/pics/9-4-2.png?raw=true "Title")<br>
```
SELECT  * FROM supermercado where nome like '%mart%' and unidade like 'V%';
```
![Alt text](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/pics/9-4-3.png?raw=true "Title")<br>
```
SELECT  * FROM supermercado where nome like '__ro__';
```
![Alt text](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/pics/9-4-4.png?raw=true "Title")<br>
```
SELECT  * FROM lista_de_compras as LC WHERE LC.nome like '%ca_a%';
```
![Alt text](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/pics/9-4-5.png?raw=true "Title")<br>

#### 9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>
#### 9.6	CONSULTAS COM JUNÇÃO E ORDENAÇÃO (Todas Junções)<br>
        Entrega até este ponto em: (Data a ser definida)<br/>
#### 9.7	CONSULTAS COM GROUP BY (Mínimo 5)<br>
#### 9.8	CONSULTAS COM LEFT E RIGHT JOIN (Mínimo 4)<br>
#### 9.9	CONSULTAS COM SELF JOIN E VIEW (Todas Possíveis)<br>
#### 9.10	SUBCONSULTAS (Mínimo 3)<br>
        Entrega até este ponto em: (Data a ser definida)
### 10	ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES PARA APRESENTAÇAO FINAL (Mínimo 6 e Máximo 10)<br>
### 11	TUTORIAL COMPLETO DE PASSOS PARA RESTAURACAO DO BANCO E EXECUCAO DE PROCEDIMENTOS ENVOLVIDOS NO TRABALHO PARA OBTENÇÃO DOS RESULTADOS<br>
        a) Outros grupos deverão ser capazes de restaurar o banco 
        b) executar todas as consultas presentes no trabalho
        c) executar códigos que tenham sido construídos para o trabalho 
        d) realizar qualquer procedimento executado pelo grupo que desenvolveu o trabalho
        
### 12   DIFICULDADES ENCONTRADAS PELO GRUPO<br>
### 13   TRABALHO DE MINERAÇÃO DE DADOS
        a) captura das informaçõs
        b) integração com banco de dados em desenvolvimento
        c) atualização da documentação do trabalho incluindo a mineração de dados
        
### 14  FORMATACAO NO GIT: https://help.github.com/articles/basic-writing-and-formatting-syntax/

### 15 Backup completo do banco de dados postgres 
    a) deve ser realizado no formato "backup" 
        (Em Dump Options #1 Habilitar opções Don't Save Owner e Privilege)
    b) antes de postar o arquivo no git o mesmo deve ser testado/restaurado por outro grupo de alunos/dupla
    c) informar aqui o grupo de alunos/dupla que realizou o teste.
    
### OBSERVAÇÕES IMPORTANTES

#### Em tese todos os arquivos do trabalho devem ser compartilhados no git 
1. Caso existam arquivos com conteúdos sigilosos, comunicar o professor que definirá em conjunto com o grupo a melhor forma de armazenamento do arquivo.

#### Todos os grupos deverão fazer Fork deste repositório e dar permissões administrativas ao usuário deste GIT, para acompanhamento do trabalho.

#### Os usuários criados no GIT devem possuir o nome de identificação do aluno (não serão aceitos nomes como Eu123, meuprojeto, pro456, etc). Em caso de dúvida comunicar o professor.


