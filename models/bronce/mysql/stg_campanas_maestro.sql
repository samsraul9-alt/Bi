SELECT
    id_campana,
    nombre_campana,
    canal_principal,
    fecha_inicio,
    fecha_fin,
    objetivo,
    presupuesto_total_bob,
    costo_por_contacto_bob,
    estado
FROM {{ source('mysql', 'campanas_maestro') }}