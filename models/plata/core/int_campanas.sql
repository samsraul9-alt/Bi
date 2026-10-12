SELECT
    r.id_interaccion,
    r.id_cliente,
    r.id_campana,
    r.nombre_campana,
    r.fecha_contacto,
    r.canal,
    r.tipo_oferta,
    r.descuento_porcentaje,
    r.meses_gratis,
    r.upgrade_ofrecido,
    r.equipo_ofrecido,
    r.aceptada,
    r.fecha_respuesta,
    r.motivo_retencion,
    r.retenido_30d,
    r.retenido_60d,
    r.retenido_90d,
    r.costo_campana_bob,
    r.valor_estimado_cliente_bob,
    
    -- Catálogo de campaña
    m.objetivo AS objetivo_campana,
    m.canal_principal,
    m.presupuesto_total_bob,
    
    -- Cliente
    c.region,
    c.segmento_cliente,
    c.churn

FROM {{ ref('stg_campanas_retencion') }} r
LEFT JOIN {{ ref('stg_campanas_maestro') }} m
    ON r.id_campana = m.id_campana
LEFT JOIN {{ ref('int_clientes') }} c
    ON r.id_cliente = c.id_cliente