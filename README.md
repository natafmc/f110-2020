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
