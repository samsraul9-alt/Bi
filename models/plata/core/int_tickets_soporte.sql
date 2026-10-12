SELECT
    t.id_ticket,
    t.id_cliente,
    t.fecha_creacion,
    t.fecha_resolucion,
    t.canal,
    t.categoria,
    t.motivo,
    t.descripcion_es,
    t.prioridad,
    t.estado,
    t.minutos_resolucion,
    t.resolucion_primer_contacto,
    t.puntaje_satisfaccion,
    t.equipo_agente,
    t.reabierto,
    t.cantidad_interacciones,
    
    -- Cliente
    c.region,
    c.segmento_cliente,
    c.churn,
    c.motivo_churn

FROM {{ ref('stg_soporte_tickets') }} t
LEFT JOIN {{ ref('int_clientes') }} c
    ON t.id_cliente = c.id_cliente