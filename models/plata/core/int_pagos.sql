SELECT
    p.id_pago,
    p.id_factura,
    p.id_cliente,
    p.fecha_pago,
    p.monto_adeudado_bob,
    p.monto_pagado_bob,
    p.metodo_pago,
    p.estado_pago,
    p.dias_retraso,
    p.intentos_fallidos,
    p.saldo_pendiente_bob,
    p.accion_cobranza,
    
    -- Cliente
    c.region,
    c.segmento_cliente,
    c.churn,
    
    -- Factura
    f.periodo_facturacion,
    f.estado_factura,
    f.monto_total_bob AS monto_factura

FROM {{ ref('stg_pagos') }} p
LEFT JOIN {{ ref('int_clientes') }} c
    ON p.id_cliente = c.id_cliente
LEFT JOIN {{ ref('stg_facturacion') }} f
    ON p.id_factura = f.id_factura