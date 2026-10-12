SELECT
    id_plan,
    nombre_plan,
    nivel,
    precio_mensual_bob,
    gb_incluidos,
    minutos_incluidos,
    sms_incluidos,
    tiene_streaming,
    tiene_roaming,
    vigente_desde,
    vigente_hasta,
    activo
FROM {{ ref('stg_catalogo_planes') }}