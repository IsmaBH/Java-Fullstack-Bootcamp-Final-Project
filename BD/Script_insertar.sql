USE `jardin_floral_bd`;

-- Inserts para la tabla de usuarios, se agregan 6 Admins y 5 user
INSERT INTO `usuario`(nombre, apePaterno, apeMaterno, telefono, correo, contrasena, rol) VALUES
('Wendy', 'Meneses', 'Hernández', 5536985214, 'wendy1@gmail.com','pwd1234','Admin');
INSERT INTO `usuario`(nombre, apePaterno, apeMaterno, telefono, correo, contrasena, rol) VALUES
('Katherine', 'Reyes', 'Alonso', 5647876459, 'kather@gmail.com','pwd1234','Admin');
INSERT INTO `usuario`(nombre, apePaterno, apeMaterno, telefono, correo, contrasena, rol) VALUES
('Jackeline', 'Montalvo', 'González', 9931882556, 'jmg.1995@gmail.com','pwd1234','Admin');
INSERT INTO `usuario`(nombre, apePaterno, apeMaterno, telefono, correo, contrasena, rol) VALUES
('Marco', 'Medina', 'Díaz', 5627344990, 'marcomedina@gmail.com','pwd1234','Admin');
INSERT INTO `usuario`(nombre, apePaterno, apeMaterno, telefono, correo, contrasena, rol) VALUES
('Diego','Baron','Hernandez',5574986532,'diego@gmail.com','pwd1234','Admin');
INSERT INTO `usuario`(nombre, apePaterno, apeMaterno, telefono, correo, contrasena, rol) VALUES
('Angel','Lira','Gonzalez',5528987868,'angellira@gmail.com','pwd1234','Admin');
INSERT INTO `usuario`(nombre, apePaterno, apeMaterno, telefono, correo, contrasena, rol) VALUES
('Sofía','Hernández','González',5512223242,'algo1@gmail.com','pwd5678','user');
INSERT INTO `usuario`(nombre, apePaterno, apeMaterno, telefono, correo, contrasena, rol) VALUES
('Santiago','García','Rodrígez',5513233343,'algo2@gmail.com','pwd5678','user');
INSERT INTO `usuario`(nombre, apePaterno, apeMaterno, telefono, correo, contrasena, rol) VALUES
('Valentina','Martínez','Fernández',5514243444,'algo3@gmail.com','pwd5678','user');
INSERT INTO `usuario`(nombre, apePaterno, apeMaterno, telefono, correo, contrasena, rol) VALUES
('Mateo','López','Díaz',5515253545,'algo4@gmail.com','pwd5678','user');
INSERT INTO `usuario`(nombre, apePaterno, apeMaterno, telefono, correo, contrasena, rol) VALUES
('Ximena','Rodrígez','García',5516263646,'algo5@gmail.com','pwd5678','user');

