--changeset kchambo:5
CREATE TABLE factura (
  id SERIAL PRIMARY KEY,
  usuario_id INT,
  fecha DATE,
  FOREIGN KEY (usuario_id) REFERENCES usuario(id)
);