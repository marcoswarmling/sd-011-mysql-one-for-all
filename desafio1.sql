DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE planos(
	plano_id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    valor DECIMAL(5,2) NOT NULL
) ENGINE = InnoDB;

INSERT INTO planos (plano_id, nome, valor)
VALUES
  (1, 'gratuito', 0),
  (2, 'familiar', 7.99),
  (3, 'universitário', 5.99);

CREATE TABLE usuarios(
	usuario_id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50) NOT NULL,
	idade TINYINT NOT NULL
) ENGINE = InnoDB;

INSERT INTO usuarios (usuario_id, nome, idade)
VALUES
  (1, 'Thati', 23),
  (2, 'Cintia', 35),
  (3, 'Bill', 20),
  (4, 'Roger', 45);

CREATE TABLE usuario_plano(
  usuario_id INT UNIQUE NOT NULL,
  plano_id INT NOT NULL,
  CONSTRAINT PRIMARY KEY (usuario_id, plano_id),
  FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id),
  FOREIGN KEY (plano_id) REFERENCES planos(plano_id)
) ENGINE = InnoDB;

INSERT INTO usuario_plano (usuario_id, plano_id)
VALUES
  (1, 1),
  (2, 2),
  (3, 3),
  (4, 1);

CREATE TABLE artistas(
  artista_id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL
) ENGINE = InnoDB;

INSERT INTO artistas (artista_id, nome)
VALUES
  (1, 'Walter Phoenix'),
  (2, 'Peter Strong'),
  (3, 'Lance Day'),
  (4, 'Freedie Shannon');

CREATE TABLE usuario_artista(
  usuario_id INT NOT NULL,
  artista_id INT NOT NULL,
  FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id),
  FOREIGN KEY (artista_id) REFERENCES artistas(artista_id)
) ENGINE = InnoDB;

INSERT INTO usuario_artista (usuario_id, artista_id)
VALUES
  (1, 1),
  (1, 4),
  (1, 3),
  (2, 1),
  (2, 3),
  (3, 2),
  (3, 1),
  (4, 4);

CREATE TABLE albuns(
  album_id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL
) ENGINE = InnoDB;

INSERT INTO albuns (album_id, nome)
VALUES
  (1, 'Envious'),
  (2, 'Exuberant'),
  (3, 'Hallowed Steam'),
  (4, 'Incandescent'),
  (5, 'Temporary Culture');

CREATE TABLE artista_album(
  artista_id INT NOT NULL,
  album_id INT UNIQUE NOT NULL,
  CONSTRAINT PRIMARY KEY (artista_id, album_id),
  FOREIGN KEY (artista_id) REFERENCES artistas(artista_id),
  FOREIGN KEY (album_id) REFERENCES albuns(album_id)
) ENGINE = InnoDB;

INSERT INTO artista_album (artista_id ,album_id)
VALUES
  (1, 1),
  (1, 2),
  (2, 3),
  (3, 4),
  (4, 5);

CREATE TABLE cancoes(
  cancao_id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL
) ENGINE = InnoDB;

INSERT INTO cancoes (cancao_id, nome)
VALUES
  (1, 'Soul For Us'),
  (2, 'Reflections Of Magic'),
  (3, 'Dance With Her Own'),
  (4, 'Troubles Of My Inner Fire'),
  (5, 'Time Fireworks'),
  (6, 'Magic Circus'),
  (7, 'Honey, So Do I'),
  (8, "Sweetie, Let\'s Go Wild"),
  (9, 'She Knows'),
  (10, 'Fantasy For Me'),
  (11, 'Celebration Of More'),
  (12, 'Rock His Everything'),
  (13, 'Home Forever'),
  (14, 'Diamond Power'),
  (15, "Honey, Let's Be Silly"),
  (16, 'Thang Of Thunder'),
  (17, 'Words Of Her Life'),
  (18, 'Without My Streets');

CREATE TABLE cancao_album(
  cancao_id INT UNIQUE NOT NULL,
  album_id INT NOT NULL,
  CONSTRAINT PRIMARY KEY (cancao_id, album_id),
  FOREIGN KEY (cancao_id) REFERENCES cancoes(cancao_id),
  FOREIGN KEY (album_id) REFERENCES albuns(album_id)
) ENGINE = InnoDB;

INSERT INTO cancao_album (cancao_id, album_id)
VALUES
  (1, 1),
  (2, 1),
  (3, 1),
  (4, 2),
  (5, 2),
  (6, 3),
  (7, 3),
  (8, 3),
  (9, 3),
  (10, 4),
  (11, 4),
  (12, 4),
  (13, 4),
  (14, 4),
  (15, 4),
  (16, 5),
  (17, 5),
  (18, 5);

CREATE TABLE usuario_cancao(
  usuario_id INT NOT NULL,
  cancao_id INT NOT NULL,
  CONSTRAINT PRIMARY KEY (usuario_id, cancao_id),
  FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id),
  FOREIGN KEY (cancao_id) REFERENCES cancoes(cancao_id)
) ENGINE = InnoDB;

INSERT INTO usuario_cancao (usuario_id, cancao_id)
VALUES
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
