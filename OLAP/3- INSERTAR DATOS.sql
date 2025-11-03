-- INSERT PARA LA DIM_PACIENTE
MERGE INTO dim_paciente d
USING (
    SELECT 
        P.ID_PACIENTE, P.NOMBRE, P.SEXO, P.FECHA_NACIMIENTO, P.EDAD, 
        P.TELEFONO, P.EMAIL, P.DIRECCION,
        DP.NOMBRE AS DEPARTAMENTO,
        M.NOMBRE AS MUNICIPIO,
        D.NOMBRE AS DISTRITO
    FROM TRX_PACIENTES P
    INNER JOIN DISTRITOS D ON P.ID_DISTRITO = D.ID_DISTRITO
    INNER JOIN MUNICIPIOS M ON D.ID_MUNICIPIO = M.ID_MUNICIPIO
    INNER JOIN DEPARTAMENTOS DP ON M.ID_DEPARTAMENTO = DP.ID_DEPARTAMENTO
) src
ON (d.id_paciente = src.id_paciente)
WHEN MATCHED THEN
    UPDATE SET 
        d.nombre = src.nombre,
        d.sexo = src.sexo,
        d.fecha_nacimiento = src.fecha_nacimiento,
        d.edad = src.edad,
        d.telefono = src.telefono,
        d.email = src.email,
        d.direccion = src.direccion,
        d.departamento = src.departamento,
        d.municipio = src.municipio,
        d.distrito = src.distrito
WHEN NOT MATCHED THEN
    INSERT (id_paciente, nombre, sexo, fecha_nacimiento, edad, telefono, email, direccion, departamento, municipio, distrito)
    VALUES (src.id_paciente, src.nombre, src.sexo, src.fecha_nacimiento, src.edad, src.telefono, src.email, src.direccion, src.departamento, src.municipio, src.distrito);


-- INSERT PARA LA DIM_MEDICO
MERGE INTO dim_medico d
USING (
    SELECT 
        M.ID_MEDICO,
        M.NOMBRE,
        M.NUMERO_REGISTRO,
        M.DIRECCION,
        M.TELEFONO,
        M.EMAIL,
        E.NOMBRE AS ESPECIALIDAD
    FROM TRX_MEDICOS M
    LEFT JOIN TRX_MEDICO_ESPECIALIDADES ME ON M.ID_MEDICO = ME.ID_MEDICO
    LEFT JOIN TRX_ESPECIALIDADES E ON ME.ID_ESPECIALIDAD = E.ID_ESPECIALIDAD
) src
ON (d.id_medico = src.id_medico)
WHEN MATCHED THEN
    UPDATE SET 
        d.nombre = src.nombre,
        d.numero_registro = src.numero_registro,
        d.direccion = src.direccion,
        d.telefono = src.telefono,
        d.email = src.email,
        d.especialidad = src.especialidad
WHEN NOT MATCHED THEN
    INSERT (id_medico, nombre, numero_registro, direccion, telefono, email, especialidad)
    VALUES (src.id_medico, src.nombre, src.numero_registro, src.direccion, src.telefono, src.email, src.especialidad);


-- INSERT PARA LA DIM_UNIDADES
MERGE INTO dim_unidades d
USING (
    SELECT 
        U.ID_UNIDAD,
        U.NOMBRE,
        U.DIRECCION,
        D.NOMBRE AS DISTRITO,
        U.TIPO
    FROM TRX_UNIDADES U
    INNER JOIN DISTRITOS D ON U.ID_DISTRITO = D.ID_DISTRITO
) src
ON (d.id_unidad = src.id_unidad)
WHEN MATCHED THEN
    UPDATE SET 
        d.nombre = src.nombre,
        d.direccion = src.direccion,
        d.distrito = src.distrito,
        d.tipo = src.tipo
WHEN NOT MATCHED THEN
    INSERT (id_unidad, nombre, direccion, distrito, tipo)
    VALUES (src.id_unidad, src.nombre, src.direccion, src.distrito, src.tipo);


-- INSERT PARA LA DIM_ASEGURADORAS
MERGE INTO dim_aseguradoras d
USING (
    SELECT
        ID_ASEGURADORA,
        NOMBRE,
        CONTACTO,
        TELEFONO,
        EMAIL,
        DIRECCION
    FROM ASEGURADORAS
) src
ON (d.id_aseguradora = src.id_aseguradora)
WHEN MATCHED THEN
    UPDATE SET 
        d.nombre = src.nombre,
        d.contacto = src.contacto,
        d.telefono = src.telefono,
        d.email = src.email,
        d.direccion = src.direccion
WHEN NOT MATCHED THEN
    INSERT (id_aseguradora, nombre, contacto, telefono, email, direccion)
    VALUES (src.id_aseguradora, src.nombre, src.contacto, src.telefono, src.email, src.direccion);


