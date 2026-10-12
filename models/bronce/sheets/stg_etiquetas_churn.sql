SELECT
    id_cliente,
    churn,
    fecha_churn,
    motivo_churn,
    estado_cliente,
    antiguedad_meses_al_cierre
FROM {{ source('sheets', 'etiquetas_churn') }}