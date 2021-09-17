CREATE DATABASE IF NOT EXISTS SpotifyClone;
USE SpotifyClone;

CREATE TABLE planos(
plano_id INT PRIMARY KEY AUTO_INCREMENT,
plano VARCHAR(50) NOT NULL,
valor_plano DECIMAL(4,2) NOT NULL
);

CREATE TABLE artistas(
artista_id INT PRIMARY KEY AUTO_INCREMENT,
artista VARCHAR(50) NOT NULL
);

CREATE TABLE usuarios(
usuario_id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(50) NOT NULL,
idade INT NOT NULL,
plano_id INT NOT NULL,
FOREIGN KEY (plano_id) REFERENCES planos (plano_id)
);

CREATE TABLE albuns(
album_id INT PRIMARY KEY AUTO_INCREMENT,
album VARCHAR(50) NOT NULL,
artista_id INT NOT NULL,
FOREIGN KEY (artista_id) REFERENCES artistas (artista_id)
);

CREATE TABLE musicas(
musica_id INT PRIMARY KEY AUTO_INCREMENT,
musica VARCHAR(50) NOT NULL,
artista_id INT NOT NULL,
album_id INT NOT NULL,
FOREIGN KEY (artista_id) REFERENCES artistas (artista_id),
FOREIGN KEY (album_id) REFERENCES albuns (album_id)
);

CREATE TABLE historico_reproducoes(
`data` TIMESTAMP DEFAULT CURRENT_timestamp,
musicas_reproduzidas INT NOT NULL,
usuario INT NOT NULL,
CONSTRAINT PRIMARY KEY(`data`, musicas_reproduzidas, usuario),
FOREIGN KEY (musicas_reproduzidas) REFERENCES musicas (musica_id),
FOREIGN KEY (usuario) REFERENCES usuarios (usuario_id)
);

CREATE TABLE artistas_seguindo(
artista INT NOT NULL,
usuario INT NOT NULL,
CONSTRAINT PRIMARY KEY(artista, usuario),
FOREIGN KEY (artista) REFERENCES artistas (artista_id),
FOREIGN KEY (usuario) REFERENCES usuarios (usuario_id)
);

INSERT INTO planos(plano, valor_plano)
VALUE
('gratuito', 0),
('universitário', 5.99),
('familiar', 7.99);

INSERT INTO artistas(artista)
VALUE
('Walter Phoenix'),
('Freedie Shannon'),
('Lance Day'),
('Peter Strong');

INSERT INTO usuarios(nome, idade, plano_id)
VALUE
('Thati', 23, 1),
('Cintia', 35, 3),
('Bill', 20, 2),
('Roger', 45, 1);

INSERT INTO albuns(album, artista_id)
VALUE
('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 4),
('Incandescent', 3),
('Temporary Culture', 2);

INSERT INTO musicas(musica, artista_id, album_id)
VALUE
('Soul For Us', 1, 1),
('Reflections Of Magic', 1, 1),
('Dance With Her Own', 1, 1),
('Troubles Of My Inner Fire', 1, 2),
('Time Fireworks', 1, 2),
('Magic Circus', 2, 3),
('Honey, So Do I', 2, 3),
("Sweetie, Let's Go Wild", 2, 3),
('She Knows', 2, 3),
('Fantasy For Me', 3, 4),
('Celebration Of More', 3, 4),
('Rock His Everything', 3, 4),
('Home Forever', 3, 4),
('Diamond Power', 3, 4),
("Honey, Let's Be Silly", 3, 4),
('Thang Of Thunder', 4, 5),
('Words Of Her Life', 4, 5),
('Without My Streets', 4, 5);

INSERT INTO historico_reproducoes(usuario, musicas_reproduzidas)
VALUE
(1, 1),
(1, 6),
(1, 14),
(1, 16),
(2, 13),
(2, 17),
(2, 2),
(2, 15),
(3, 4),
(3, 16),
(3, 6),
(4, 3),
(4, 18),
(4, 11);

INSERT INTO artistas_seguindo(usuario, artista)
VALUE
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 3),
(3, 4),
(3, 1),
(4, 2);
