INSERT INTO proveedores(nombre, email, telefono, direccion ) values
('Samsung', 'samsung@gmail.com', '310248566','calle #2 mnz 1' ),
('Lg', 'lg@gmail.com', '31459756685','calle #9 mnz 2' ),
('Lenovo', 'lenovo@gmail.com', '3102965663','calle #7 mnz 6' ),
('HP', 'hp@gmail.com', '3102485662', 'calle #5 mnz 3' ),
('mabe', 'mabe@gmail.com', '3102485767', 'calle #4 mnz 9' ),
('Haceb', 'haceb@gmail.com', '310248566', 'calle #6 mnz 4' ),
('Apple', 'apple@techzone.com', '3101112233', 'Avenida Tech #101'),
('Asus', 'asus@techzone.com', '3104445566', 'Carrera 10 #45'),
('Acer', 'acer@techzone.com', '3107778899', 'Calle 20 #15'),
('Dell', 'dell@techzone.com', '3109994500', 'Zona Industrial'),
('Xiaomi', 'xiaomi@techzone.com', '31145122922', 'Parque Comercial 3, local 10'),
('Sony', 'sony@techzone.com', '3113334444', 'Centro Empresarial Torre A'),
('Huawei', 'huawei@techzone.com', '3115556698', 'Diagonal 8 #12'),
('Intel', 'intel@techzone.com', '3127778888', 'Carrera 30 #50'),
('Logitech', 'logitech@techzone.com', '312999850', 'Avenida Central #60');

INSERT INTO categorias(nombre) VALUES
('Laptops'),
('Telefonos'),
('Tablets'),
('Auriculares'),
('Teclados'),
('Monitores'),
('Cámaras'),
('Accesorios'),
('Componentes'),
('Smartwatches'),
('Consolas'),
('Impresoras'),
('Almacenamiento'),
('Cables'),
('Software');

INSERT INTO productos(nombre, categoria_id, precio, stock, proveedor_id) VALUES
('Galaxy S22', 2, 3500000, 10, 1),
('iPhone 14', 2, 4800000, 8, 7),
('Laptop Lenovo ', 1, 2800000, 15, 3),
('HP book', 1, 3200000, 7, 4),
('Xiaomi Redmi Note 11', 2, 1500000, 20, 11),
('Smart TV LG 55"', 6, 4000000, 5, 2),
('Monitor Dell 27"', 6, 1200000, 10, 10),
('AirPods Pro', 4, 900000, 12, 7),
('Teclado Logitech', 5, 350000, 18, 15),
('Memoria USB 64GB', 13, 45000, 50, 9),
('Router Asus ', 8, 600000, 9, 8),
('Cámara Sony ', 7, 4500000, 3, 12),
('Disco SSD 1TB Intel', 13, 520000, 10, 14),
('Smartwatch Huawei ', 10, 1100000, 6, 13),
('Impresora Epson ', 12, 890000, 4, 4);

INSERT INTO clientes(nombre, email, telefono) VALUES
('Danna Guerrero', 'danna.guerrero@gmail.com', '3105672345'),
('Andres Ramírez', 'aramirez@gmail.com', '3112233445'),
('Cristian Díaz', 'camila.diaz@hotmail.com', '3201234567'),
('Carlos Gómez', 'cgomez@gmail.com', '3109876543'),
('Sofía López', 'sofia.lopez@outlook.com', '3193456789'),
('Mateo Ríos', 'mateo.rios@gmail.com', '3101122334'),
('Valentina Soto', 'valentina.soto@yahoo.com', '3009988776'),
('Marcela Sánchez', 'msanchez@gmail.com', '3113344556'),
('Laura Méndez', 'laura.mendez@gmail.com', '3125566778'),
('Esteban Vargas', 'esteban.vargas@gmail.com', '3142233445'),
('Lucía Romero', 'lucia.romero@gmail.com', '3107654321'),
('Felipe Castillo', 'felipe.castillo@gmail.com', '3156677889'),
('Natalia Herrera', 'natalia.herrera@gmail.com', '3168899001'),
('Tomás Reyes', 'tomas.reyes@gmail.com', '3172233445'),
('Juliana Cárdenas', 'juliana.cardenas@gmail.com', '3185566778');

INSERT INTO ventas(cliente_id, fecha) VALUES
(1, '2025-03-01 10:30:00'),
(1, '2025-03-02 14:00:00'),
(1, '2025-03-03 09:20:00'),
(2, '2025-03-01 11:00:00'),
(3, '2025-03-02 09:15:00'),
(4, '2025-03-03 15:45:00'),
(5, '2025-03-05 16:10:00'),
(6, '2025-03-06 14:50:00'),
(7, '2025-03-06 10:00:00'),
(8, '2025-03-07 13:35:00'),
(9, '2025-03-07 17:20:00'),
(10, '2025-03-08 09:00:00');

INSERT INTO detalle_venta(venta_id, producto_id, cantidad) VALUES
(1, 1, 1),
(1, 10, 2),
(2, 3, 1),
(3, 2, 1),
(3, 9, 1),
(4, 6, 1),
(5, 5, 2),
(6, 7, 1),
(7, 8, 1),
(8, 11, 1),
(9, 12, 1),
(10, 13, 2);



INSERT INTO ventas(cliente_id, fecha) VALUES
(1, '2025-03-02 14:00:00'),
(1, '2025-03-03 09:20:00');