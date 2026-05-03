--liquibase formatted sql
--changeset kchambo:1
CREATE TABLE persona (
  id SERIAL PRIMARY KEY,
  nombre VARCHAR(100),
  correo VARCHAR(100)
);