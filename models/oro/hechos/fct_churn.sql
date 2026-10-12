SELECT
    id_cliente,
    churn,
    fecha_churn,
    motivo_churn,
    estado_cliente,
    antiguedad_meses_al_cierre,
    region,
    segmento_cliente,
    genero,
    edad,
    rango_edad,
    banda_ingreso_estimado,
    canal_adquisicion
FROM {{ ref('dim_clientes') }}
WHERE churn = 1