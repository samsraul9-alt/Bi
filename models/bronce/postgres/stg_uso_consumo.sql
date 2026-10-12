SELECT
    id_uso,
    id_cliente,
    fecha_uso,
    datos_descarga_gb,
    datos_subida_gb,
    minutos_voz,
    minutos_internacionales,
    cantidad_sms,
    horas_streaming,
    uso_pico_gb,
    uso_valle_gb,
    cantidad_sesiones,
    promedio_minutos_sesion
FROM {{ source('postgres', 'uso_consumo') }}