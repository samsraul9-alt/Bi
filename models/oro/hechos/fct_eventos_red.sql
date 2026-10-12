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
    e.resuelto,
    e.es_evento_critico
FROM {{ ref('int_eventos_red') }} e