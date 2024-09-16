/* QUERIES PROYECTO: */
USE cinemadata;

/*QUERY 1:
¿Qué géneros han recibido más premios Óscar?*/


WITH peliculas_ganadoras AS (
  -- Identificar todas las películas que han ganado en cualquier categoría
  SELECT mejor_pelicula AS titulo
  FROM datos_oscars
  UNION
  SELECT mejor_director AS titulo
  FROM datos_oscars
  UNION
  SELECT mejor_actor AS titulo
  FROM datos_oscars
  UNION
  SELECT mejor_actriz AS titulo
  FROM datos_oscars
)

-- Ahora contar los géneros de las películas ganadoras
SELECT pg.genero, COUNT(pga.titulo) AS total_premios
FROM peliculas_generos AS pg
JOIN peliculas_ganadoras AS pga
  ON pg.titulo = pga.titulo
GROUP BY pg.genero
ORDER BY total_premios DESC;


 
/*QUERY 2:
¿Qué género es el mejor valorado en IMDB? */ 

SELECT Genero, AVG(Puntuación) AS Puntuacion_Media
FROM peliculas_imdb
GROUP BY Genero
ORDER BY Puntuacion_Media DESC
LIMIT 1;



/*QUERY 3
¿En qué año se estrenaron más películas?*/
-- Planteamiento 1
SELECT año, COUNT(titulo) AS TotalPeliculas
FROM peliculas_generos
WHERE tipo = 'Movie'
GROUP BY año
ORDER BY TotalPeliculas DESC
LIMIT 1;


/*QUERY 4
¿En qué año se estrenaron más cortos?*/
-- Planteamiento 1
SELECT COUNT(titulo) AS Corto, año
FROM peliculas_generos
WHERE tipo = 'Short'
GROUP BY año
ORDER BY Corto DESC
LIMIT 1;


/*QUERY 5
¿Cuál es la mejor serie valorada en IMDB?
ES BONUS*/



/*QUERY 6
¿Cuál es la película mejor valorada en IMDB?*/

SELECT Nombre_de_la_película, Puntuación
FROM peliculas_imdb
ORDER BY Puntuación DESC
LIMIT 1;


/*QUERY 7
¿Qué actor/actriz ha recibido más premios?*/

SELECT Nombre, COUNT(Premios) AS Premios_Ganados
FROM actor_imdb
GROUP BY Nombre
ORDER BY Premios_Ganados DESC
LIMIT 1;

/*QUERY 8
¿Hay algún actor/actriz que haya recibido más de un premio Óscar?*/

-- Contar actores que han ganado más de un premio
SELECT mejor_actor AS nombre_actor_actriz, COUNT(mejor_actor) AS premios_ganados
FROM datos_oscars
GROUP BY mejor_actor
HAVING COUNT(mejor_actor) > 1

UNION ALL

-- Contar actrices que han ganado más de un premio
SELECT mejor_actriz AS nombre_actor_actriz, COUNT(mejor_actriz) AS premios_ganados
FROM datos_oscars
GROUP BY mejor_actriz
HAVING COUNT(mejor_actriz) > 1;









