SELECT
    id_cliente,
    msisdn,
    genero,
    edad,
    es_adulto_mayor,
    estado_civil,
    tiene_dependientes,
    numero_dependientes,
    ciudad,
    region,
    codigo_postal,
    fecha_registro,
    segmento_cliente,
    banda_ingreso_estimado,
    canal_adquisicion,
    estado_cliente
FROM {{ source('postgres', 'crm_clientes') }}