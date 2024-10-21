# DIO - Trilha .NET - Banco de Dados
www.dio.me

## Desafio de projeto
Para este desafio, você precisará usar seus conhecimentos adquiridos no módulo de banco de dados, da trilha .NET da DIO.

## Contexto
Você é responsável pelo banco de dados de um site de filmes, onde são armazenados dados sobre os filmes e seus atores. Sendo assim, foi solicitado para que você realize uma consulta no banco de dados com o objetivo de trazer alguns dados para análises.

## Proposta
Você precisará realizar 12 consultas ao banco de dados, cada uma retornando um tipo de informação.
O seu banco de dados está modelado da seguinte maneira:

![Diagrama banco de dados](Imagens/diagrama.png)

As tabelas sao descritas conforme a seguir:

**Filmes**

Tabela responsável por armazenar informações dos filmes.

**Atores**

Tabela responsável por armazenar informações dos atores.

**Generos**

Tabela responsável por armazenar os gêneros dos filmes.

**ElencoFilme**

Tabela responsável por representar um relacionamento do tipo muitos para muitos entre filmes e atores, ou seja, um ator pode trabalhar em muitos filmes, e filmes
podem ter muitos atores.

**FilmesGenero**

Tabela responsável por representar um relacionamento do tipo muitos para muitos entre filmes e gêneros, ou seja, um filme pode ter mais de um gênero, e um genêro pode fazer parte de muitos filmes.

## Preparando o banco de dados
Você deverá executar o arquivo **Script Filmes.sql** em seu banco de dados SQL Server, presente na pasta Scripts deste repositório ([ou clique aqui](Script%20Filmes.sql)). Esse script irá criar um banco chamado **Filmes**, contendo as tabelas e os dados necessários para você realizar este desafio.

## Objetivo
Você deverá criar diversas consultas, com o objetivo de retornar os dados a seguir. Abaixo de cada pedido tem o retorno esperado. O seu retorno deve ser igual ao da imagem.

## 1 - Buscar o nome e ano dos filmes

![Exercicio 1](Imagens/1.png)

## 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano

![Exercicio 2](Imagens/2.png)

## 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração

![Exercicio 3](Imagens/3.png)

## 4 - Buscar os filmes lançados em 1997

![Exercicio 4](Imagens/4.png)

## 5 - Buscar os filmes lançados APÓS o ano 2000

![Exercicio 5](Imagens/5.png)

## 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente

![Exercicio 6](Imagens/6.png)

## 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente

![Exercicio 7](Imagens/7.png)

## 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome

![Exercicio 8](Imagens/8.png)

## 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome

![Exercicio 9](Imagens/9.png)

## 10 - Buscar o nome do filme e o gênero

![Exercicio 10](Imagens/10.png)

## 11 - Buscar o nome do filme e o gênero do tipo "Mistério"

![Exercicio 11](Imagens/11.png)

## 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel

![Exercicio 12](Imagens/12.png)

# Aqui você encontrará a explicação de cada script.

'SELECT nome, ano FROM filmes;'

Aqui, SELECT é usado para especificar as colunas que você deseja obter (nome e ano), e FROM é usado para indicar a tabela de onde esses dados devem ser extraídos (neste caso, a tabela filmes).

'SELECT nome, ano FROM filmes
ORDER BY ano ASC;'

SELECT: Especifica as colunas que você deseja retornar, que são nome e ano.
FROM: Indica a tabela filmes de onde os dados serão extraídos.
ORDER BY ano ASC: Ordena os resultados de forma crescente pelo valor da coluna ano (o ASC é opcional, já que a ordenação padrão é crescente).

'SELECT nome, ano, duracao FROM filmes
WHERE nome = 'De Volta para o Futuro';'

SELECT: Especifica as colunas que você deseja retornar (nome, ano, duracao).
FROM: Indica a tabela filmes de onde os dados serão extraídos.
WHERE: Filtra os resultados para retornar apenas o filme cujo nome é De Volta para o Futuro.

'SELECT nome, ano FROM filmes
WHERE ano > 2000;'

SELECT: Especifica as colunas que você deseja retornar (nome e ano).
FROM: Indica a tabela filmes de onde os dados serão extraídos.
WHERE ano > 2000: Filtra os resultados para retornar apenas os filmes que foram lançados após o ano 2000.

'SELECT nome, ano, duracao FROM filmes
WHERE duracao > 100 AND duracao < 150
ORDER BY duracao ASC;'

SELECT: Especifica as colunas que você deseja retornar (nome, ano e duracao).
FROM: Indica a tabela filmes de onde os dados serão extraídos.
WHERE duracao > 100 AND duracao < 150: Filtra os filmes para aqueles cuja duração seja maior que 100 minutos e menor que 150 minutos.
ORDER BY duracao ASC: Ordena os resultados pela coluna duracao em ordem crescente (o ASC é opcional, pois a ordenação padrão é crescente).

