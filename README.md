# TRABALHO 02:  Revisão - HPAC - Histórico de Pacientes

Trabalho desenvolvido durante a disciplina de BD

# Sumário

Histórico de Pacientes é um sistema de banco de dados pessoal do paciente. O sistema tem como sua principal função: Registrar as consultas, exames e laudos, realizadas pelo paciente com diversos médicos e especialistas ao longo de sua vida. Serão registrados no sistema dados tais como; nome do médico, especialidade, data da consulta, CRM, diagnóstico, solicitações e resultados de exames, laudos e pareceres.

### 1	COMPONENTES<br>
Integrantes do grupo:<br>
Eduardo Couto eduardocoouto@gmail.com<br>
Olavo Curatola olavo.curatola@gmail.com<br>
Lucas Garcia lucasoliveiragarcia@live.com<br>

### 2	INTRODUÇÃO E MOTIVAÇAO<br>
Este documento contém a especificação do projeto do banco de dados do HPAC<br>
A principal motivação para o desenvolvimento desse sistema é possibilitar uma maior segurança no uso de informações do paciente, no tocante a qualidade e confiabilidade da informação e tambem quanto a permissão de acesso a dados tão sensíveis. A idéia é construir ao longo da vida das pessoas um dossiê com todos os registros de seus problemas de saúde, com os resultados de exames e teste a cada momento de sua vida. Este dossiê deverá ser portado e gerenciado pelo paciente, podendo ser disponibilizado ou acessado por um médico sob sua autorização<br>

### 3	MINI-MUNDO<br>

<!---Descrever o mini-mundo! (Não deve ser maior do que 30 linhas) <br>
Entrevista com o usuário e identificação dos requisitos.<br>
Descrição textual das regras de negócio definidas como um  subconjunto do mundo real 
cujos elementos são propriedades que desejamos incluir, processar, armazenar, 
gerenciar, atualizar, e que descrevem a proposta/solução a ser desenvolvida.--->

O grupo deseja criar um sistema de informação para gerenciar as informações relacionadas às consultas médicas que as pessoas fazem  ao longo da vida, o intuito é que as mesmas tenham suas informações documentadas em nosso sistema e apresentem ao seu médico e evitem de
ter que falar todo o seu histórico a cada médico que for consultado.

O usuário deve fazer o login e digitar sua senha para entrar no sistema, caso já esteja cadastrado. Caso contrário, deverá fazer o cadastro, fornecendo nome completo, CPF, Identidade, endereço, telefone, e-mail, criando sua senha pessoal. Em seguida terá acesso as funcionalidade de criação, consulta e atualização de seu histórico. Podendo incluir exames, radiografias, tomografias, ressonâncias magnética, diagnósticos, laudos e comentários pertinentes. 
Além disso, o sistema deverá registrar todo o receituário prescrito para o paciente, bem como eventuais internações clinicas ou hospitalares, cirurgias e de mais procedimentos médicos.
O paciente poderá a qualquer momento atualizar seu histórico com a inserção de dados de novas consultas e exames, assim como poderá inserir resultados de exames antigos que eventualmente encontre em seus arquivos pessoais (em papel), podendo voltar na linha do tempo para completar informações e dar maior consistência ao seu dossiê.
O sistema deverá ser multiplataforma com acesso por smartphones e computadores pessoais, com acesso em tempo integral. Além disso, deverá possibilitar o acesso rápido aos dados.
 




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
link para a tabela: https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/asets/TabelaGeralDadosCestadeCompras1.xlsx
<!--(esta tabela tem a intenção de simular um relatório com todos os dados que serão armazenados e deve ser criada antes do modelo conceitual)-->

### 5	MODELO CONCEITUAL<br>
    5.1 NOTACAO ENTIDADE RELACIONAMENTO
![Alt text](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/pics/modeloconceitualHPAC.png?raw=true "Modelo Conceitual")
    
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
    PACIENTE: Tabela que armazena as informações relativas ao paciente<br>
    CPF: campo que armazena o número de Cadastro de Pessoa Física de cada paciente.<br>
