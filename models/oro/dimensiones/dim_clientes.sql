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
    estado_cliente,
    churn,
    fecha_churn,
    motivo_churn,
    antiguedad_meses_al_cierre,
    antiguedad_meses_actual,
    
    -- Clasificación útil para Power BI
    CASE 
        WHEN edad < 25 THEN '18-24'
        WHEN edad BETWEEN 25 AND 34 THEN '25-34'
        WHEN edad BETWEEN 35 AND 44 THEN '35-44'
        WHEN edad BETWEEN 45 AND 54 THEN '45-54'
        WHEN edad BETWEEN 55 AND 64 THEN '55-64'
        ELSE '65+'
    END AS rango_edad

FROM {{ ref('int_clientes') }}