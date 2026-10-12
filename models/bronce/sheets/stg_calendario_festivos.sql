SELECT
    fecha,
    nombre_evento,
    tipo,
    impacto_esperado,
    campana_asociada
FROM {{ source('sheets', 'calendario_festivos_campanas') }}