--changeset kchambo:7
INSERT INTO persona VALUES (1,'kchambo','kchambo@mail.com');
INSERT INTO rol VALUES (1,'Admin');
INSERT INTO usuario VALUES (1,1,1,'kchambo123','1234');
INSERT INTO producto VALUES (1,'Laptop',3000);
INSERT INTO factura VALUES (1,1,CURRENT_DATE);
INSERT INTO detalle_factura VALUES (1,1,1,2);