-- Inserts para la tabla de productos se agregan 10 productos
INSERT INTO `productos`(nombreproducto, precio, color, stock, descripcion, imagen) VALUES
('Tulipanes',10.50, 'Blanco', 20,'En el lenguaje de las flores, los tulipanes pueden expresar una gran variedad de emociones, como el amor, la amistad, la alegría, la admiración, la pasión, la pureza, la inocencia, el orgullo, la dignidad, el éxito, entre otras.', 'https://ematoader.ro/wp-content/uploads/2020/01/Buchet-Lalele-Roz-Deschis.jpg');
INSERT INTO `productos`(nombreproducto, precio, color, stock, descripcion, imagen) VALUES
('Gerberas',10.50,'Rojo', 10,'En el lenguaje de las flores, las gerberas simbolizan alegría, pureza, inocencia, amistad, felicidad y admiración. También pueden expresar la intensidad de los sentimientos.','https://llevaleflores.com/storage/arrangements/JAR025/thumb_1648496998_jarron-50-gerberas-variadas-02.jpg');
INSERT INTO `productos`(nombreproducto, precio, color, stock, descripcion, imagen) VALUES
('Dalias',10.50,'Amarillo',15,'En el lenguaje de las flores, la dalia simboliza la elegancia, la fuerza, la dignidad, la creatividad, la positividad y el crecimiento. También puede representar el amor eterno, la belleza, la bondad y la fuerza interior.','https://floradeira.es/wp-content/uploads/2019/07/ramo-flores-.dahlias-3.jpg');
INSERT INTO `productos`(nombreproducto, precio, color, stock, descripcion, imagen) VALUES
('Orquideas',10.50,'Amarillo',15,'Las orquídeas suelen considerarse un símbolo de feminidad, ya que su delicadeza y refinada belleza se asocian a la belleza femenina. Además, las orquídeas suelen regalarse a las mujeres en ocasiones especiales, como el Día de la Madre, San Valentín o los cumpleaños, simbolizando amor y afecto.','https://i.pinimg.com/originals/e5/49/0c/e5490c1eb9582fc6659aa5b29e1b9795.jpg');
INSERT INTO `productos`(nombreproducto, precio, color, stock, descripcion, imagen) VALUES
('Girasoles',10.50,'Amarillo',15,'En el lenguaje de las flores, el girasol simboliza la felicidad, la alegría, el positivismo, la vitalidad, la energía, la buena suerte, la salud y la esperanza. También puede representar el amor, la admiración, la honestidad y la transparencia.','https://www.rosatel.mx/cdn/shop/products/R2156.png?v=1661882556');
INSERT INTO `productos`(nombreproducto, precio, color, stock, descripcion, imagen) VALUES
('Rosas',10.50,'Rojo',15,'Las rosas rojas simbolizan amor apasionado e intenso, y son un lenguaje universal para expresar sentimientos románticos. También pueden representar respeto y admiración.','https://rosaprima.nyc3.cdn.digitaloceanspaces.com/Hot_Paris_Conceptual_View.jpg');
INSERT INTO `productos`(nombreproducto, precio, color, stock, descripcion, imagen) VALUES
('Hortensias', 35.90, 'Amarillo', 5, 'En el lenguaje de las flores, la hortensia puede significar gratitud, comprensión, amor, respeto, admiración, pureza, sinceridad, felicidad, amistad, confianza y paz.', 'https://th.bing.com/th/id/R.c5f8ff0d6cfbabc0371f298d9aea0b61?rik=89WBb7NvV67Gsg&pid=ImgRaw&r=0');
INSERT INTO `productos`(nombreproducto, precio, color, stock, descripcion, imagen) VALUES
('Lirios',10.50, 'Azul', 10, 'El lirio (Lilium) es una flor que puede tener diferentes significados dependiendo de su color y de la cultura en la que se encuentre. Los lirios blancos simbolizan pureza, inocencia y belleza.', 'https://i.pinimg.com/originals/4d/ce/15/4dce159b4064a5649c6058ea4c6773df.jpg');
INSERT INTO `productos`(nombreproducto, precio, color, stock, descripcion, imagen) VALUES
('Gypsophila',10.50 ,'Blanco',10 ,'La gipsófila simboliza pureza, inocencia y eternidad. En muchas culturas occidentales, es común en bodas y ceremonias religiosas, representando los nuevos comienzos y la infinita pureza del amor.', 'https://www.floresyplantas.net/wp-content/uploads/ramo-de-gypsophila-paniculata1.jpg');
INSERT INTO `productos`(nombreproducto, precio, color, stock, descripcion, imagen) VALUES
('Cempasúchil',10.50,'Naranja',15,'La flor de cempasúchil es un ícono de México. En el lenguaje de las flores, el cempasúchil se asocia con la vida y la muerte, y su color amarillo se relaciona con el sol.','https://i0.wp.com/thehappening.com/wp-content/uploads/2023/10/flor-de-cempasuchil.jpg?fit=1280%2C720&ssl=1');

-- Inserts para la tabla de pedidos se agregan 5 pedidos
INSERT INTO `pedidos`(fechaventa, cantidadpagada, cantidadvendida) VALUES
('2024-10-31', 35.90, 2);
INSERT INTO `pedidos`(fechaventa, cantidadpagada, cantidadvendida) VALUES
('2025-01-15', 10.50, 3);
INSERT INTO `pedidos`(fechaventa, cantidadpagada, cantidadvendida) VALUES
('2025-01-31', 269.95, 3);
INSERT INTO `pedidos`(fechaventa, cantidadpagada, cantidadvendida) VALUES
('2024-07-10', 950.62, 2);
INSERT INTO `pedidos`(fechaventa, cantidadpagada, cantidadvendida) VALUES
('2025-01-29',52.50,5);

