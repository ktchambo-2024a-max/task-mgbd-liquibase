--changeset kchambo:4
CREATE TABLE producto (
  id SERIAL PRIMARY KEY,
  nombre VARCHAR(100),
  precio DECIMAL(10,2)
);