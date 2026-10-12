SELECT
    u.id_uso,
    u.id_cliente,
    u.fecha_uso,
    u.datos_descarga_gb,
    u.datos_subida_gb,
    u.minutos_voz,
    u.minutos_internacionales,
    u.cantidad_sms,
    u.horas_streaming,
    u.uso_pico_gb,
    u.uso_valle_gb,
    u.cantidad_sesiones,
    u.promedio_minutos_sesion,
    
    -- Totales calculados
    (u.datos_descarga_gb + u.datos_subida_gb) AS datos_totales_gb,
    
    -- Cliente
    c.region,
    c.segmento_cliente,
    c.churn

FROM {{ ref('stg_uso_consumo') }} u
LEFT JOIN {{ ref('int_clientes') }} c
    ON u.id_cliente = c.id_cliente