-->
Tabela: receita		 	- receita do paciente<br>
    Campo: ID_receita      	- ID<br>
    Campo: data         	- data<br>
<br>
Tabela: medico			- médico<br>
    Campo: ID_medico		- ID<br>
    Campo: nome			- nome<br>
<br>
Tabela: laudo			- laudo do paciente<br>
    Campo: ID_laudo		- ID<br>
    Campo: data			- data<br>
<br>
Tabela: Exame			- exame do paciente<br>
    Campo: IDExame		- ID<br>
    Campo: Data			- Data<br>
<br>
Tabela: Consulta		- consulta do paciente<br>
    Campo: Diagnostico		- Diagnóstico do médico sobre o paciente<br>
<br>
Tabela: paciente		- paciente<br>
    Campo: ID_paciente		- ID<br>
    Campo: identidade		- identidade<br>
    Campo: cpf			- CPF<br>
    Campo: nome			- nome<br>
    Campo: CPF			- CPF<br>
    Campo: data_nasc		- data<br>
    Campo: endereço		- endereço<br>
    Campo: telefone		- telefone<br>
    Campo: login		- login de acesso ao sistema<br>
    Campo: senha		- senha de acesso ao sistema<br>
<br>

### 6	MODELO LÓGICO<br>

        a) inclusão do modelo lógico do banco de dados
        b) verificação de correspondencia com o modelo conceitual
        (não serão aceitos modelos que não estejam em conformidade)
![Alt text](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/pics/modelologicoHPAC.png?raw=true "Modelo Conceitual")

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
select * from tipo_medida;
```
![Alt text](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/pics/consulta9.1-1.PNG?raw=true "Title")<br>
```
select * from marca;
```
![Alt text](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/pics/consulta9.1-2.PNG?raw=true "Title")<br>
```
select * from pais;
```
![Alt text](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/pics/consulta9.1-3.PNG?raw=true "Title")<br>
```
select * from estado;
```
![Alt text](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/pics/consulta9.1-4.PNG?raw=true "Title")<br>
```
select * from cidade;
```
![Alt text](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/pics/consulta9.1-5.PNG?raw=true "Title")<br>
```
select * from bairro;
```
![Alt text](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/pics/consulta9.1-6.PNG?raw=true "Title")<br>
```
select * from avalia_sys;
```
![Alt text](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/pics/consulta9.1-7.PNG?raw=true "Title")<br>
```
select * from endereco;
```
![Alt text](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/pics/consulta9.1-8.PNG?raw=true "Title")<br>
```
select * from supermercado;
```
![Alt text](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/pics/consulta9.1-9.PNG?raw=true "Title")<br>
```
select * from pessoa;
```
![Alt text](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/pics/consulta9.1-10.PNG?raw=true "Title")<br>
```
select * from tipo_contato;
```
![Alt text](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/pics/consulta9.1-11.PNG?raw=true "Title")<br>
```
select * from contato;
```
![Alt text](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/pics/consulta9.1-12.PNG?raw=true "Title")<br>
```
select * from lista_de_compras;
```
![Alt text](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/pics/consulta9.1-13.PNG?raw=true "Title")<br>
```
select * from produto;
```
![Alt text](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/pics/consulta9.1-14.PNG?raw=true "Title")<br>
```
select * from data_Lemb;
```
![Alt text](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/pics/consulta9.1-15.PNG?raw=true "Title")<br>
```
select * from avaliacao_produto;
```
![Alt text](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/pics/consulta9.1-16.PNG?raw=true "Title")<br>
```
select * from avaliacao_supermercado;
```
![Alt text](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/pics/consulta9.1-17.PNG?raw=true "Title")<br>
```
select * from venda_varejo;
```
![Alt text](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/pics/consulta9.1-18.PNG?raw=true "Title")<br>
```
select * from venda_atacado;
```
![Alt text](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/pics/consulta9.1-19.PNG?raw=true "Title")<br>
```
select * from contem_produto;
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










