CREATE TABLE IF NOT EXISTS sports (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS activities (
    id SERIAL PRIMARY KEY,
    date DATETIME NOT NULL,
    sport_id INTEGER NOT NULL,
    duration INTEGER,
    distance INTEGER,
    vertical_drop FLOAT,
    speed FLOAT,
    rythm FLOAT,
    intensity INTEGER,
    notes TEXT,
    FOREIGN KEY (sport_id) REFERENCES sports(id)
);

-- Pré-remplissage de quelques sports
INSERT INTO sports (name) VALUES
  ('Course à pied'),
  ('Vélo'),
  ('Natation'),
  ('Randonnée'),
  ('Musculation Salle'),
  ('Musculation Maison'),
  ('Marche'),
  ('Ski');
