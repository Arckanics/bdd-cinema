CREATE TABLE administrateurs (
  id char(36) NOT NULL PRIMARY KEY,
  email varchar(50) NOT NULL UNIQUE,
  login varchar(50) NOT NULL,
  password char(60) BINARY NOT NULL
);

CREATE TABLE cinemas (
  id char(36) NOT NULL PRIMARY KEY,
  adress varchar(150) NOT NULL
);

CREATE TABLE users (
  id char(36) NOT NULL PRIMARY KEY,
  login varchar(50) NOT NULL,
  password char(36) NOT NULL,
  cine_id char(36) UNIQUE NOT NULL,
  FOREIGN KEY (cine_id) REFERENCES cinema (id)
);

CREATE TABLE rooms (
  id char(36) NOT NULL PRIMARY KEY,
  number int NOT NULL,
  cine_id char(36) NOT NULL,
  places int NOT NULL,
  FOREIGN KEY (cine_id) REFERENCES cinema (id)
);

CREATE TABLE movies (
  id char(36) NOT NULL PRIMARY KEY,
  name varchar(100) NOT NULL,
  duration int
);

CREATE TABLE sessions (
  id char(36) NOT NULL PRIMARY KEY,
  date DATETIME NOT NULL,
  cine_id char(36) NOT NULL,
  room_id char(36) NOT NULL,
  movie_id char(36) NOT NULL,
  FOREIGN KEY (cine_id) REFERENCES cinemas (id),
  FOREIGN KEY (room_id) REFERENCES rooms (id),
  FOREIGN KEY (movie_id) REFERENCES movies (id)
);

CREATE TABLE reservations (
  id char(36) NOT NULL PRIMARY KEY,
  tarif int NOT NULL,
  online BOOLEAN NOT NULL,
  session_id char(36) NOT NULL,
  FOREIGN KEY (session_id) REFERENCES sessions (id)
);

INSERT INTO
  cinemas
VALUES
  (UUID(), "Metz, place de la république, 57000"),
  (UUID(), "Nancy, place Stanislas, 54000");

INSERT INTO
  rooms
VALUES
  (
    UUID(),
    1,
    'a9b8087e-8e91-11ed-a9a8-04d9f504983b',
    232
  ),
  (
    UUID(),
    2,
    'a9b8087e-8e91-11ed-a9a8-04d9f504983b',
    225
  ),
  (
    UUID(),
    3,
    'a9b8087e-8e91-11ed-a9a8-04d9f504983b',
    250
  ),
  (
    UUID(),
    4,
    'a9b8087e-8e91-11ed-a9a8-04d9f504983b',
    300
  );

INSERT INTO
  rooms
VALUES
  (
    UUID(),
    1,
    'a9b80c57-8e91-11ed-a9a8-04d9f504983b',
    180
  ),
  (
    UUID(),
    2,
    'a9b80c57-8e91-11ed-a9a8-04d9f504983b',
    245
  ),
  (
    UUID(),
    3,
    'a9b80c57-8e91-11ed-a9a8-04d9f504983b',
    295
  );

INSERT INTO
  movies
VALUES
  (UUID(), 'Avatar', 8460),
  (UUID(), 'Avatar 2', 12060);

INSERT INTO
  administrateurs
VALUES
  (
    UUID(),
    'john@doe.com',
    'jd57',
    '$2a$12$BNkhEx35ZWii1wzW7MWSeOw9zwUpGkkJxcSmsvpxMXBXIDQTQrjIO'
  ),
  (
    UUID(),
    'jeanne@doe.com',
    'jd57000',
    '$2a$12$e7OXxRob.YRsh0rf9c7d/eR/ZicMu8hjBUBROT19AAaznU39gb61.'
  );

INSERT INTO
  users
