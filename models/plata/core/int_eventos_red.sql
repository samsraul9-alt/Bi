SELECT
    e.id_evento,
    e.timestamp_evento,
    e.tipo_evento,
    e.severidad,
    e.region,
    e.ciudad,
    e.nodo_id,
    e.latencia_ms,
    e.perdida_paquetes_pct,
    e.usuarios_afectados,
    e.duracion_minutos,
    e.descripcion,
    e.resuelto,
    
    -- Campos útiles
    CASE 
        WHEN e.severidad IN ('alta', 'critica') THEN 1 
        ELSE 0 
    END AS es_evento_critico

FROM {{ ref('stg_eventos_red') }} e