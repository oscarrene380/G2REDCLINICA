/*
* CREANDO ESTRUCTURA OLAP
*/
CREATE TABLE dim_paciente(
    id_paciente NUMBER NOT NULL,
    nombre VARCHAR2(100) NOT NULL,
    sexo CHAR(1),
    fecha_nacimiento DATE NOT NULL,
    edad INT NOT NULL,
    telefono VARCHAR2(15),
    email VARCHAR2(100),
    direccion VARCHAR2(200),
    departamento  VARCHAR2(50),
    municipio  VARCHAR2(50),
    distrito  VARCHAR2(50)
);

CREATE TABLE dim_medico (
    id_medico NUMBER,
    nombre VARCHAR2(100),
    numero_registro VARCHAR2(50),
    direccion VARCHAR2(200),
    telefono VARCHAR2(15),
    email VARCHAR2(100),
    especialidad VARCHAR2(100)
);

CREATE TABLE dim_unidades (
    id_unidad NUMBER,
    nombre VARCHAR2(100),
    direccion VARCHAR2(200),
    distrito VARCHAR2(50),
    tipo VARCHAR2(50)
);

CREATE TABLE dim_aseguradoras (
    id_aseguradora   NUMBER ,
    nombre VARCHAR2(100),
    contacto VARCHAR2(100),
    telefono VARCHAR2(20),
    email VARCHAR2(100),
    direccion VARCHAR2(200)
);

CREATE TABLE dim_servicios(
    id_servicio NUMBER,
    codigo_estandar VARCHAR2(50),
    descripcion VARCHAR2(100),
    tipo_servicio VARCHAR2(100),
    especialidad VARCHAR2(100),
    precio_unitario NUMBER(10, 2)
);

CREATE TABLE dim_seguros(
    id_seguro NUMBER,
    plan VARCHAR2(50),
    aseguradora VARCHAR2(100)
);

CREATE TABLE dim_tiempo(
    id_tiempo NUMBER,
    fecha DATE,
    mes INT,
    trimestre INT,
    anio INT
);

CREATE TABLE dim_diagnosticos(
    id_diagnostico NUMBER,
    codigo_diagnostico VARCHAR2(20),
    descripcion VARCHAR2(200)
);

CREATE TABLE dim_tipo_urgencia (
    id_tipo_urgencia NUMBER,
    nombre VARCHAR(50),
    descripcion VARCHAR(150),
    nivel_prioridad NUMBER
);

CREATE TABLE dim_insumos (
    id_insumo NUMBER PRIMARY KEY,
    nombre VARCHAR2(100) NOT NULL,
    descripcion VARCHAR2(200),
    unidad_medida VARCHAR2(50),
    precio_unitario_promedio NUMBER(10,2),
    estado VARCHAR2(20) DEFAULT 'ACTIVO' CHECK (estado IN ('ACTIVO','INACTIVO'))
);

CREATE TABLE fact_consultas_medicas(
    id_atencion NUMBER,
    id_paciente NUMBER,
    id_medico NUMBER,
    id_unidad NUMBER,
    id_servicio NUMBER,
    id_seguro NUMBER,
    id_tiempo NUMBER,
    id_diagnostico NUMBER,
    id_tipo_urgencia NUMBER,
    cobertura_seguro NUMBER(10, 2),
    costo_total NUMBER(10, 2)
);

CREATE TABLE fact_insumos (
    id_atencion NUMBER,
    id_insumo NUMBER,
    id_detalle NUMBER,
    id_tiempo NUMBER,
    cantidad NUMBER(10,2),
    costo_unitario NUMBER(10,2),
    costo_total NUMBER(12,2)
);
