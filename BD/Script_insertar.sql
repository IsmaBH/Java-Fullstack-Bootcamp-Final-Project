USE `jardin_floral_bd`;

INSERT INTO `usuario`(nombre, apellido_p, apellido_m, telefono, correo) VALUES
('Wendy', 'Meneses', 'Hernández', 5536985214, 'wendy1@gmail.com');
INSERT INTO `usuario`(nombre, apellido_p, apellido_m, telefono, correo) VALUES
('Katherine', 'Reyes', 'Alonso', 5647876459, 'kather@gmail.com');
INSERT INTO `usuario`(nombre, apellido_p, apellido_m, telefono, correo) VALUES
('Jackeline', 'Montalvo', 'González', 9931882556, 'jmg.1995@gmail.com');
INSERT INTO `usuario`(nombre, apellido_p, apellido_m, telefono, correo) VALUES
('Marco', 'Medina', 'Díaz', 5627344990, 'marcomedina@gmail.com');
INSERT INTO `usuario`(nombre, apellido_p, apellido_m, telefono, correo) VALUES
('Diego','Baron','Hernandez',5574986532,'diego@gmail.com');

SELECT * FROM `usuario`;

INSERT INTO `productos`(nombre_producto, precio, color, stock, descripcion, temporada) VALUES
('Hortensias', 35.90, 'Amarillo', 5, 'En el lenguaje de las flores, la hortensia puede significar gratitud, comprensión, amor, respeto, admiración, pureza, sinceridad, felicidad, amistad, confianza y paz.', 'Primavera');
INSERT INTO `productos`(nombre_producto, precio, color, stock, descripcion, temporada) VALUES
('Tulipanes',10.50, 'Rosa', 20,'En el lenguaje de las flores, los tulipanes pueden expresar una gran variedad de emociones, como el amor, la amistad, la alegría, la admiración, la pasión, la pureza, la inocencia, el orgullo, la dignidad, el éxito, entre otras.', 'Primavera');
INSERT INTO `productos`(nombre_producto, precio, color, stock, descripcion, temporada) VALUES
('Lirios',10.50, 'Azul', 10, 'El lirio (Lilium) es una flor que puede tener diferentes significados dependiendo de su color y de la cultura en la que se encuentre. Los lirios blancos simbolizan pureza, inocencia y belleza.', 'verano');
INSERT INTO `productos`(nombre_producto, precio, color, stock, descripcion, temporada) VALUES
('Gypsophila',10.50 ,'Blanco',10 ,'La gipsófila simboliza pureza, inocencia y eternidad. En muchas culturas occidentales, es común en bodas y ceremonias religiosas, representando los nuevos comienzos y la infinita pureza del amor.', 'Verano');
INSERT INTO `productos`(nombre_producto, precio, color, stock, descripcion, temporada) VALUES
('Gerberas',10.50 ,'Rojo',10 ,'En el lenguaje de las flores, las gerberas simbolizan alegría, pureza, inocencia, amistad, felicidad y admiración. También pueden expresar la intensidad de los sentimientos.','Primavera');

SELECT * FROM `productos`;

INSERT INTO `pedidos`(fecha_venta, cantidad_pagada, usuarioID, productosID, cantidad_vendida) VALUES
('2024-10-31', 35.90, 2, 1, 1);
INSERT INTO `pedidos`(fecha_venta, cantidad_pagada, usuarioID, productosID, cantidad_vendida) VALUES
('2025-01-15', 10.50, 3, 3, 1);
INSERT INTO `pedidos`(fecha_venta, cantidad_pagada, usuarioID, productosID, cantidad_vendida) VALUES
('2025-01-31', 269.95, 3, 2, 3);
INSERT INTO `pedidos`(fecha_venta, cantidad_pagada, usuarioID, productosID, cantidad_vendida) VALUES
('2024-07-10', 950.62, 2, 2 ,10);
INSERT INTO `pedidos`(fecha_venta, cantidad_pagada, usuarioID, productosID, cantidad_vendida) VALUES
('2025-01-29',52.50,5,4,5);

SELECT * FROM `pedidos`;
