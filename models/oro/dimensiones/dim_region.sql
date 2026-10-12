SELECT DISTINCT
    region,
    ciudad
FROM {{ ref('int_clientes') }}
WHERE region IS NOT NULL