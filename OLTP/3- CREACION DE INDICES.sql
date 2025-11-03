-- ================================================
-- INDICES PARA OPTIMIZAR LOS JOIN
-- ================================================

-- MUNICIPIOS
CREATE INDEX idx_municipios_departamento ON municipios(id_departamento);

-- DISTRITOS
CREATE INDEX idx_distritos_municipio ON distritos(id_municipio);

-- PACIENTES
CREATE INDEX idx_pacientes_distrito ON trx_pacientes(id_distrito);

-- CONTACTOS DE EMERGENCIA
CREATE INDEX idx_contactos_paciente ON contactos_emergencia(id_paciente);

-- RELACIÓN MÉDICO-ESPECIALIDAD
CREATE INDEX idx_me_medico ON trx_medico_especialidades(id_medico);
CREATE INDEX idx_me_especialidad ON trx_medico_especialidades(id_especialidad);

-- UNIDADES (SEDE)
CREATE INDEX idx_unidades_distrito ON trx_unidades(id_distrito);

-- SEGUROS
CREATE INDEX idx_seguro_aseguradora ON trx_seguros(id_aseguradora);

-- PACIENTE-SEGURO
CREATE INDEX idx_ps_paciente ON trx_paciente_seguros(id_paciente);
CREATE INDEX idx_ps_seguro ON trx_paciente_seguros(id_seguro);

-- SERVICIOS
CREATE INDEX idx_servicio_tipo ON trx_servicios(id_tipo_servicio);
CREATE INDEX idx_servicio_especialidad ON trx_servicios(id_especialidad);

-- SEGURO-SERVICIO
CREATE INDEX idx_ss_seguro ON trx_seguro_servicios(id_seguro);
CREATE INDEX idx_ss_servicio ON trx_seguro_servicios(id_servicio);

-- ATENCIONES
CREATE INDEX idx_atencion_paciente ON trx_atenciones(id_paciente);
CREATE INDEX idx_atencion_unidad ON trx_atenciones(id_unidad);
CREATE INDEX idx_atencion_tipo_urgencia ON trx_atenciones(id_tipo_urgencia);

-- DATOS PRELIMINARES
CREATE INDEX idx_dp_paciente ON trx_datos_preliminares(id_paciente);

-- ATENCION - DIAGNOSTICO
CREATE INDEX idx_ad_diagnostico ON atencion_diagnosticos(id_diagnostico);

-- DETALLE ATENCION
CREATE INDEX idx_detalle_atencion ON trx_detalle(id_atencion);
CREATE INDEX idx_detalle_servicio ON trx_detalle(id_servicio);
CREATE INDEX idx_detalle_seguro ON trx_detalle(id_seguro);
CREATE INDEX idx_detalle_medico ON trx_detalle(id_medico);

-- DETALLE INSUMOS
CREATE INDEX idx_di_detalle ON trx_detalle_insumos(id_detalle);
CREATE INDEX idx_di_insumo ON trx_detalle_insumos(id_insumo);

-- PAGOS
CREATE INDEX idx_pago_atencion ON trx_pagos(id_atencion);

-- ================================================
-- INDICES PARA OPTIMIZAR BUSQUEDAS
-- ================================================
CREATE INDEX idx_pacientes_nombre ON trx_pacientes(nombre);
CREATE INDEX idx_medicos_nombre ON trx_medicos(nombre);
CREATE INDEX idx_especialidades_nombre ON trx_especialidades(nombre);
CREATE INDEX idx_servicios_descripcion ON trx_servicios(descripcion);
CREATE INDEX idx_insumos_nombre ON trx_insumos(nombre);
CREATE INDEX idx_diagnosticos_codigo ON cie10_diagnosticos(codigo);

CREATE INDEX idx_atenciones_fecha ON trx_atenciones(fecha);
CREATE INDEX idx_pagos_fecha ON trx_pagos(fecha_pago);
CREATE INDEX idx_dp_fecha ON trx_datos_preliminares(fecha_registro);

-- paciente + fecha
CREATE INDEX idx_atencion_paciente_fecha ON trx_atenciones(id_paciente, fecha);
-- Servicios filtrados por tipo y especialidad
CREATE INDEX idx_servicios_tipo_esp ON trx_servicios(id_tipo_servicio, id_especialidad);
-- Detalles agrupados por atención y servicio
CREATE INDEX idx_detalle_atencion_servicio ON trx_detalle(id_atencion, id_servicio);
