SET AUTOCOMMIT ON;

-- CREACION DE SECUENCIA PARA LAS ATENCIONES
CREATE SEQUENCE seq_codigo_atencion
START WITH 1
INCREMENT BY 1
NOCACHE
NOCYCLE;

-- TRIGGER AFTER INSERT, PARA GENERAR EL CODIGO DE ATENCION SIGUIENDO EL FORMATO: AT-{CLINICA}-{YYYYMMDD}-{SEQ}
CREATE OR REPLACE TRIGGER trg_set_codigo_atencion
AFTER INSERT ON trx_atenciones
FOR EACH ROW
DECLARE
    v_fecha VARCHAR2(8);
    v_seq   VARCHAR2(6);
BEGIN
    -- Formatear fecha (YYYYMMDD)
    v_fecha := TO_CHAR(:NEW.fecha, 'YYYYMMDD');

    -- Obtener secuencia con formato de 4 dígitos
    v_seq := LPAD(seq_codigo_atencion.NEXTVAL, 4, '0');

    -- Actualizar el campo codigo_atencion
    UPDATE trx_atenciones
    SET codigo_atencion = 'AT-' || :NEW.id_unidad || '-' || v_fecha || '-' || v_seq
    WHERE id_atencion = :NEW.id_atencion;
END;
/


-- TRIGGERS PARA VALIDACION DE DATOS

-- VALIDAR QUE LA FECHA DE ATENCION NO PUEDE SER MAYOR A LA ACTUAL
CREATE OR REPLACE TRIGGER trg_check_fecha_atencion
BEFORE INSERT OR UPDATE ON trx_atenciones
FOR EACH ROW
BEGIN
    IF :NEW.fecha > SYSTIMESTAMP THEN
        RAISE_APPLICATION_ERROR(-20001, 'La fecha de atención no puede ser futura.');
    END IF;
END;
/

-- VALIDAR LA FECHA DE FIN DEL SEGURO
CREATE OR REPLACE TRIGGER trg_check_fechas_seguro
BEFORE INSERT OR UPDATE ON trx_paciente_seguros
FOR EACH ROW
BEGIN
    IF :NEW.fecha_fin IS NOT NULL AND :NEW.fecha_fin < :NEW.fecha_inicio THEN
        RAISE_APPLICATION_ERROR(-20002, 'La fecha fin del seguro debe ser posterior a la fecha inicio.');
    END IF;
END;
/

-- VALIDAR PAGOS, EL MONTO DEBE SER POSITIVO Y NO PUEDE SER MAYOR QUE EL MONTO TOTAL DE LA ATENCION
CREATE OR REPLACE TRIGGER trg_check_pago_valido
BEFORE INSERT OR UPDATE ON trx_pagos
FOR EACH ROW
DECLARE
    v_total NUMBER(12,2);
BEGIN
    IF :NEW.monto <= 0 THEN
        RAISE_APPLICATION_ERROR(-20003, 'El monto del pago debe ser mayor a cero.');
    END IF;

    SELECT monto_total INTO v_total
    FROM trx_atenciones
    WHERE id_atencion = :NEW.id_atencion;

    IF :NEW.monto > v_total THEN
        RAISE_APPLICATION_ERROR(-20004, 'El pago no puede ser mayor al total de la atención.');
    END IF;
END;
/

-- VALIDAR QUE SI EL USUARIO DECLARA QUE NO USARA SEGURO 
--EN EL DETALLE DE LOS SERVICIOS BRINDADOS POR ATENCION NO PUEDE HABER UN SERVICIO QUE SEA CUBIERTO POR SEGURO
CREATE OR REPLACE TRIGGER trg_check_seguro_detalle
BEFORE INSERT OR UPDATE ON trx_detalle
FOR EACH ROW
DECLARE
    v_uso_seg CHAR(1);
BEGIN
    SELECT uso_seguro INTO v_uso_seg
    FROM trx_atenciones
    WHERE id_atencion = :NEW.id_atencion;

    IF v_uso_seg = 'N' AND :NEW.id_seguro IS NOT NULL THEN
        RAISE_APPLICATION_ERROR(-20005, 'No puede asociarse un seguro a una atención sin uso de seguro.');
    END IF;
END;
/

-- VALIDAR QUE SI EL USUARIO DICE QUE USARA SEGURO DEBE TENER UN SEGURO CONTRATADO
CREATE OR REPLACE TRIGGER trg_check_paciente_seguro
BEFORE INSERT OR UPDATE ON trx_detalle
FOR EACH ROW
DECLARE
    v_exists NUMBER;
BEGIN
    IF :NEW.id_seguro IS NOT NULL THEN
        SELECT COUNT(*) INTO v_exists
        FROM trx_paciente_seguros ps
        JOIN trx_atenciones a ON a.id_paciente = ps.id_paciente
        WHERE ps.id_seguro = :NEW.id_seguro
          AND a.id_atencion = :NEW.id_atencion
          AND ps.estado = 'ACTIVO';

        IF v_exists = 0 THEN
            RAISE_APPLICATION_ERROR(-20010, 'El seguro no está asociado al paciente o está inactivo.');
        END IF;
    END IF;
END;
/