SELECT
    c.id_cliente,
    c.msisdn,
    c.genero,
    c.edad,
    c.es_adulto_mayor,
    c.estado_civil,
    c.tiene_dependientes,
    c.numero_dependientes,
    c.ciudad,
    c.region,
    c.codigo_postal,
    c.fecha_registro,
    c.segmento_cliente,
    c.banda_ingreso_estimado,
    c.canal_adquisicion,
    c.estado_cliente,
    
    -- Datos de churn
    COALESCE(ch.churn, 0)                    AS churn,
    ch.fecha_churn,
    ch.motivo_churn,
    ch.antiguedad_meses_al_cierre,
    
    -- Campos calculados
    DATEDIFF('month', c.fecha_registro, CURRENT_DATE()) AS antiguedad_meses_actual

FROM {{ ref('stg_crm_clientes') }} c
LEFT JOIN {{ ref('stg_etiquetas_churn') }} ch
    ON c.id_cliente = ch.id_cliente