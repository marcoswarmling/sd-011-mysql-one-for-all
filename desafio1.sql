DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE artists(
artist_id INT PRIMARY KEY AUTO_INCREMENT,
artist VARCHAR(45) NOT NULL
) ENGINE = InnoDB;

CREATE TABLE plans(
plan_id INT PRIMARY KEY AUTO_INCREMENT,
plan VARCHAR(15) NOT NULL,
price VARCHAR(10) NOT NULL
) ENGINE = InnoDB;

CREATE TABLE users(
user_id INT PRIMARY KEY AUTO_INCREMENT,
user VARCHAR(45) NOT NULL,
age INT NOT NULL,
plan_id INT NOT NULL,
FOREIGN KEY (plan_id) REFERENCES plans (plan_id)
) ENGINE = InnoDB;

CREATE TABLE albuns(
album_id INT PRIMARY KEY AUTO_INCREMENT,
album VARCHAR(45) NULL,
artist_id INT NOT NULL,
FOREIGN KEY (artist_id) REFERENCES artists (artist_id)
) ENGINE = InnoDB;

CREATE TABLE musics(
played_music_id INT PRIMARY KEY AUTO_INCREMENT,
music VARCHAR(60)  NOT NULL,
album_id INT NOT NULL,
FOREIGN KEY (album_id) REFERENCES albuns (album_id)
) ENGINE = InnoDB;

CREATE TABLE played_musics(
user_id INT NOT NULL,
played_music_id INT NOT NULL,
FOREIGN KEY (user_id) REFERENCES users (user_id),
FOREIGN KEY (played_music_id) REFERENCES musics (played_music_id),
CONSTRAINT PRIMARY KEY (user_id, played_music_id)
) ENGINE = InnoDB;

CREATE TABLE followers (
user_id INT NOT NULL,
follow_id INT NOT NULL,
FOREIGN KEY (user_id) REFERENCES users (user_id),
FOREIGN KEY (follow_id) REFERENCES artists (follow_id),
CONSTRAINT PRIMARY KEY (user_id, follow_id)
) ENGINE = InnoDB;

INSERT INTO artists (artist_id)
VALUES
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

INSERT INTO albuns (album, artist_id)
VALUES
('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);

INSERT INTO plans (plan, price)
VALUES
('gratuito', 0),
('familiar', 7.99),
('universitário', 5.99);

INSERT INTO users (user, age, plan_id)
VALUES
('Thati', 23, 1),
('Cintia', 35, 2),
('Bill', 20, 3),
('Roger', 45, 1);

INSERT INTO musics (music, album_id)
VALUES
("Soul For Us", 1), 
("Reflections Of Magic", 1),
("Dance With Her Own", 1), 
("Troubles Of My Inner Fire", 1),
("Time Fireworks", 1),
("Magic Circus", 2),
("Honey, So Do I", 2),
("Sweetie Let's Go Wild", 2),
("She Knows", 2),
("Fantasy For Me", 3),
("Celebration Of More", 3),
("Rock His Everything", 3),
("Home Forever", 3),
("Diamond Power", 4),
("Honey, Let's Be Silly", 4),
("Thang Of Thunder", 4),
("Words Of Her Life", 4),
("Without My Streets", 4);

INSERT INTO followers (user_id, follow_id)
VALUES
(1, 1),
(1, 3),
(1, 4),
(2, 1),
(2, 3),
(3, 1),
(3, 2),
(4, 4);

INSERT INTO played_musics (user_id, played_music_id)
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
