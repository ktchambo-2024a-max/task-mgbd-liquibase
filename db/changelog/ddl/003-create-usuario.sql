--changeset kchambo:3
CREATE TABLE usuario (
  id SERIAL PRIMARY KEY,
  persona_id INT,
  rol_id INT,
  username VARCHAR(50),
  password VARCHAR(50),
  FOREIGN KEY (persona_id) REFERENCES persona(id),
  FOREIGN KEY (rol_id) REFERENCES rol(id)
);