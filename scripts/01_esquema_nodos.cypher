CREATE (:Genero {idGenero: 'G1', nombre: 'Rock'}),
       (:Genero {idGenero: 'G2', nombre: 'Pop'}),
       (:Genero {idGenero: 'G3', nombre: 'Hip Hop'}),
       (:Genero {idGenero: 'G4', nombre: 'Electrónica'});

CREATE (:Artista {idArtista: 'A1', nombre: 'Daft Punk', paisOrigen: 'Francia'}),
       (:Artista {idArtista: 'A2', nombre: 'The Weeknd', paisOrigen: 'Canadá'}),
       (:Artista {idArtista: 'A3', nombre: 'Kendrick Lamar', paisOrigen: 'Estados Unidos'}),
       (:Artista {idArtista: 'A4', nombre: 'Rosalía', paisOrigen: 'España'}),
       (:Artista {idArtista: 'A5', nombre: 'Arctic Monkeys', paisOrigen: 'Reino Unido'});

CREATE (:Cancion {idCancion: 'C1', titulo: 'One More Time', duracionSegundos: 320, anioLanzamiento: 2000}),
       (:Cancion {idCancion: 'C2', titulo: 'Starboy', duracionSegundos: 230, anioLanzamiento: 2016}),
       (:Cancion {idCancion: 'C3', titulo: 'Blinding Lights', duracionSegundos: 200, anioLanzamiento: 2019}),
       (:Cancion {idCancion: 'C4', titulo: 'HUMBLE.', duracionSegundos: 177, anioLanzamiento: 2017}),
       (:Cancion {idCancion: 'C5', titulo: 'DESPECHÁ', duracionSegundos: 157, anioLanzamiento: 2022}),
       (:Cancion {idCancion: 'C6', titulo: 'MALAMENTE', duracionSegundos: 150, anioLanzamiento: 2018}),
       (:Cancion {idCancion: 'C7', titulo: 'Do I Wanna Know?', duracionSegundos: 272, anioLanzamiento: 2013}),
       (:Cancion {idCancion: 'C8', titulo: 'Get Lucky', duracionSegundos: 369, anioLanzamiento: 2013}),
       (:Cancion {idCancion: 'C9', titulo: 'DNA.', duracionSegundos: 185, anioLanzamiento: 2017}),
       (:Cancion {idCancion: 'C10', titulo: 'R U Mine?', duracionSegundos: 200, anioLanzamiento: 2013});

CREATE (:Usuario {idUsuario: 'U1', nombre: 'Laura', email: 'laura@email.com', edad: 22}),
       (:Usuario {idUsuario: 'U2', nombre: 'Carlos', email: 'carlos@email.com', edad: 25}),
       (:Usuario {idUsuario: 'U3', nombre: 'Marta', email: 'marta@email.com', edad: 21}),
       (:Usuario {idUsuario: 'U4', nombre: 'Diego', email: 'diego@email.com', edad: 28}),
       (:Usuario {idUsuario: 'U5', nombre: 'Sofía', email: 'sofia@email.com', edad: 24}),
       (:Usuario {idUsuario: 'U6', nombre: 'Javier', email: 'javier@email.com', edad: 26});