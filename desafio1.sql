DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

CREATE TABLE SpotifyClone.artists(
    id SMALLINT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    PRIMARY KEY (id),
) engine = InnoDB;

CREATE TABLE SpotifyClone.albums(
    id SMALLINT NOT NULL AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    artist_id SMALLINT NOT NULL,
    release_year INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (artist_id) REFERENCES SpotifyClone.artists (id),
) engine = InnoDB;

CREATE TABLE SpotifyClone.musics(
    id SMALLINT NOT NULL AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    duration INT NOT NULL,
    album_id SMALLINT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (album_id) REFERENCES SpotifyClone.albums (id),
) engine = InnoDB;

CREATE TABLE SpotifyClone.plans(
    id SMALLINT NOT NULL AUTO_INCREMENT,
    type VARCHAR(100) NOT NULL,
    price INT NOT NULL,
    PRIMARY KEY (id),
) engine = InnoDB;

CREATE TABLE SpotifyClone.users(
    id SMALLINT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    age SMALLINT NOT NULL,
    plan_id SMALLINT NOT NULL,
    assign_date DATE NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (plan_id) REFERENCES SpotifyClone.plans (id),
) engine = InnoDB;

CREATE TABLE SpotifyClone.historic(
    id SMALLINT NOT NULL AUTO_INCREMENT,
    user_id SMALLINT NOT NULL,
    music_id SMALLINT NOT NULL,
    stream_date DATETIME NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES SpotifyClone.users (id),
    FOREIGN KEY (music_id) REFERENCES SpotifyClone.musics (id),
) engine = InnoDB;

CREATE TABLE SpotifyClone.follow(
    id SMALLINT NOT NULL AUTO_INCREMENT,
    user_id SMALLINT NOT NULL,
    artist_id SMALLINT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES SpotifyClone.users (id),
    FOREIGN KEY (artist_id) REFERENCES SpotifyClone.artists (id),
) engine = InnoDB;

INSERT INTO SpotifyClone.tabela1 (coluna1, coluna2)
VALUES
  ('exemplo de dados 1', 'exemplo de dados A'),
  ('exemplo de dados 2', 'exemplo de dados B'),
  ('exemplo de dados 3', 'exemplo de dados C');

INSERT INTO SpotifyClone.tabela2 (coluna1, coluna2)
VALUES
  ('exemplo de dados 1', 'exemplo de dados X'),
  ('exemplo de dados 2', 'exemplo de dados Y');