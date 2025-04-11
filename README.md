# 🛒 TechZone - Sistema de Gestión de Inventario

## 📌 Descripción del Proyecto

TechZone es un sistema de gestión de inventario para una tienda de tecnología desarrollado en PostgreSQL.  
Su propósito es facilitar el manejo de productos, ventas, clientes y proveedores, brindando control sobre el stock, análisis de ventas y registros de clientes.

Incluye funcionalidades como:
- Registro de productos, clientes, proveedores y ventas.
- Control de stock en tiempo real.
- Consultas analíticas para identificar productos más vendidos y clientes frecuentes.
- Procedimientos y funciones almacenadas para automatizar procesos.

---

## 🧩 Modelo Entidad-Relación

![modelo_er](C:\Users\Usuario\OneDrive\Escritorio\Examen\modelo_er.png)

Este modelo representa la estructura y relaciones entre las tablas principales del sistema: `productos`, `clientes`, `ventas`, `detalle_venta`, `categorías` y `proveedores`.

---

## 🛠 Instrucciones para importar y ejecutar en PostgreSQL

1. Abre tu gestor SQL (como PgAdmin o terminal).
2. Crea la base de datos:  
   ```sql
   CREATE DATABASE dbtechzone;
   ```
3. Conéctate a la base de datos:
   ```bash
   \c dbtechzone
   ```
4. Ejecuta los scripts en el siguiente orden:

   - `db.sql` → Crea todas las tablas.
   - `insert.sql` → Inserta datos de prueba en cada tabla.
   - `queries.sql` → Contiene consultas útiles para análisis y reportes.
   - `procedure.sql` → Crea procedimientos almacenados y funciones administrativas.

---

## 📄 Descripción de los archivos

- **`db.sql`**:  
  Define la estructura de la base de datos, con todas las tablas y relaciones (claves primarias y foráneas).

- **`insert.sql`**:  
  Inserta registros de prueba para productos, clientes, ventas, proveedores, etc.

- **`queries.sql`**:  
  Incluye consultas analíticas, como:
  -  Listar los productos con stock menor a 5 unidades. 
  - Calcular ventas totales de un mes específico.
  - Obtener el cliente con más compras realizadas. 
  - Listar los 5 productos más vendidos. 
  - Consultar ventas realizadas en un rango de fechas de tres Días y un Mes. 
  - Identificar clientes que no han comprado en los últimos 6 meses.
  
- **`procedureAndFunctions.sql`**:  
  Contiene un procedimiento almacenado llamado `registrar_venta` que:
  - Valida la existencia del cliente.
  - Verifica si hay stock suficiente.
  - Registra la venta y los detalles si todo es correcto.
  - Notifica con mensajes si hay errores o falta de stock.

---

## ▶️ Ejemplo de ejecución del procedimiento y consultas

### Ejecutar una consulta:
```sql
SELECT nombre, SUM(cantidad) AS total_vendido
FROM productos p
JOIN detalle_venta d ON p.id = d.producto_id
GROUP BY nombre
ORDER BY total_vendido DESC
LIMIT 5;
```

### Llamar al procedimiento `registrar_venta`:
```sql
CALL registrar_venta(1, 2, 3);

```

Si el cliente o producto no existe, o no hay stock suficiente, se mostrará un mensaje de error usando `RAISE NOTICE`.

---

💡 **Autor**: Danna  
📆 Proyecto académico – 2025  
📚 PostgreSQL | SQL | Gestión de Inventario
