# TRABALHO 01:  Cesta De Compras

Trabalho desenvolvido durante a disciplina de BD

#Sumário

<!---A Cesta de Compras é um sistema de banco de dados para apoiar o consumidor no planejamento da compra de produtos, tendo como sua principal função: consulta de tabelas de pesquisas de produtos.--->
A Cesta de Compras é um sistema de banco de dados para apoiar o consumidor no planejamento da compra de produtos, tendo como sua principal função: consulta de tabelas de pesquisas de produtos. Para que essas atividades sejam realizadas, é necessário acessar as informações acerca dos estabelecimentos de venda e mantê-las atualizadas. Devem ser fornecidas facilidades de listagem das consultas de produtos, utilizando especificações como marcas, tipo do produto (alimento, bebida, etc), preço e local. O sistema deve gerar relatórios de acordo com a demanda de informações e parâmetros.

###1	COMPONENTES<br>
Integrantes do grupo:<br>
Eduardo Couto<br>
Edmiltho Santos<br>
Igor Caniçali<br>

###2	INTRODUÇÃO E MOTIVAÇAO<br>
Este documento contém a especificação do projeto do banco de dados <nome do projeto> 
<br>e motivação da escolha realizada. <br>

###3	MINI-MUNDO<br>

<!---Descrever o mini-mundo! (Não deve ser maior do que 30 linhas) <br>
Entrevista com o usuário e identificação dos requisitos.<br>
Descrição textual das regras de negócio definidas como um  subconjunto do mundo real 
cujos elementos são propriedades que desejamos incluir, processar, armazenar, 
gerenciar, atualizar, e que descrevem a proposta/solução a ser desenvolvida.--->
O grupo deseja criar um sistema de informação para ajudar o civil comum a planejar melhor suas compras com mais facilidade e gastar menos dinheiro. Trata-se de um banco de dados cujo principal serviço é delegar informações e 
comparativos de produtos.

O sistema deve registrar o mesmo produto de vários estabelecimentos diferentes, o preço e localidade, e criar tabelas comparando os dados obtidos, a fim de que, no ato de consulta, possam ser verificadas facilmente as informações requeridas.

A coleta de dados será feita em produtos mais populares como por exemplo: bebidas alcoólicas, refrigerantes, lanches e eletrodomésticos, visto que não há uma maneira certa de conseguir as informações de todos os produtos, necessitando então de um foco.


###4	RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>
Neste ponto a codificação não e necessária, somente as ideias de telas devem ser criadas, o princípio aqui é pensar na criação da interface para identificar possíveis informações a serem armazenadas ou descartadas <br>

<!--Sugestão: https://balsamiq.com/products/mockups/<br>-->

![Alt text](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/pics/telasPrincipais.png?raw=true "Title")<br>
Link para telas mobile: https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/asets/Telas_Mobile.pdf
Link para telas desktop:
https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/asets/telas_desktop.pdf

####4.1 TABELA DE DADOS DO SISTEMA:
    Esta tabela deve conter todos os atributos do sistema e um mínimo de 10 linhas.
    ![Alt text](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/pics/TabelaGeral.png?raw=true "Tabela de dados Gerais")
    link para a tabela: https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/asets/TabelaGeralDadosCestadeCompras.xlsx
    <!--(esta tabela tem a intenção de simular um relatório com todos os dados que serão armazenados e deve ser criada antes do modelo conceitual)-->

###5	MODELO CONCEITUAL<br>
    5.1 NOTACAO ENTIDADE RELACIONAMENTO
![Alt text](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/pics/ModeloConceitual.jpg?raw=true "Modelo Conceitual")
    
 <!--   5.2 NOTACAO UML (Caso esteja fazendo a disciplina de analise)-->

####5.1 Validação do Modelo Conceitual
    <br>[Grupo01]: [Nomes dos que participaram na avaliação]
    <br>[Grupo02]: [Nomes dos que participaram na avaliação]

####5.2 DECISÕES DE PROJETO
    [atributo]: [descrição da decisão]
    
    EXEMPLO:
    a) Campo endereço: em nosso projeto optamos por um campo multivalorado e composto, pois a empresa 
    pode possuir para cada departamento mais de uma localização... 
    b) justifique!

####5.3 DESCRIÇÃO DOS DADOS 
    [objeto]: [descrição do objeto]
    
    EXEMPLO:
    CLIENTE: Tabela que armazena as informações relativas ao cliente<br>
    CPF: campo que armazena o número de Cadastro de Pessoa Física para cada cliente da empresa.<br>


###6	MODELO LÓGICO<br>

        a) inclusão do modelo lógico do banco de dados
        b) verificação de correspondencia com o modelo conceitual
        (não serão aceitos modelos que não estejam em conformidade)
![Alt text](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/pics/ModeloLogico.jpg?raw=true "Modelo Conceitual")

###7	MODELO FÍSICO<br>
        a) inclusão das instruções de criacão das estruturas DDL 
        (criação de tabelas, alterações, etc..)<br/>
    
[Modelo fisico link](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/brModelo30/Modelos/3%20-%20Fisico/01-Script_CriaTabelas.sql?raw=true "Modelo fisico")
        
        Entrega até este ponto em: (Data a ser definida)

###8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>

####8.1 DETALHAMENTO DAS INFORMAÇÕES
        Detalhamento sobre as informações e processo de obtenção ou geração dos dados.
        Referenciar todas as fontes referentes a :
        a) obtenção dos dados
        b) obtenção de códigos reutilizados
        c) fontes de estudo para desenvolvimento do projeto


####8.2 INCLUSÃO DO SCRIPT DE INSERÇÃO DOS DADOS

