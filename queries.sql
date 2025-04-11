SELECT id, nombre, stock
FROM productos
WHERE stock < 5;

SELECT 
  SUM(p.precio * dv.cantidad) AS total_ventas
FROM ventas v
JOIN detalle_venta dv ON v.id = dv.venta_id
JOIN productos p ON p.id = dv.producto_id
WHERE v.fecha >= '2025-03-01' AND v.fecha < '2025-04-01';



SELECT c.nombre, COUNT(v.id) AS total_compras
FROM clientes c
JOIN ventas v ON c.id = v.cliente_id
GROUP BY c.id, c.nombre
HAVING COUNT(v.id) = (
    SELECT MAX(contador) FROM (
        SELECT COUNT(*) AS contador
        FROM ventas
        GROUP BY cliente_id
    ) AS sub
);


SELECT p.nombre, SUM(dv.cantidad) AS total_vendidos
FROM productos p
JOIN detalle_venta dv ON p.id = dv.producto_id
GROUP BY p.id, p.nombre
ORDER BY total_vendidos DESC
LIMIT 5;


SELECT *
FROM ventas
WHERE fecha BETWEEN '2025-03-05' AND '2025-03-07';



SELECT c.*
FROM clientes c
LEFT JOIN ventas v ON c.id = v.cliente_id
GROUP BY c.id
HAVING MAX(v.fecha) IS NULL OR MAX(v.fecha) < '2024-10-11';

