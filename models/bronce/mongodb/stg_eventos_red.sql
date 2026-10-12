SELECT
    id_evento,
    timestamp_evento,
    tipo_evento,
    severidad,
    region,
    ciudad,
    nodo_id,
    latencia_ms,
    perdida_paquetes_pct,
    usuarios_afectados,
    duracion_minutos,
    descripcion,
    resuelto
FROM {{ source('mongodb', 'eventos_red') }}