[insert link](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/brModelo30/Modelos/3%20-%20Fisico/01-Script_InsertTabelas.sql?raw=true "insert")<br/>
        a) inclusão das instruções de inserção dos dados nas tabelas criadas pelo script de modelo físico<br/>
        b) inclusão das instruções para execução de outros procedimentos necessários (caso existam)

####8.3 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELA E INSERÇÃO DOS DADOS
 
[insert + create link](https://github.com/Eduardocoutto/Cesta-de-Compras/blob/master/brModelo30/Modelos/3%20-%20Fisico/01-Script_Cria%2BInsertTabela.sql?raw=true "insert + crate")<br/> 
        a) Junção dos scripts anteriores em um único script <br/>
        (tabelas e estruturas de dados + dados a serem inseridos)<br/>
        b) Criar um novo banco de dados para testar a restauracao <br/>
        (em caso de falha na restauração o grupo não pontuará neste quesito)
        
        
        Entrega até este ponto em: (Data a ser definida)


###9	TABELAS E PRINCIPAIS CONSULTAS<br>
####9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>
        Entrega até este ponto em: (Data a ser definida)<br/>
####9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 3)<br>
<code>
select pessoa.nome, tipo_contato.tipo, contato.descricao as valor<br/>
from contato, tipo_contato, pessoa<br/>
where contato.id_tcon = tipo_contato.id_tcon and contato.id_pess = pessoa.id_pess;<br/>
<br/>
select supermercado.nome, supermercado.unidade, bairro.nome as bairro, cidade.nome as cidade<br/>
from supermercado, endereco, bairro, cidade<br/>
where supermercado.id_ende = endereco.id_ende and endereco.id_bair = bairro.id_bair and bairro.id_cida = cidade.id_cida;<br/>
<br/>
select lista_de_compras.nome as lista, produto.nome as produto, contem.quantidade<br/>
from contem, lista_de_compras, produto<br/>
where contem.id_list = lista_de_compras.id_list and contem.id_prod = produto.id_prod;<br/>
<br/>
select *<br/>
from avalia_sys<br/>
where nota > 5;<br/>
<br/>
select pessoa.nome as usuario, produto.nome as produto, supermercado.nome as supermercado, avalia.nota, avalia.comentario<br/>
from avalia, produto, pessoa, supermercado<br/>
where avalia.id_pess = pessoa.id_pess and avalia.id_prod = produto.id_prod and avalia.id_supe = supermercado.id_supe and nota between 3 and 7;<br/>
</code>

####9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E CAMPOS RENOMEADOS (Mínimo 2)<br>
####9.4	CONSULTAS QUE USAM OPERADORES LIKE (Mínimo 3) <br>
<code>
SELECT * FROM PRODUTO WHERE nome LIKE '%Carne%';
SELECT  comentario FROM avalia_sys WHERE comentario LIKE '%bom%';
SELECT  * FROM supermercado where nome like '%mart%' and unidade like 'V%';
SELECT  * FROM supermercado where nome like '__ro__';
SELECT  * FROM lista_de_compras as LC WHERE LC.nome like '%ca_a%';
<\code>
<br>####9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>
####9.6	CONSULTAS COM JUNÇÃO E ORDENAÇÃO (Todas Junções)<br>
        Entrega até este ponto em: (Data a ser definida)<br/>
####9.7	CONSULTAS COM GROUP BY (Mínimo 5)<br>
####9.8	CONSULTAS COM LEFT E RIGHT JOIN (Mínimo 4)<br>
####9.9	CONSULTAS COM SELF JOIN E VIEW (Todas Possíveis)<br>
####9.10	SUBCONSULTAS (Mínimo 3)<br>
        Entrega até este ponto em: (Data a ser definida)
###10	ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES PARA APRESENTAÇAO FINAL (Mínimo 6 e Máximo 10)<br>
###11	TUTORIAL COMPLETO DE PASSOS PARA RESTAURACAO DO BANCO E EXECUCAO DE PROCEDIMENTOS ENVOLVIDOS NO TRABALHO PARA OBTENÇÃO DOS RESULTADOS<br>
        a) Outros grupos deverão ser capazes de restaurar o banco 
        b) executar todas as consultas presentes no trabalho
        c) executar códigos que tenham sido construídos para o trabalho 
        d) realizar qualquer procedimento executado pelo grupo que desenvolveu o trabalho
        
###12   DIFICULDADES ENCONTRADAS PELO GRUPO<br>
###13   TRABALHO DE MINERAÇÃO DE DADOS
        a) captura das informaçõs
        b) integração com banco de dados em desenvolvimento
        c) atualização da documentação do trabalho incluindo a mineração de dados
        
###13  FORMATACAO NO GIT: https://help.github.com/articles/basic-writing-and-formatting-syntax/

###14 Backup completo do banco de dados postgres 
    a) deve ser realizado no formato "backup" 
        (Em Dump Options #1 Habilitar opções Don't Save Owner e Privilege)
    b) antes de postar o arquivo no git o mesmo deve ser testado/restaurado por outro grupo de alunos/dupla
    c) informar aqui o grupo de alunos/dupla que realizou o teste.
    
###OBSERVAÇÕES IMPORTANTES

#### Em tese todos os arquivos do trabalho devem ser compartilhados no git 
1. Caso existam arquivos com conteúdos sigilosos, comunicar o professor que definirá em conjunto com o grupo a melhor forma de armazenamento do arquivo.

#### Todos os grupos deverão fazer Fork deste repositório e dar permissões administrativas ao usuário deste GIT, para acompanhamento do trabalho.

#### Os usuários criados no GIT devem possuir o nome de identificação do aluno (não serão aceitos nomes como Eu123, meuprojeto, pro456, etc). Em caso de dúvida comunicar o professor.


