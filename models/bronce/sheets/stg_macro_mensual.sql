SELECT
    anio_mes,
    indice_ipc,
    inflacion_mensual_pct,
    tipo_cambio_bob_usd,
    tasa_desempleo_pct,
    shock_tarifa,
    pib_crecimiento_anual_pct
FROM {{ source('sheets', 'macro_mensual') }}