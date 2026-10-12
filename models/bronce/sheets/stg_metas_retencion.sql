SELECT
    id_meta,
    region,
    anio_mes,
    base_activa_objetivo,
    tasa_churn_objetivo_pct,
    clientes_retenidos_objetivo,
    arpu_objetivo_bob,
    presupuesto_retencion_bob,
    responsable_comercial,
    fecha_ultima_actualizacion,
    comentario
FROM {{ source('sheets', 'metas_retencion_region_mes') }}