-- INSERT PARA LA DIM_SERVICIOS
MERGE INTO dim_servicios d
USING (
    SELECT
        S.ID_SERVICIO,
        S.CODIGO_ESTANDAR,
        S.DESCRIPCION,
        TS.NOMBRE AS TIPO_SERVICIO,
        E.NOMBRE AS ESPECIALIDAD,
        S.PRECIO_UNITARIO
    FROM TRX_SERVICIOS S
    INNER JOIN TRX_TIPOS_SERVICIOS TS ON S.ID_TIPO_SERVICIO = TS.ID_TIPO_SERVICIO
    LEFT JOIN TRX_ESPECIALIDADES E ON S.ID_ESPECIALIDAD = E.ID_ESPECIALIDAD
) src
ON (d.id_servicio = src.id_servicio)
WHEN MATCHED THEN
    UPDATE SET 
        d.codigo_estandar = src.codigo_estandar,
        d.descripcion = src.descripcion,
        d.tipo_servicio = src.tipo_servicio,
        d.especialidad = src.especialidad,
        d.precio_unitario = src.precio_unitario
WHEN NOT MATCHED THEN
    INSERT (id_servicio, codigo_estandar, descripcion, tipo_servicio, especialidad, precio_unitario)
    VALUES (src.id_servicio, src.codigo_estandar, src.descripcion, src.tipo_servicio, src.especialidad, src.precio_unitario);

-- INSERT PARA LA DIM_SEGUROS
MERGE INTO dim_seguros d
USING (
    SELECT 
        S.ID_SEGURO,
        S.PLAN,
        A.NOMBRE AS ASEGURADORA
    FROM TRX_SEGUROS S
    INNER JOIN ASEGURADORAS A ON S.ID_ASEGURADORA = A.ID_ASEGURADORA
) src
ON (d.id_seguro = src.id_seguro)
WHEN MATCHED THEN
    UPDATE SET 
        d.plan = src.plan,
        d.aseguradora = src.aseguradora
WHEN NOT MATCHED THEN
    INSERT (id_seguro, plan, aseguradora)
    VALUES (src.id_seguro, src.plan, src.aseguradora);


-- INSERT PARA LA DIM_TIEMPO
MERGE INTO dim_tiempo d
USING (
    SELECT 
        TO_NUMBER(TO_CHAR(TRUNC(fecha), 'YYYYMMDD')) AS id_tiempo,
        TRUNC(fecha) AS fecha,
        EXTRACT(MONTH FROM fecha) AS mes,
        TO_NUMBER(TO_CHAR(fecha, 'Q')) AS trimestre,
        EXTRACT(YEAR FROM fecha) AS anio
    FROM trx_atenciones
    GROUP BY TRUNC(fecha), EXTRACT(MONTH FROM fecha), TO_CHAR(fecha, 'Q'), EXTRACT(YEAR FROM fecha)
) src
ON (d.id_tiempo = src.id_tiempo)
WHEN MATCHED THEN
    UPDATE SET 
        d.fecha = src.fecha,
        d.mes = src.mes,
        d.trimestre = src.trimestre,
        d.anio = src.anio
WHEN NOT MATCHED THEN
    INSERT (id_tiempo, fecha, mes, trimestre, anio)
    VALUES (src.id_tiempo, src.fecha, src.mes, src.trimestre, src.anio);

--INSERT PARA LA DIM_DIAGNOSTICOS
MERGE INTO dim_diagnosticos d
USING (
    SELECT
        ID_DIAGNOSTICO,
        CODIGO AS CODIGO_DIAGNOSTICO,
        DESCRIPCION
    FROM CIE10_DIAGNOSTICOS
) src
ON (d.id_diagnostico = src.id_diagnostico)
WHEN MATCHED THEN
    UPDATE SET 
        d.codigo_diagnostico = src.codigo_diagnostico,
        d.descripcion = src.descripcion
WHEN NOT MATCHED THEN
    INSERT (id_diagnostico, codigo_diagnostico, descripcion)
    VALUES (src.id_diagnostico, src.codigo_diagnostico, src.descripcion);


-- INSER PARA LA DIM_TIPO_URGENCIA
MERGE INTO dim_tipo_urgencia d
USING (
    SELECT 
        ID_TIPO_URGENCIA,
        NOMBRE,
        DESCRIPCION,
        NIVEL_PRIORIDAD
    FROM TRX_TIPO_URGENCIA
) src
ON (d.id_tipo_urgencia = src.id_tipo_urgencia)
WHEN MATCHED THEN
    UPDATE SET 
        d.nombre = src.nombre,
        d.descripcion = src.descripcion,
        d.nivel_prioridad = src.nivel_prioridad
WHEN NOT MATCHED THEN
    INSERT (id_tipo_urgencia, nombre, descripcion, nivel_prioridad)
    VALUES (src.id_tipo_urgencia, src.nombre, src.descripcion, src.nivel_prioridad);


