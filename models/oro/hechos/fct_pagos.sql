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
    p.region,
    p.segmento_cliente,
    p.churn,
    p.periodo_facturacion
FROM {{ ref('int_pagos') }} p