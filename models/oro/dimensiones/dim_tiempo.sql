SELECT DISTINCT
    periodo_facturacion AS anio_mes,
    TO_DATE(periodo_facturacion || '-01') AS fecha_inicio_mes,
    YEAR(TO_DATE(periodo_facturacion || '-01')) AS anio,
    MONTH(TO_DATE(periodo_facturacion || '-01')) AS mes,
    QUARTER(TO_DATE(periodo_facturacion || '-01')) AS trimestre
FROM {{ ref('int_facturacion') }}
WHERE periodo_facturacion IS NOT NULL