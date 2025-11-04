BEGIN
    -- ELIMINAR LAS TABLAS
    FOR t IN (
        SELECT table_name 
        FROM user_tables 
        WHERE table_name IN (
            'DIM_PACIENTE',
            'DIM_MEDICO',
            'DIM_UNIDADES',
            'DIM_ASEGURADORAS',
            'DIM_SERVICIOS',
            'DIM_SEGUROS',
            'DIM_TIEMPO',
            'DIM_DIAGNOSTICOS',
            'DIM_TIPO_URGENCIA',
            'DIM_INSUMOS',
            'FACT_CONSULTAS_MEDICAS',
            'FACT_INSUMOS'
        )
    ) LOOP
        BEGIN
            EXECUTE IMMEDIATE 'DROP TABLE ' || t.table_name || ' CASCADE CONSTRAINTS PURGE';
        EXCEPTION
            WHEN OTHERS THEN NULL;
        END;
    END LOOP;

END;
/