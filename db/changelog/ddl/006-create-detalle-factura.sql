--changeset kchambo:6
CREATE TABLE detalle_factura (
  id SERIAL PRIMARY KEY,
  factura_id INT,
  producto_id INT,
  cantidad INT,
  FOREIGN KEY (factura_id) REFERENCES factura(id),
  FOREIGN KEY (producto_id) REFERENCES producto(id)
);