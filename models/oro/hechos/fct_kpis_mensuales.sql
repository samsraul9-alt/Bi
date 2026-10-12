SELECT
    m.anio_mes,
    m.indice_ipc,
    m.inflacion_mensual_pct,
    m.tipo_cambio_bob_usd,
    m.tasa_desempleo_pct,
    m.shock_tarifa,
    m.churn_objetivo_pct,
    m.arpu_objetivo_bob,
    m.nps_objetivo,
    m.tickets_por_1000_clientes_objetivo,
    m.tasa_resolucion_primer_contacto_pct,
    m.tiempo_promedio_resolucion_horas_objetivo
FROM {{ ref('int_macro_metas') }} m