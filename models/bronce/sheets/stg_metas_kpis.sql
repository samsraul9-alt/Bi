SELECT
    anio_mes,
    churn_objetivo_pct,
    arpu_objetivo_bob,
    nps_objetivo,
    tickets_por_1000_clientes_objetivo,
    tasa_resolucion_primer_contacto_pct,
    tiempo_promedio_resolucion_horas_objetivo
FROM {{ source('sheets', 'metas_kpis_globales') }}