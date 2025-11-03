-- ===========================================================
-- LIMPIEZA DE OBJETOS EXISTENTES (TABLAS, FUNCIONES, VISTAS)
-- ===========================================================
BEGIN
    -- ELIMINAR LAS TABLAS
    FOR t IN (
        SELECT table_name 
        FROM user_tables 
        WHERE table_name IN (
            'TRX_PAGOS',
            'TRX_DETALLE_INSUMOS',
            'TRX_DETALLE',
            'ATENCION_DIAGNOSTICOS',
            'TRX_DATOS_PRELIMINARES',
            'TRX_ATENCIONES',
            'TRX_TIPO_URGENCIA',
            'TRX_SEGURO_SERVICIOS',
            'TRX_SERVICIOS',
            'TRX_TIPOS_SERVICIOS',
            'TRX_PACIENTE_SEGUROS',
            'TRX_SEGUROS',
            'ASEGURADORAS',
            'TRX_UNIDADES',
            'TRX_MEDICO_ESPECIALIDADES',
            'TRX_MEDICOS',
            'TRX_ESPECIALIDADES',
            'CONTACTOS_EMERGENCIA',
            'TRX_PACIENTES',
            'TRX_INSUMOS',
            'CIE10_DIAGNOSTICOS',
            'DISTRITOS',
            'MUNICIPIOS',
            'DEPARTAMENTOS'
        )
    ) LOOP
        BEGIN
            EXECUTE IMMEDIATE 'DROP TABLE ' || t.table_name || ' CASCADE CONSTRAINTS PURGE';
        EXCEPTION
            WHEN OTHERS THEN NULL;
        END;
    END LOOP;

    -- ELIMINAR FUNCIONES
    FOR f IN (SELECT object_name FROM user_objects WHERE object_type = 'FUNCTION') LOOP
        BEGIN
            EXECUTE IMMEDIATE 'DROP FUNCTION ' || f.object_name;
        EXCEPTION
            WHEN OTHERS THEN NULL;
        END;
    END LOOP;

    FOR t IN (
        SELECT object_name 
        FROM user_objects 
        WHERE object_type = 'TRIGGER'
    ) LOOP
        BEGIN
            EXECUTE IMMEDIATE 'DROP TRIGGER ' || t.object_name;
        EXCEPTION
            WHEN OTHERS THEN NULL;
        END;
    END LOOP;


    EXECUTE IMMEDIATE 'DROP SEQUENCE seq_codigo_atencion';
    EXCEPTION
    WHEN OTHERS THEN NULL;

END;
/