# f110-2020
# 1. CABECERA (A)
- DATOS DE USUARIO
- NOMBRES y APELLIDOS
- DOMICILIO
- DOC. DE IDENTIDAD: (TIPO/NUMERO/LUGAR DE EXPEDICION)

QUERY

``
SELECT c.nombre, c.ap_paterno, c.ap_materno, c.ap_casada, c.direccion,
c.tipo_documento, c.nro_documento, CURRENT_DATE as FECHA_PRESENTACION
FROM contribuyente c
WHERE c.id_contribuyente = 1
``

# 2. CONSULTAR DATOS DEL FORMULARIO 110 (B)

- DATOS DEL FORMULARIO
- DATOS DE EMPLEADOR DEL CONTRIBUYENTE (1)
- NIT
- RAZON SOCIAL
- DOMICILIO
QUERY 

``
SELECT e.nit, e.nombre as razon_social, e.direccion as domicilio
FROM empleador as e
JOIN formulario f on f.id_empleador = e.id_empleador
JOIN contribuyente c on c.id_contribuyente = f.id_contribuyente
WHERE f.id_contribuyente = 1 AND f.id_formulario = 1
``


# TODAS LAS FACTURAS DEL FORM 110 (C)
``
SELECT f.*
FROM factura f
WHERE f.id_formulario = 1 
``
> Adicionalmente con el parametro "factura_electronica", se pueden elegir las facturas manuales(0) o electronicas(1)

# IMPORTE TOTAL

``
SELECT sum(f.importe) as totalFROM factura f WHERE f.id_formulario = 1
``

