// ----- CONSULTAS -----

MATCH (n) RETURN n;

MATCH (a:Artista) RETURN a;

MATCH (c:Cancion) WHERE c.anioLanzamiento > 2015 RETURN c.titulo, c.anioLanzamiento;

MATCH (u:Usuario)-[r:ESCUCHO]->(c:Cancion) RETURN u.nombre, r.vecesReproducida, c.titulo;

MATCH (u:Usuario)-[:SIGUE]->(a:Artista)-[:INTERPRETA]->(c:Cancion) 
RETURN u.nombre AS Oyente, a.nombre AS Artista, c.titulo AS CancionRecomendada;

MATCH (c:Cancion)-[:PERTENECE]->(g:Genero) 
RETURN g.nombre AS Genero, count(c) AS TotalCanciones;

MATCH (c:Cancion) 
RETURN c.titulo, c.duracionSegundos 
ORDER BY c.duracionSegundos DESC LIMIT 3;

MATCH p = shortestPath((u1:Usuario {nombre: 'Laura'})-[*..5]-(u2:Usuario {nombre: 'Sofía'})) 
RETURN p;

MATCH (u:Usuario)-[r:ESCUCHO]->(c:Cancion) 
WITH u, sum(r.vecesReproducida) AS totalStreams 
WHERE totalStreams >= 10 
RETURN u.nombre, totalStreams;

// ----- CAMBIOS -----

MATCH (u:Usuario {nombre: 'Laura'}) 
SET u.edad = 23 
RETURN u;

MATCH (u:Usuario {nombre: 'Laura'})-[r:ESCUCHO]->(c:Cancion {titulo: 'One More Time'}) 
SET r.vecesReproducida = 10 
RETURN r;

// ----- BAJAS -----

MATCH (u:Usuario {nombre: 'Javier'})-[r:SIGUE]->(a:Artista {nombre: 'The Weeknd'}) 
DELETE r;

MATCH (u:Usuario {nombre: 'Marta'}) 
DETACH DELETE u;