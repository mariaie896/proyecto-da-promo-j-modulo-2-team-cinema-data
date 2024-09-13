/* QUERIES PROYECTO: */
USE cinemadata;

/*QUERY 1:
¿Qué géneros han recibido más premios Óscar?*/
SELECT
FROM ;
 
 
/*QUERY 2:
¿Qué género es el mejor valorado en IMDB? */ 
SELECT
FROM tabla_selenium_pelis;


/*QUERY 3
¿En qué año se estrenaron más películas?*/
-- Planteamiento 1
SELECT año, COUNT(titulo) AS TotalPeliculas
FROM peliculas_generos
WHERE tipo = 'Movie'
GROUP BY año
ORDER BY año DESC
LIMIT 1;

-- Planteamiento 2
SELECT año, COUNT(titulo) AS TotalPeliculas
FROM peliculas_generos
WHERE tipo = 'Movie'
GROUP BY año
HAVING COUNT(titulo) = (
    SELECT MAX(TotalPeliculas)
    FROM (
        SELECT COUNT(titulo) AS TotalPeliculas
        FROM peliculas_generos
        WHERE tipo = 'Movie'
        GROUP BY año
    ) AS subconsulta
);


/*QUERY 4
¿En qué año se estrenaron más cortos?*/
-- Planteamiento 1
SELECT COUNT(titulo), año
FROM peliculas_generos
WHERE tipo = 'Short'
GROUP BY año
ORDER BY año DESC
LIMIT 1;

-- Planteamiento 2
SELECT año, COUNT(titulo) AS TotalPeliculas
FROM peliculas_generos
WHERE tipo = 'Short'
GROUP BY año
HAVING COUNT(titulo) = (
    SELECT MAX(TotalPeliculas)
    FROM (
        SELECT COUNT(titulo) AS TotalPeliculas
        FROM peliculas_generos
        WHERE tipo = 'Short'
        GROUP BY año
    ) AS subconsulta
);

/*QUERY 5
¿Cuál es la mejor serie valorada en IMDB?*/
SELECT
FROM tabla_selenium_pelis;


/*QUERY 6
¿Cuál es la película mejor valorada en IMDB?*/
SELECT
FROM tabla_selenium_pelis;


/*QUERY 7
¿Qué actor/actriz ha recibido más premios?*/
SELECT
FROM tabla_selenium_actores;


/*QUERY 8
¿Hay algún actor/actriz que haya recibido más de un premio Óscar?*/
SELECT
FROM datos_oscars;


