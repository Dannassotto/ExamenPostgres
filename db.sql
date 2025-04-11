CREATE DATABASE dbtechzone;

\c dbtechzone


CREATE TABLE proveedores (
    id SERIAL PRIMARY KEY,
    nombre CHARACTER VARYING(100) NOT NULL,
    email CHARACTER VARYING(100) UNIQUE,
    telefono CHARACTER VARYING(20),
    direccion CHARACTER VARYING(150)
);

CREATE TABLE categorias (
    id SERIAL PRIMARY KEY,
    nombre CHARACTER VARYING(50) NOT NULL UNIQUE
);

CREATE TABLE productos (
    id SERIAL PRIMARY KEY,
    nombre CHARACTER VARYING(50) NOT NULL,
    categoria_id INTEGER NOT NULL,
    precio NUMERIC(10,2) NOT NULL,
    stock INTEGER NOT NULL,
    proveedor_id INTEGER NOT NULL,
    UNIQUE(nombre, proveedor_id),
    FOREIGN KEY (categoria_id) REFERENCES categorias(id),
    FOREIGN KEY (proveedor_id) REFERENCES proveedores(id)
);

CREATE TABLE clientes (
    id SERIAL PRIMARY KEY,
    nombre CHARACTER VARYING(100) NOT NULL,
    email CHARACTER VARYING(100) UNIQUE NOT NULL,
    telefono CHARACTER VARYING(20)
);

CREATE TABLE ventas (
    id SERIAL PRIMARY KEY,
    cliente_id INTEGER NOT NULL,
    fecha TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

CREATE TABLE detalle_venta (
    id SERIAL PRIMARY KEY,
    venta_id INTEGER NOT NULL,
    producto_id INTEGER NOT NULL,
    cantidad INTEGER NOT NULL,
    FOREIGN KEY (venta_id) REFERENCES ventas(id),
    FOREIGN KEY (producto_id) REFERENCES productos(id)
);
