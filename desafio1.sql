DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE Planos(
	plano_id INT PRIMARY KEY AUTO_INCREMENT,
    plano VARCHAR(50) NOT NULL,
    valor DECIMAL(4,2)
) engine = InnoDB;

CREATE TABLE Usuario(
    usuario_id INT PRIMARY KEY AUTO_INCREMENT,
    usuario VARCHAR(50) NOT NULL,
    idade INT NOT NULL,
    plano_id INT,
    FOREIGN KEY (plano_id) REFERENCES Planos(plano_id)
) engine = InnoDB;

CREATE TABLE Artista(
	artista_id INT PRIMARY KEY AUTO_INCREMENT,
    artista VARCHAR(50) NOT NULL
) engine = InnoDB;

CREATE TABLE Albuns(
	album_id INT PRIMARY KEY AUTO_INCREMENT,
    album VARCHAR(150) NOT NULL,
    artista_id INT,
    FOREIGN KEY (artista_id) REFERENCES Artista(artista_id)
) engine = InnoDB;

CREATE TABLE Musicas(
	musica_id INT PRIMARY KEY AUTO_INCREMENT,
    musica VARCHAR(200) NOT NULL,
    album_id INT,
    FOREIGN KEY (album_id) REFERENCES Albuns(album_id)
) engine = InnoDB;

CREATE TABLE Seguidores(
	usuario_id INT,
	artista_id INT,
	CONSTRAINT PRIMARY KEY(usuario_id, artista_id),
	FOREIGN KEY (usuario_id) REFERENCES Usuario(usuario_id),
	FOREIGN KEY (artista_id) REFERENCES Artista(artista_id)
) engine = InnoDB;

CREATE TABLE Historico(
	usuario_id INT,
	musica_id INT,
	CONSTRAINT PRIMARY KEY(usuario_id, musica_id),
	FOREIGN KEY (usuario_id) REFERENCES Usuario(usuario_id),
	FOREIGN KEY (musica_id) REFERENCES Musicas(musica_id)
) engine = InnoDB;

INSERT INTO Planos (plano, valor)
VALUES ('gratuito', 0),
('universitário', 5.99),
('familiar', 7.99);

INSERT INTO Usuario (usuario, idade, plano_id)
VALUES ('Thati', 23, 1),
('Cintia', 35, 3),
('Bill', 20, 2),
('Roger', 45, 1);

INSERT INTO Artista (artista)
VALUES ('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

INSERT INTO Albuns(album, artista_id)
VALUES ('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);

INSERT INTO Musicas(musica, album_id)
VALUES ('Soul For Us', 1),
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

INSERT INTO Seguidores(usuario_id, artista_id)
VALUES(1, 1),
(1, 4),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 4);

INSERT INTO Historico(usuario_id, musica_id)
VALUES(1, 1),
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




