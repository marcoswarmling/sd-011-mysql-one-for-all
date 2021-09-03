DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE planos(
plano_id INT PRIMARY KEY AUTO_INCREMENT,
plano VARCHAR(100) NOT NULL,
valor_plano DECIMAL (5,2) NOT NULL
)ENGINE=InnoDB;

INSERT INTO planos(plano, valor_plano)
VALUE
('gratuito', 0),
('universitário', 5.99),
('familiar', 7.99);

CREATE TABLE usuarios(
usuario_id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL,
idade INT NOT NULL,
plano_id INT NOT NULL,
FOREIGN KEY(plano_id) REFERENCES planos(plano_id)
)ENGINE=InnoDB;

INSERT INTO usuarios(nome, idade, plano_id)
VALUE
('Thati', 23, 1),
('Cintia', 35, 3),
('Bill', 20, 2),
('Roger', 45, 1);

CREATE TABLE artistas(
artista_id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL
)ENGINE=InnoDB;

INSERT INTO artistas(nome)
VALUE
('Walter Phoenix'),
('Freedie Shannon'),
('Lance Day'),
('Peter Strong');

CREATE TABLE albuns(
album_id INT PRIMARY KEY AUTO_INCREMENT,
titulo VARCHAR(255),
artista_id INT NOT NULL,
FOREIGN KEY(artista_id) REFERENCES artistas(artista_id)
)ENGINE=InnoDB;

INSERT INTO albuns(titulo, artista_id)
VALUE
('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 4),
('Incandescent', 3),
('Temporary Culture', 2);

CREATE TABLE musicas(
musica_id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
album_id INT NOT NULL,
FOREIGN KEY(album_id) REFERENCES albuns(album_id)
)ENGINE=InnoDB;

INSERT INTO musicas(nome, album_id)
VALUE
('Soul For Us', 1),
('Reflections Of Magic', 1),
('Dance With Her Own', 1),
('Troubles Of My Inner Fire', 2),
('Time Fireworks', 2),
('Magic Circus', 3),
('Honey, So Do I', 3),
("Sweetie, Let's Go Wild", 3),
('She Knows', 3),
('Fantasy For Me', 4),
('Celebration Of More', 4),
('Rock His Everything', 4),
('Home Forever', 4),
('Diamond Power', 4),
("Honey, Let's Be Silly", 4),
('Thang Of Thunder', 5),
('Words Of Her Life', 5),
('Without My Streets', 5);

CREATE TABLE seguindo_artistas(
CONSTRAINT PRIMARY KEY (usuario_id, artista_id),
usuario_id INT NOT NULL,
artista_id INT NOT NULL,
FOREIGN KEY(usuario_id) REFERENCES usuarios(usuario_id),
FOREIGN KEY(artista_id) REFERENCES artistas(artista_id)
)ENGINE=InnoDB;

INSERT INTO seguindo_artistas(usuario_id, artista_id)
VALUE
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 3),
(3, 4),
(3, 1),
(4, 2);

CREATE TABLE historico_de_reproducoes(
CONSTRAINT PRIMARY KEY (usuario_id, musica_id),
usuario_id INT NOT NULL,
musica_id INT NOT NULL,
FOREIGN KEY(usuario_id) REFERENCES usuarios(usuario_id),
FOREIGN KEY(musica_id) REFERENCES musicas(musica_id)
)ENGINE=InnoDB;

INSERT INTO historico_de_reproducoes(usuario_id, musica_id)
VALUE
(1,1),
(1,6),
(1,14),
(1,16),
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
