SELECT
    id_ticket,
    id_cliente,
    fecha_creacion,
    fecha_resolucion,
    canal,
    categoria,
    motivo,
    descripcion_es,
    prioridad,
    estado,
    minutos_resolucion,
    resolucion_primer_contacto,
    puntaje_satisfaccion,
    equipo_agente,
    reabierto,
    cantidad_interacciones
FROM {{ source('mongodb', 'soporte_tickets') }}