'SELECT ano, COUNT(*) AS quantidade_filmes
FROM filmes
GROUP BY ano
ORDER BY quantidade_filmes DESC;'

SELECT ano, COUNT(*) AS quantidade_filmes: Retorna o ano e a contagem de filmes para cada ano. COUNT(*) conta o número de filmes em cada grupo de ano, e AS quantidade_filmes dá um nome à coluna resultante.
FROM filmes: Indica a tabela filmes de onde os dados serão extraídos.
GROUP BY ano: Agrupa os resultados por ano, para que a contagem seja realizada para cada ano individualmente.
ORDER BY quantidade_filmes DESC: Ordena os resultados pela quantidade de filmes em ordem decrescente, mostrando primeiro os anos com mais filmes.

'SELECT PrimeiroNome, UltimoNome FROM atores
WHERE genero = 'Masculino';'

SELECT PrimeiroNome, UltimoNome: Retorna as colunas PrimeiroNome e UltimoNome dos atores.
FROM atores: Especifica a tabela atores de onde os dados serão extraídos.
WHERE genero = 'Masculino': Filtra os resultados para incluir apenas os atores cujo gênero seja masculino.

'SELECT PrimeiroNome, UltimoNome FROM atores
WHERE genero = 'Feminino'
ORDER BY PrimeiroNome ASC;' 

SELECT PrimeiroNome, UltimoNome: Retorna as colunas PrimeiroNome e UltimoNome das atrizes.

FROM atores: Indica a tabela atores de onde os dados serão extraídos.
WHERE genero = 'Feminino': Filtra os resultados para incluir apenas os atores cujo gênero seja feminino.

ORDER BY PrimeiroNome ASC: Ordena os resultados pelo campo PrimeiroNome em ordem crescente (o ASC é opcional, pois a ordenação padrão é crescente).

'SELECT f.nome AS NomeFilme, g.Genero AS Genero
FROM filmes f
JOIN FilmesGenero fg ON f.id = fg.IdFilme
JOIN Generos g ON fg.IdGenero = g.Id;'

SELECT f.nome AS NomeFilme, g.Genero AS Genero: Seleciona o nome do filme da tabela filmes (apelidada como f) e o gênero da tabela Generos (apelidada como g).

O AS é utilizado para dar um nome mais amigável às colunas retornadas.
FROM filmes f: Especifica a tabela filmes como a tabela principal e dá a ela um alias (f) para simplificar a referência nas junções.

JOIN FilmesGenero fg ON f.id = fg.IdFilme: Realiza uma junção entre a tabela filmes e a tabela FilmesGenero (apelidada como fg) onde os IDs dos filmes correspondem.

JOIN Generos g ON fg.IdGenero = g.Id: Realiza uma junção entre a tabela FilmesGenero e a tabela Generos onde os IDs dos gêneros correspondem.

'SELECT f.nome AS NomeFilme, g.Genero AS Genero
FROM filmes f
JOIN FilmesGenero fg ON f.id = fg.IdFilme
JOIN Generos g ON fg.IdGenero = g.Id
WHERE g.Genero = 'Mistério';'

SELECT f.nome AS NomeFilme, g.Genero AS Genero: Seleciona o nome do filme da tabela filmes e o gênero da tabela Generos.

FROM filmes f:Indica a tabela filmes como a tabela principal.

JOIN FilmesGenero fg ON f.id = fg.IdFilme: Faz a junção entre filmes e FilmesGenero onde os IDs dos filmes correspondem.

JOIN Generos g ON fg.IdGenero = g.Id: Faz a junção entre FilmesGenero e Generos onde os IDs dos gêneros correspondem.

WHERE g.Genero = 'Mistério': Filtra os resultados para incluir apenas os gêneros que são do tipo "Mistério".

'SELECT f.nome AS NomeFilme, a.PrimeiroNome, a.UltimoNome, ef.Papel
FROM filmes f
JOIN ElencoFilme ef ON f.id = ef.IdFilme
JOIN atores a ON ef.IdAtor = a.id;'

SELECT f.nome AS NomeFilme, a.PrimeiroNome, a.UltimoNome, ef.Papel: Seleciona o nome do filme da tabela filmes, o primeiro e o último nome dos atores, e o papel que desempenham no filme.

FROM filmes f: Especifica a tabela filmes como a tabela principal e a apelida como f.

JOIN ElencoFilme ef ON f.id = ef.IdFilme: Faz a junção entre filmes e ElencoFilme, associando os filmes aos seus elencos.

JOIN atores a ON ef.IdAtor = a.id: Faz a junção entre ElencoFilme e atores, ligando cada ator ao seu respectivo registro.


