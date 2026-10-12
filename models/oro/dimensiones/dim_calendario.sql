SELECT
    fecha,
    nombre_evento,
    tipo,
    impacto_esperado,
    campana_asociada
FROM {{ ref('stg_calendario_festivos') }}