-- INSERT PARA DIM_INSUMOS
MERGE INTO dim_insumos d
USING (
    SELECT 
        i.id_insumo,
        i.nombre,
        i.descripcion,
        i.unidad_medida,
        i.precio_unitario AS precio_unitario_promedio,
        'ACTIVO' AS estado
    FROM trx_insumos i
) src
ON (d.id_insumo = src.id_insumo)
WHEN MATCHED THEN
    UPDATE SET
        d.nombre = src.nombre,
        d.descripcion = src.descripcion,
        d.unidad_medida = src.unidad_medida,
        d.precio_unitario_promedio = src.precio_unitario_promedio,
        d.estado = src.estado
WHEN NOT MATCHED THEN
    INSERT (
        id_insumo,
        nombre,
        descripcion,
        unidad_medida,
        precio_unitario_promedio,
        estado
    )
    VALUES (
        src.id_insumo,
        src.nombre,
        src.descripcion,
        src.unidad_medida,
        src.precio_unitario_promedio,
        src.estado
    );


-- INSERT PARA FACT_CONSULTAS_MEDICAS
MERGE INTO fact_consultas_medicas f
USING (
    SELECT 
        A.ID_ATENCION,
        A.ID_PACIENTE,
        D.ID_MEDICO,
        A.ID_UNIDAD,
        D.ID_SERVICIO,
        D.ID_SEGURO,
        TO_NUMBER(TO_CHAR(TRUNC(A.FECHA), 'YYYYMMDD')) AS ID_TIEMPO,
        AD.ID_DIAGNOSTICO,
        TU.ID_TIPO_URGENCIA,
        NVL(D.COBERTURA, 0) AS COBERTURA_SEGURO,
        NVL(D.TOTAL_SERVICIO, 0) AS COSTO_TOTAL
    FROM TRX_ATENCIONES A
    INNER JOIN TRX_DETALLE D ON A.ID_ATENCION = D.ID_ATENCION
    INNER JOIN ATENCION_DIAGNOSTICOS AD ON A.ID_ATENCION = AD.ID_ATENCION
    LEFT JOIN TRX_TIPO_URGENCIA TU ON A.ID_TIPO_URGENCIA = TU.ID_TIPO_URGENCIA
) src
ON (f.id_atencion = src.id_atencion AND f.id_servicio = src.id_servicio)
WHEN MATCHED THEN
    UPDATE SET 
        f.id_paciente = src.id_paciente,
        f.id_medico = src.id_medico,
        f.id_unidad = src.id_unidad,
        f.id_seguro = src.id_seguro,
        f.id_tiempo = src.id_tiempo,
        f.id_diagnostico = src.id_diagnostico,
        f.id_tipo_urgencia = src.id_tipo_urgencia,
        f.cobertura_seguro = src.cobertura_seguro,
        f.costo_total = src.costo_total
WHEN NOT MATCHED THEN
    INSERT (id_atencion, id_paciente, id_medico, id_unidad, id_servicio, id_seguro, id_tiempo, id_diagnostico, id_tipo_urgencia, cobertura_seguro, costo_total)
    VALUES (src.id_atencion, src.id_paciente, src.id_medico, src.id_unidad, src.id_servicio, src.id_seguro, src.id_tiempo, src.id_diagnostico, src.id_tipo_urgencia, src.cobertura_seguro, src.costo_total);

-- INSERT PARA FACT_INSUMOS
MERGE INTO fact_insumos f
USING (
    SELECT 
        a.id_atencion,
        di.id_insumo,
        di.id_detalle,
        TO_NUMBER(TO_CHAR(TRUNC(di.created_at), 'YYYYMMDD')) AS id_tiempo,
        di.cantidad,
        di.precio_unitario AS costo_unitario,
        di.total_insumo AS costo_total
    FROM trx_detalle_insumos di
    INNER JOIN trx_detalle d ON di.id_detalle = d.id_detalle
    INNER JOIN trx_atenciones a ON d.id_atencion = a.id_atencion
) src
ON (f.id_detalle = src.id_detalle AND f.id_insumo = src.id_insumo)
WHEN MATCHED THEN
    UPDATE SET
        f.id_atencion = src.id_atencion,
        f.id_tiempo = src.id_tiempo,
        f.cantidad = src.cantidad,
        f.costo_unitario = src.costo_unitario,
        f.costo_total = src.costo_total
WHEN NOT MATCHED THEN
    INSERT (
        id_atencion,
        id_insumo,
        id_detalle,
        id_tiempo,
        cantidad,
        costo_unitario,
        costo_total
    )
    VALUES (
        src.id_atencion,
        src.id_insumo,
        src.id_detalle,
        src.id_tiempo,
        src.cantidad,
        src.costo_unitario,
        src.costo_total
    );