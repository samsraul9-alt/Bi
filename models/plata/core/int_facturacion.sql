SELECT
    f.id_factura,
    f.id_cuenta,
    f.id_cliente,
    f.id_suscripcion,
    f.periodo_facturacion,
    f.fecha_emision,
    f.fecha_vencimiento,
    f.cargo_base_bob,
    f.cargo_uso_extra_bob,
    f.cargo_equipo_bob,
    f.cargo_servicios_bob,
    f.descuento_bob,
    f.impuesto_bob,
    f.monto_total_bob,
    f.monto_mes_anterior_bob,
    f.variacion_monto_bob,
    f.variacion_porcentaje,
    f.estado_factura,
    f.moneda,
    
    -- Cliente
    c.region,
    c.segmento_cliente,
    c.churn,
    
    -- Suscripción
    s.nombre_plan,
    s.nivel_plan,
    s.precio_mensual_base_bob

FROM {{ ref('stg_facturacion') }} f
LEFT JOIN {{ ref('int_clientes') }} c
    ON f.id_cliente = c.id_cliente
LEFT JOIN {{ ref('stg_contrataciones') }} s
    ON f.id_suscripcion = s.id_suscripcion