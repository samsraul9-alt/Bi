SELECT
    m.anio_mes,
    m.indice_ipc,
    m.inflacion_mensual_pct,
    m.tipo_cambio_bob_usd,
    m.tasa_desempleo_pct,
    m.shock_tarifa,
    m.pib_crecimiento_anual_pct,
    
    -- Metas de KPIs globales
    k.churn_objetivo_pct,
    k.arpu_objetivo_bob,
    k.nps_objetivo,
    k.tickets_por_1000_clientes_objetivo,
    k.tasa_resolucion_primer_contacto_pct,
    k.tiempo_promedio_resolucion_horas_objetivo

FROM {{ ref('stg_macro_mensual') }} m
LEFT JOIN {{ ref('stg_metas_kpis') }} k
    ON m.anio_mes = k.anio_mes