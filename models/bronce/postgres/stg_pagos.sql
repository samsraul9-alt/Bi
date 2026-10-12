SELECT
    id_pago,
    id_factura,
    id_cliente,
    fecha_pago,
    monto_adeudado_bob,
    monto_pagado_bob,
    metodo_pago,
    estado_pago,
    dias_retraso,
    intentos_fallidos,
    saldo_pendiente_bob,
    accion_cobranza
FROM {{ source('postgres', 'pagos') }}