-- Inserts para la tabla de categorias se agregan 4 de forma estandar (las estaciones del año)
INSERT INTO `categorias`(nombrecategoria, descripcioncategoria) VALUES ('Primavera','Esta temporada se identifica tradicionalmente con el florecimiento de la flora, el deshielo, la floración de las plantas, el despertar de los animales en hibernación. Estas características han hecho que sea usada como una metáfora de la renovación de la vida o de su primer desarrollo.');
INSERT INTO `categorias`(nombrecategoria, descripcioncategoria) VALUES ('Verano','El verano se asocia principalmente con la abundancia, la fertilidad y la plenitud, de igual manera está relacionado con el elemento fuego y simboliza la energía, la acción y la transformación.');
INSERT INTO `categorias`(nombrecategoria, descripcioncategoria) VALUES ('Otoño','El otoño se presenta como una época de renovación y cambio, donde los poetas reflexionan sobre la fugacidad de la vida y la inevitabilidad de la muerte. La estación también es vista como un momento de preparación para los cambios venideros, tanto en el mundo natural como en el personal.');
INSERT INTO `categorias`(nombrecategoria, descripcioncategoria) VALUES ('Invierno','El invierno suele tener un significado de melancolía, tristeza y soledad, representado como una estación que se asocia con el final de ciclos pero también como un momento para la calma y la introspección, permitiendo reflexionar y encontrar inspiración en la quietud del paisaje invernal.');

-- Inserts para la tabla de productos_has_categorias se agregan las relaciones de los productos registrados
INSERT INTO `productos_has_categorias`(productos_productosid,categorias_categoriasid) VALUES (1,1);
INSERT INTO `productos_has_categorias`(productos_productosid,categorias_categoriasid) VALUES (2,1);
INSERT INTO `productos_has_categorias`(productos_productosid,categorias_categoriasid) VALUES (2,2);
INSERT INTO `productos_has_categorias`(productos_productosid,categorias_categoriasid) VALUES (2,3);
INSERT INTO `productos_has_categorias`(productos_productosid,categorias_categoriasID) VALUES (3,2);
INSERT INTO `productos_has_categorias`(productos_productosid,categorias_categoriasID) VALUES (3,3);
INSERT INTO `productos_has_categorias`(productos_productosid,categorias_categoriasID) VALUES (4,1);
INSERT INTO `productos_has_categorias`(productos_productosid,categorias_categoriasID) VALUES (5,2);
INSERT INTO `productos_has_categorias`(productos_productosid,categorias_categoriasID) VALUES (6,1);
INSERT INTO `productos_has_categorias`(productos_productosid,categorias_categoriasID) VALUES (6,2);
INSERT INTO `productos_has_categorias`(productos_productosid,categorias_categoriasID) VALUES (6,3);
INSERT INTO `productos_has_categorias`(productos_productosid,categorias_categoriasID) VALUES (6,4);
INSERT INTO `productos_has_categorias`(productos_productosid,categorias_categoriasID) VALUES (7,1);
INSERT INTO `productos_has_categorias`(productos_productosid,categorias_categoriasID) VALUES (7,2);
INSERT INTO `productos_has_categorias`(productos_productosid,categorias_categoriasID) VALUES (7,3);
INSERT INTO `productos_has_categorias`(productos_productosid,categorias_categoriasID) VALUES (8,1);
INSERT INTO `productos_has_categorias`(productos_productosid,categorias_categoriasID) VALUES (8,2);
INSERT INTO `productos_has_categorias`(productos_productosid,categorias_categoriasID) VALUES (9,2);
INSERT INTO `productos_has_categorias`(productos_productosid,categorias_categoriasID) VALUES (10,3);

-- Inserts para la tabla de pedidos_has_productos aqui se agregaran las relaciones de pedidos y productos (Pendiente)