VALUES
  (
    UUID(),
    'samuel',
    '$2a$12$RgW.vb5ChTnA8IbzMpXVBOAQA5/jLa7gUc7bSNZ8Te7R74CX1cXgO',
    'a9b8087e-8e91-11ed-a9a8-04d9f504983b'
  ),
  (
    UUID(),
    'sammantha',
    '$2a$12$RgW.vb5ChTnA8IbzMpXVBOAQA5/jLa7gUc7bSNZ8Te7R74CX1cXgO',
    'a9b80c57-8e91-11ed-a9a8-04d9f504983b'
  );

INSERT INTO
  sessions
VALUES
  (
    UUID(),
    '2023-01-22 09:30:00',
    'a9b8087e-8e91-11ed-a9a8-04d9f504983b',
    'c294f573-8e92-11ed-a9a8-04d9f504983b',
    'a457359b-8e93-11ed-a9a8-04d9f504983b'
  ),
  (
    UUID(),
    '2023-01-22 15:30:00',
    'a9b8087e-8e91-11ed-a9a8-04d9f504983b',
    'c294fc3f-8e92-11ed-a9a8-04d9f504983b',
    'a4573959-8e93-11ed-a9a8-04d9f504983b'
  );

INSERT INTO
  sessions
VALUES
  (
    UUID(),
    '2023-01-22 13:00:00',
    'a9b80c57-8e91-11ed-a9a8-04d9f504983b',
    '1d8e8c1e-8e93-11ed-a9a8-04d9f504983b',
    'a457359b-8e93-11ed-a9a8-04d9f504983b'
  ),
  (
    UUID(),
    '2023-01-22 20:30:00',
    'a9b80c57-8e91-11ed-a9a8-04d9f504983b',
    '1d8e8e84-8e93-11ed-a9a8-04d9f504983b',
    'a4573959-8e93-11ed-a9a8-04d9f504983b'
  );

INSERT INTO
  reservations
VALUES
  (
    UUID(),
    920,
    true,
    '39a9d694-8f31-11ed-b12d-04d9f504983b'
  ),
  (
    UUID(),
    920,
    true,
    '39a9d694-8f31-11ed-b12d-04d9f504983b'
  ),
  (
    UUID(),
    920,
    true,
    '39a9d694-8f31-11ed-b12d-04d9f504983b'
  );

INSERT INTO
  reservations
VALUES
  (
    UUID(),
    920,
    true,
    '39a9d694-8f31-11ed-b12d-04d9f504983b'
  ),
  (
    UUID(),
    920,
    true,
    '39a9d694-8f31-11ed-b12d-04d9f504983b'
  ),
  (
    UUID(),
    760,
    true,
    '39a9d694-8f31-11ed-b12d-04d9f504983b'
  );

INSERT INTO
  reservations
VALUES
  (
    UUID(),
    760,
    true,
    '39a9d694-8f31-11ed-b12d-04d9f504983b'
  ),
  (
    UUID(),
    760,
    true,
    '39a9d694-8f31-11ed-b12d-04d9f504983b'
  ),
  (
    UUID(),
    590,
    true,
    '39a9d694-8f31-11ed-b12d-04d9f504983b'
  );

INSERT INTO
  reservations
VALUES
  (
    UUID(),
    590,
    true,
    '39a9d694-8f31-11ed-b12d-04d9f504983b'
  );

INSERT INTO
  reservations
VALUES
  (
    UUID(),
    920,
    true,
    '39a9ddd4-8f31-11ed-b12d-04d9f504983b'
  ),
  (
    UUID(),
    920,
    true,
    '39a9ddd4-8f31-11ed-b12d-04d9f504983b'
  ),
  (
    UUID(),
    920,
    true,
    '39a9ddd4-8f31-11ed-b12d-04d9f504983b'
  );

INSERT INTO
  reservations
VALUES
  (
    UUID(),
    920,
    true,
    '39a9ddd4-8f31-11ed-b12d-04d9f504983b'
  ),
  (
    UUID(),
    760,
    true,
    '39a9ddd4-8f31-11ed-b12d-04d9f504983b'
  );