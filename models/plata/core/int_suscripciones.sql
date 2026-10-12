SELECT
    s.id_suscripcion,
    s.id_cliente,
    s.nombre_plan,
    s.nivel_plan,
    s.tipo_contrato,
    s.fecha_inicio_contrato,
    s.fecha_fin_contrato,
    s.servicio_internet,
    s.servicio_telefonia,
    s.lineas_multiples,
    s.seguridad_online,
    s.respaldo_online,
    s.proteccion_dispositivo,
    s.soporte_tecnico_premium,
    s.streaming_tv,
    s.streaming_peliculas,
    s.precio_mensual_base_bob,
    s.facturacion_electronica,
    s.estado,
    s.plan_anterior,
    s.fecha_cambio_plan,
    
    -- Datos del cliente
    c.region,
    c.segmento_cliente,
    c.genero,
    c.edad,
    c.churn

FROM {{ ref('stg_contrataciones') }} s
LEFT JOIN {{ ref('int_clientes') }} c
    ON s.id_cliente = c.id_cliente