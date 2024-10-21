-- Buscar o nome e ano dos filmes
SELECT Nome, Ano FROM Filmes;
-- Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT nome, ano FROM filmes
ORDER BY ano ASC;
-- Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT nome, ano, duracao FROM filmes
WHERE nome = 'De Volta para o Futuro';
-- Buscar os filmes lançados em 1997
SELECT nome, ano, duracao FROM filmes
WHERE Ano = '1997';
-- Buscar os filmes lançados APÓS o ano 2000
SELECT nome, ano FROM filmes
WHERE ano > 2000;
-- Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT nome, ano, duracao FROM filmes
WHERE duracao > 100 AND duracao < 150
ORDER BY duracao ASC;
-- Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT ano, COUNT(*) AS quantidade_filmes
FROM filmes
GROUP BY ano
ORDER BY quantidade_filmes DESC;
-- Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT PrimeiroNome, UltimoNome, Genero FROM Atores
WHERE genero = 'M';
-- Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT PrimeiroNome, UltimoNome, Genero FROM atores
WHERE genero = 'F'
ORDER BY PrimeiroNome ASC;
-- Buscar o nome do filme e o gênero
SELECT f.nome AS NomeFilme, g.Genero AS Genero
FROM filmes f
JOIN FilmesGenero fg ON f.id = fg.IdFilme
JOIN Generos g ON fg.IdGenero = g.Id;
-- Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT f.nome AS NomeFilme, g.Genero AS Genero
FROM filmes f
JOIN FilmesGenero fg ON f.id = fg.IdFilme
JOIN Generos g ON fg.IdGenero = g.Id
WHERE g.Genero = 'Mistério';
-- Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT f.nome AS NomeFilme, a.PrimeiroNome, a.UltimoNome, ef.Papel
FROM filmes f
JOIN ElencoFilme ef ON f.id = ef.IdFilme
JOIN atores a ON ef.IdAtor = a.id;
