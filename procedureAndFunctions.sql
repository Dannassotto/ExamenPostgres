CREATE OR REPLACE PROCEDURE registrar_venta(p_cliente_id INT, p_producto_id INT, p_cantidad INT)
LANGUAGE plpgsql
AS $$
DECLARE
    v_stock INT;
BEGIN
    IF NOT EXISTS (SELECT 1 FROM clientes WHERE id = p_cliente_id) THEN
        RAISE EXCEPTION 'El cliente con ID % no existe.', p_cliente_id;
    END IF;

    SELECT stock INTO v_stock FROM productos WHERE id = p_producto_id;
    IF NOT FOUND THEN
        RAISE EXCEPTION 'El producto con ID % no existe.', p_producto_id;
    END IF;

    IF v_stock < p_cantidad THEN
        RAISE NOTICE 'No hay suficiente stock. Disponible: %, Solicitado: %', v_stock, p_cantidad;
    ELSE
        INSERT INTO ventas(cliente_id, fecha) VALUES(p_cliente_id, NOW());
        
        INSERT INTO detalle_venta(venta_id, producto_id, cantidad)
        VALUES (
            (SELECT MAX(id) FROM ventas),
            p_producto_id,
            p_cantidad
        );

        UPDATE productos SET stock = stock - p_cantidad WHERE id = p_producto_id;
        
        RAISE NOTICE 'Venta registrada exitosamente.';
    END IF;
END;
$$;




CALL registrar_venta(1, 2, 3);
