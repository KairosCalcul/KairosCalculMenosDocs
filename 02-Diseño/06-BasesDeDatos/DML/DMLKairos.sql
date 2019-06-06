#Entidades fuertes


INSERT INTO kairosbd.area(nombre_area, estado, url_logo)
VALUES("Teleinformática", "Activo", "https://4.bp.blogspot.com/-T4Mzh-5auV0/WPJQxc9Z36I/AAAAAAAAA6M/TbSw1I971WUKuxKl3VLmHpGI3pNgo3PbQCLcB/s1600/teleinformatica.jpg");

INSERT INTO kairosbd.area(nombre_area, estado, url_logo)
VALUES("Telecomunicaciones", "Activo", "https://4.bp.blogspot.com/-s5T_p912Nm4/WPJQxVpKEJI/AAAAAAAAA6Q/nfLtTdec8G8IPOoDGLpETk6hqW1tZ6pHgCLcB/s1600/telecomunicciones.jpg");

INSERT INTO kairosbd.area(nombre_area, estado, url_logo)
VALUES("Electrónica", "Activo", "https://3.bp.blogspot.com/-HNNa42ThQyA/WPJQtsBl_II/AAAAAAAAA6E/zsSU2p2DqzgqpWuDiB1gaJZOJ_UalzK-gCLcB/s1600/electronica.jpg");

INSERT INTO kairosbd.area(nombre_area, estado, url_logo)
VALUES("Electricidad", "Activo", "https://4.bp.blogspot.com/-r7llt33jnUo/WPJQtr1flkI/AAAAAAAAA6I/b8C08-k9m083aReU2AdUjVt4GkfM_aOcQCLcB/s1600/electri2.jpg");


INSERT INTO kairosbd.dia(nombre_dia, estado)
VALUES("Lunes", "Activo");

INSERT INTO kairosbd.dia(nombre_dia, estado)
VALUES("Martes", "Activo");

INSERT INTO kairosbd.dia(nombre_dia, estado)
VALUES("Miércoles", "Activo");

INSERT INTO kairosbd.dia(nombre_dia, estado)
VALUES("Jueves", "Activo");

INSERT INTO kairosbd.dia(nombre_dia, estado)
VALUES("Viernes", "Activo");

INSERT INTO kairosbd.dia(nombre_dia, estado)
VALUES("Sábado", "Activo");

INSERT INTO kairosbd.dia(nombre_dia, estado)
VALUES("Domingo", "Activo");


INSERT INTO kairosbd.estado_ficha(nombre_estado, estado)
VALUES("En ejecución", "Activo");

INSERT INTO kairosbd.estado_ficha(nombre_estado, estado)
VALUES("Fusionada", "Activo");

INSERT INTO kairosbd.estado_ficha(nombre_estado, estado)
VALUES("Trasladada", "Activo");

INSERT INTO kairosbd.estado_ficha(nombre_estado, estado)
VALUES("Cancelada", "Activo");


INSERT INTO kairosbd.jornada(sigla_jornada, nombre_jornada, descripcion, imagen_url, estado)
VALUES("D", "Diurna", "De 6 de la mañana a 6 de la tarde", "https://cdn3.iconfinder.com/data/icons/symbol-1-1/36/12-512.png", "Activo");

INSERT INTO kairosbd.jornada(sigla_jornada, nombre_jornada, descripcion, imagen_url, estado)
VALUES("N", "Nocturna", "De 6 de la tarde a 10 de la noche", "https://image.flaticon.com/icons/svg/56/56297.svg", "Activo");

INSERT INTO kairosbd.jornada(sigla_jornada, nombre_jornada, descripcion, imagen_url, estado)
VALUES("M", "Madrugada", "De 10 de la noche a 6 de la mañana", "https://static.thenounproject.com/png/595-200.png", "Activo");


INSERT INTO kairosbd.jornada_instructor(nombre_jornada, descripcion, estado)
VALUES("Diurna", "De 6 de la mañana a 6 de la tarde", "Activo");

INSERT INTO kairosbd.jornada_instructor(nombre_jornada, descripcion, estado)
VALUES("Nocturna", "De 6 de la tarde a 10 de la noche",  "Activo");

INSERT INTO kairosbd.jornada_instructor(nombre_jornada, descripcion, estado)
VALUES("Madrugada", "De 10 de la noche a 6 de la mañana", "Activo");


INSERT INTO kairosbd.modalidad(nombre_modalidad, color, estado)
VALUES("Presencial", "Naranja", "Activo");

INSERT INTO kairosbd.modalidad(nombre_modalidad, color, estado)
VALUES("Virtual", "Morado", "Activo");

INSERT INTO kairosbd.modalidad(nombre_modalidad, color, estado)
VALUES("B-Learning", "Verde", "Activo");


INSERT INTO kairosbd.nivel_formacion(nivel, estado)
VALUES("Técnico", "Activo");

INSERT INTO kairosbd.nivel_formacion(nivel, estado)
VALUES("Tecnólogo", "Activo");

INSERT INTO kairosbd.nivel_formacion(nivel, estado)
VALUES("Curso corto", "Activo");

INSERT INTO kairosbd.nivel_formacion(nivel, estado)
VALUES("Formación virtual", "Activo");

INSERT INTO kairosbd.nivel_formacion(nivel, estado)
VALUES("Formación empresas", "Activo");

INSERT INTO kairosbd.nivel_formacion(nivel, estado)
VALUES("Profundización técnica", "Activo");

INSERT INTO kairosbd.nivel_formacion(nivel, estado)
VALUES("Operario", "Activo");

INSERT INTO kairosbd.nivel_formacion(nivel, estado)
VALUES("Especialización técnica", "Activo");

INSERT INTO kairosbd.nivel_formacion(nivel, estado)
VALUES("Auxiliar", "Activo");


INSERT INTO kairosbd.planeacion(codigo_planeacion, estado)
VALUES("FDS", "Activo");

INSERT INTO kairosbd.planeacion(codigo_planeacion, estado)
VALUES("Diurno", "Activo");

INSERT INTO kairosbd.planeacion(codigo_planeacion, estado)
VALUES("Nocturno", "Activo");

INSERT INTO kairosbd.planeacion(codigo_planeacion, estado)
VALUES("Madrugada", "Activo");


INSERT INTO kairosbd.sede(nombre_sede, direccion, estado)
VALUES("Sena Ceet", "Av. 1 de Mayo #33-98", "Activo");

INSERT INTO kairosbd.sede(nombre_sede, direccion, estado)
VALUES("Sede Colombia", "Calle 69 #20-36", "Activo");

INSERT INTO kairosbd.sede(nombre_sede, direccion, estado)
VALUES("Sede Restrepo", "Av. 1 de Mayo No. 12d-68", "Activo");

INSERT INTO kairosbd.sede(nombre_sede, direccion, estado)
VALUES("Sede Alamos", "Cra 89a #64c-1", "Activo");

INSERT INTO kairosbd.sede(nombre_sede, direccion, estado)
VALUES("Sede Paloquemao", "Cra 30 #15-53", "Activo");


INSERT INTO kairosbd.tipo_ambiente(tipo, descripcion, estado)
VALUES("Ambiente pluritecnológico", "Es un ambiente de aprendizaje especializado en una o varias tecnologías.", "Activo");

INSERT INTO kairosbd.tipo_ambiente(tipo, descripcion, estado)
VALUES("Ambientes fuera de centro", "Ambientes utilizados por los Centros de formación y gestionados por alianzas con el Gobierno.", "Activo");


INSERT INTO kairosbd.tipo_documento(sigla, nombre_documento, estado)
VALUES("CC", "Cédula de Ciudadanía", "Activo");

INSERT INTO kairosbd.tipo_documento(sigla, nombre_documento, estado)
VALUES("CE", "Cédula de Extranjería", "Activo");

INSERT INTO kairosbd.tipo_documento(sigla, nombre_documento, estado)
VALUES("TI", "Tarjeta de Identidad", "Activo");


INSERT INTO kairosbd.vinculacion(tipo_vinculacion, hora, estado)
VALUES("Contratista", "40", "Activo");

INSERT INTO kairosbd.vinculacion(tipo_vinculacion, hora, estado)
VALUES("Planta", "40", "Activo");


INSERT INTO kairosbd.year(number_year, estado)
VALUES("2018-I", "Activo");

INSERT INTO kairosbd.year(number_year, estado)
VALUES("2018-II", "Activo");

INSERT INTO kairosbd.year(number_year, estado)
VALUES("2018-III", "Activo");

INSERT INTO kairosbd.year(number_year, estado)
VALUES("2018-IV", "Activo");

INSERT INTO kairosbd.year(number_year, estado)
VALUES("2019-I", "Activo");

INSERT INTO kairosbd.year(number_year, estado)
VALUES("2019-II", "Activo");


#Entidades débiles


INSERT INTO kairosbd.ambiente(numero_ambiente, descripcion, estado, limitacion, sede_id, ambiente_id) 
VALUES ('302', 'Dispone de 17 computadores y ventilación', 'Activo', '34', '1', '1');

INSERT INTO kairosbd.ambiente(numero_ambiente, descripcion, estado, limitacion, sede_id, ambiente_id) 
VALUES ('Samsung', 'Lo útil para las prácticas de mantenimiento', 'Activo', '30', '1', '1');

INSERT INTO kairosbd.ambiente(numero_ambiente, descripcion, estado, limitacion, sede_id, ambiente_id) 
VALUES ('307', 'Dispone de 17 computadores y ventilación', 'Activo', '34', '1', '1');

INSERT INTO kairosbd.ambiente(numero_ambiente, descripcion, estado, limitacion, sede_id, ambiente_id) 
VALUES ('305-A', 'Dispone de 17 computadores y ventilación', 'Activo', '34', '4', '1');

INSERT INTO kairosbd.ambiente(numero_ambiente, descripcion, estado, limitacion, sede_id, ambiente_id) 
VALUES ('5808-AC', 'Bienestar', 'Activo', '40', '3', '2');

INSERT INTO kairosbd.ambiente(numero_ambiente, descripcion, estado, limitacion, sede_id, ambiente_id) 
VALUES ('400', 'Para actividades de cátedra', 'Activo', '34', '3', '1');

INSERT INTO kairosbd.ambiente(numero_ambiente, descripcion, estado, limitacion, sede_id, ambiente_id) 
VALUES ('4737-DC', 'Recreación', 'Activo', '40', '3', '2');


INSERT INTO kairosbd.cliente (numero_documento, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, tipo_docuemento_id, user_id) 
VALUES ('1030701755', 'Brendon', 'Alberto', 'Garcia', 'Urie', '1', '1');

INSERT INTO kairosbd.cliente (numero_documento, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, tipo_docuemento_id, user_id) 
VALUES ('1030700755', 'Carlos', 'Alberto', 'Garcia', 'Saenz', '1', '2');

INSERT INTO kairosbd.cliente (numero_documento, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, tipo_docuemento_id, user_id) 
VALUES ('1030700756', 'Alberto', 'Carlos', 'Saenz', 'Garcia', '1', '3');

INSERT INTO kairosbd.cliente (numero_documento, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, tipo_docuemento_id, user_id) 
VALUES ('1030700765', 'Solrac', 'Otrebla', 'Aicrag', 'Zneas', '1', '4');


INSERT INTO kairosbd.dia_jornada (hora_inicio, hora_fin, jornada_instructor_id, dia_id) 
VALUES ('2018-05-05', '2018-05-05', '1', '1');

INSERT INTO kairosbd.dia_jornada (hora_inicio, hora_fin, jornada_instructor_id, dia_id) 
VALUES ('2018-06-05', '2018-07-05', '3', '5');

INSERT INTO kairosbd.dia_jornada (hora_inicio, hora_fin, jornada_instructor_id, dia_id) 
VALUES ('2018-06-05', '2018-07-05', '2', '5');

INSERT INTO kairosbd.dia_jornada (hora_inicio, hora_fin, jornada_instructor_id, dia_id) 
VALUES ('2019-06-05', '2019-07-05', '1', '5');

INSERT INTO kairosbd.dia_jornada (hora_inicio, hora_fin, jornada_instructor_id, dia_id) 
VALUES ('2018-06-05', '2018-07-05', '3', '7');

INSERT INTO kairosbd.dia_jornada (hora_inicio, hora_fin, jornada_instructor_id, dia_id) 
VALUES ('2018-06-05', '2018-07-05', '3', '6');

INSERT INTO kairosbd.dia_jornada (hora_inicio, hora_fin, jornada_instructor_id, dia_id) 
VALUES ('2018-06-05', '2018-07-05', '2', '7');

INSERT INTO kairosbd.dia_jornada (hora_inicio, hora_fin, jornada_instructor_id, dia_id) 
VALUES ('2018-06-05', '2018-07-05', '3', '1');

INSERT INTO kairosbd.dia_jornada (hora_inicio, hora_fin, jornada_instructor_id, dia_id) 
VALUES ('2018-06-05', '2018-07-05', '1', '4');

INSERT INTO kairosbd.dia_jornada (hora_inicio, hora_fin, jornada_instructor_id, dia_id) 
VALUES ('2018-06-05', '2018-07-05', '1', '6');

INSERT INTO kairosbd.dia_jornada (hora_inicio, hora_fin, jornada_instructor_id, dia_id) 
VALUES ('2018-06-05', '2018-07-05', '1', '5');

INSERT INTO kairosbd.dia_jornada (hora_inicio, hora_fin, jornada_instructor_id, dia_id) 
VALUES ('2018-06-05', '2018-07-05', '2', '6');


INSERT INTO kairosbd.instructor (estado, cliente_id) 
VALUES ('Activo', '1');

INSERT INTO kairosbd.instructor (estado, cliente_id) 
VALUES ('Activo', '2');

INSERT INTO kairosbd.instructor (estado, cliente_id) 
VALUES ('Activo', '3');

INSERT INTO kairosbd.instructor (estado, cliente_id) 
VALUES ('Activo', '4');


INSERT INTO kairosbd.programa (codigo, version, nombre, sigla, estado, nivel_formacion_id) 
VALUES ('228106', '102', 'ANÁLISIS Y DESARROLLO DE SISTEMAS DE INFORMACIÓN', 'ADSI', 'Activo', '2');

INSERT INTO kairosbd.programa (codigo, version, nombre, sigla, estado, nivel_formacion_id) 
VALUES ('228101', '102', 'PRODUCCIÓN MULTIMEDIA', 'PM', 'Activo', '1');

INSERT INTO kairosbd.programa (codigo, version, nombre, sigla, estado, nivel_formacion_id) 
VALUES ('522202', '1', 'ELABORACIÓN DE AUDIOVISUALES', 'TEA', 'Activo', '1');

INSERT INTO kairosbd.programa (codigo, version, nombre, sigla, estado, nivel_formacion_id) 
VALUES ('217219', '48', 'GESTIÓN Y SEGURIDAD DE BASES DE DATOS', 'GSBD', 'Activo', '8');

INSERT INTO kairosbd.programa (codigo, version, nombre, sigla, estado, nivel_formacion_id) 
VALUES ('228120', '102', 'PROGRAMACIÓN DE SOFTWARE', 'TPS', 'Activo', '1');

INSERT INTO kairosbd.programa (codigo, version, nombre, sigla, estado, nivel_formacion_id) 
VALUES ('228109', '52', 'SISTEMAS', 'TS', 'Activo', '1');


INSERT INTO kairosbd.proyecto (codigo, nombre, estado, programa_id) 
VALUES ('245187', 'PRODUCCIÓN DE CONTENIDOS DIGITALES  E IMPRESOS QUE PROMUEVAN LA  SOLUCIÓN DE PROBLEMÁTICAS SOCIALES EN BOGOTÁ', 'Activo', '2');

INSERT INTO kairosbd.proyecto (codigo, nombre, estado, programa_id) 
VALUES ('576887', 'SISTEMA INTEGRAL WEB PARA GESTION DE PROCESOS EDUCATIVOS DEL CEET', 'Activo', '1');

INSERT INTO kairosbd.proyecto (codigo, nombre, estado, programa_id) 
VALUES ('124589', 'CORTOMETRAJE REPRESENTANDO LAS PROBLEMÁTICAS PRESENTADAS EN LA CIUDAD', 'Activo', '3');

INSERT INTO kairosbd.proyecto (codigo, nombre, estado, programa_id) 
VALUES ('1002359', 'DISEÑO Y ADMINISTRACION DE UNA BASE DE DATOS PARA UNA ALCALDÍA', 'Activo', '4');

INSERT INTO kairosbd.proyecto (codigo, nombre, estado, programa_id) 
VALUES ('569629', 'IMPLEMENTACIÓN MODULAR EN EL SISTEMA INTEGRAL WEB DE GESTION DE PROCESOS EDUCATIVOS PARA EL CEET', 'Activo', '5');

INSERT INTO kairosbd.proyecto (codigo, nombre, estado, programa_id) 
VALUES ('6942047', 'ARMARSE SEVERA CPU', 'Activo', '6');


INSERT INTO kairosbd.trimestre (nombre_trimestre, estado, nivel_formacion_id, jornada_id) 
VALUES ('Primero', 'Activo', '2', '1');

INSERT INTO kairosbd.trimestre (nombre_trimestre, estado, nivel_formacion_id, jornada_id) 
VALUES ('Segundo', 'Activo', '2', '1');

INSERT INTO kairosbd.trimestre (nombre_trimestre, estado, nivel_formacion_id, jornada_id) 
VALUES ('Tercero', 'Activo', '2', '1');

INSERT INTO kairosbd.trimestre (nombre_trimestre, estado, nivel_formacion_id, jornada_id) 
VALUES ('Cuarto', 'Activo', '2', '1');

INSERT INTO kairosbd.trimestre (nombre_trimestre, estado, nivel_formacion_id, jornada_id) 
VALUES ('Quinto', 'Activo', '2', '1');

INSERT INTO kairosbd.trimestre (nombre_trimestre, estado, nivel_formacion_id, jornada_id) 
VALUES ('Sexto', 'Activo', '2', '1');


INSERT INTO kairosbd.trimestre_vigente (trimestre_programado, fecha_inicio, fecha_fin, estado, year_id) 
VALUES ('1', '2019-04-22', '2019-07-06', 'Activo', '6');

INSERT INTO kairosbd.trimestre_vigente (trimestre_programado, fecha_inicio, fecha_fin, estado, year_id) 
VALUES ('2', '2019-04-22', '2019-07-06', 'Activo', '6');

INSERT INTO kairosbd.trimestre_vigente (trimestre_programado, fecha_inicio, fecha_fin, estado, year_id) 
VALUES ('3', '2019-04-22', '2019-07-06', 'Activo', '6');

INSERT INTO kairosbd.trimestre_vigente (trimestre_programado, fecha_inicio, fecha_fin, estado, year_id) 
VALUES ('4', '2019-04-22', '2019-07-06', 'Activo', '6');

INSERT INTO kairosbd.trimestre_vigente (trimestre_programado, fecha_inicio, fecha_fin, estado, year_id) 
VALUES ('5', '2019-04-22', '2019-07-06', 'Activo', '6');

INSERT INTO kairosbd.trimestre_vigente (trimestre_programado, fecha_inicio, fecha_fin, estado, year_id)
VALUES ('6', '2019-04-22', '2019-07-06', 'Activo', '6');

INSERT INTO kairosbd.trimestre_vigente (trimestre_programado, fecha_inicio, fecha_fin, estado, year_id) 
VALUES ('7', '2019-04-22', '2019-07-06', 'Activo', '6');

INSERT INTO kairosbd.trimestre_vigente (trimestre_programado, fecha_inicio, fecha_fin, estado, year_id) 
VALUES ('8', '2019-04-22', '2019-07-06', 'Activo', '6');


INSERT INTO kairosbd.version_horario (numero_version, estado, trimestre_vigente_id) 
VALUES ('205', 'Activo', '1');

INSERT INTO kairosbd.version_horario (numero_version, estado, trimestre_vigente_id) 
VALUES ('205', 'Activo', '2');

INSERT INTO kairosbd.version_horario (numero_version, estado, trimestre_vigente_id) 
VALUES ('205', 'Activo', '3');

INSERT INTO kairosbd.version_horario (numero_version, estado, trimestre_vigente_id) 
VALUES ('205', 'Activo', '4');

INSERT INTO kairosbd.version_horario (numero_version, estado, trimestre_vigente_id) 
VALUES ('205', 'Activo', '5');

INSERT INTO kairosbd.version_horario (numero_version, estado, trimestre_vigente_id) 
VALUES ('205', 'Activo', '6');

INSERT INTO kairosbd.version_horario (numero_version, estado, trimestre_vigente_id) 
VALUES ('205', 'Activo', '7');

INSERT INTO kairosbd.version_horario (numero_version, estado, trimestre_vigente_id) 
VALUES ('205', 'Activo', '8');


INSERT INTO kairosbd.vinculacion_instructor (fecha_incio, fecha_fin, instructor_id, vinculacion_id, year_id) 
VALUES ('2018-01-01', '2019-01-01', '1', '1', '1');

INSERT INTO kairosbd.vinculacion_instructor (fecha_incio, fecha_fin, instructor_id, vinculacion_id, year_id) 
VALUES ('2018-01-01', '2019-01-01', '2', '1', '1');

INSERT INTO kairosbd.vinculacion_instructor (fecha_incio, fecha_fin, instructor_id, vinculacion_id, year_id) 
VALUES ('2018-01-01', '2019-01-01', '3', '1', '1');

INSERT INTO kairosbd.vinculacion_instructor (fecha_incio, fecha_fin, instructor_id, vinculacion_id, year_id) 
VALUES ('2018-01-01', '2060-01-01', '4', '2', '1');


INSERT INTO kairosbd.area_instructor (estado, instructor_id, area_id) 
VALUES ('Activo', '1', '1');

INSERT INTO kairosbd.area_instructor (estado, instructor_id, area_id) 
VALUES ('Activo', '2', '1');

INSERT INTO kairosbd.area_instructor (estado, instructor_id, area_id)
 VALUES ('Activo', '3', '1');
 
INSERT INTO kairosbd.area_instructor (estado, instructor_id, area_id) 
VALUES ('Activo', '4', '2');


INSERT INTO kairosbd.competencia (codigo_competencia, descripcion, programa_id) 
VALUES ('220501035 - 35329', 'Aplicar buenas prácticas de calidad en el proceso de desarrollo de software, de acuerdo con el referente adoptado en la empresa.', '1');

INSERT INTO kairosbd.competencia (codigo_competencia, descripcion, programa_id) 
VALUES ('240201502', 'PRODUCIR TEXTOS EN INGLÉS EN FORMA ESCRITA Y ORAL', '1');

INSERT INTO kairosbd.competencia (codigo_competencia, descripcion, programa_id) 
VALUES ('260101021 - 5844', 'Realizar negociación con los proveedores y clientes, según los objetivos y estrategias establecidas por la organización.', '2');

INSERT INTO kairosbd.competencia (codigo_competencia, descripcion, programa_id) 
VALUES ('240201502', 'PRODUCIR TEXTOS EN INGLÉS EN FORMA ESCRITA Y ORAL', '2');

INSERT INTO kairosbd.competencia (codigo_competencia, descripcion, programa_id) 
VALUES ('250201005', 'ELABORAR LIBRETOS Y GUIONES SEGÚN METODOLOGÍAS ESTABLECIDAS Y OBJETIVOS DEL PROGRAMA.', '3');

INSERT INTO kairosbd.competencia (codigo_competencia, descripcion, programa_id) 
VALUES ('240201502', 'PRODUCIR TEXTOS EN INGLÉS EN FORMA ESCRITA Y ORAL', '3');

INSERT INTO kairosbd.competencia (codigo_competencia, descripcion, programa_id) 
VALUES ('220501063 - 34175', 'ADMINISTRACIÓN DE BASES DE DATOS', '4');

INSERT INTO kairosbd.competencia (codigo_competencia, descripcion, programa_id) 
VALUES ('240201502', 'PRODUCIR TEXTOS EN INGLÉS EN FORMA ESCRITA Y ORAL', '4');

INSERT INTO kairosbd.competencia (codigo_competencia, descripcion, programa_id) 
VALUES ('220501007 - 35320', 'CONSTRUIR EL SISTEMA QUE CUMPLA CON LOS REQUISITOS DE LA SOLUCIÓN INFORMÁTICA.', '5');

INSERT INTO kairosbd.competencia (codigo_competencia, descripcion, programa_id) 
VALUES ('240201502', 'PRODUCIR TEXTOS EN INGLÉS EN FORMA ESCRITA Y ORAL', '5');

INSERT INTO kairosbd.competencia (codigo_competencia, descripcion, programa_id) 
VALUES ('220501001 - 34629', 'REALIZAR MANTENIMIENTO PREVENTIVO Y PREDICTIVO QUE PROLONGUE EL FUNCIONAMIENTO DE LOS EQUIPOS DE COMPUTO.', '6');

INSERT INTO kairosbd.competencia (codigo_competencia, descripcion, programa_id) 
VALUES ('240201502', 'PRODUCIR TEXTOS EN INGLÉS EN FORMA ESCRITA Y ORAL', '6');


INSERT INTO kairosbd.disponibilidad_competencias (instructor_id, competencia_id, vinculacion_instructor_id) 
VALUES ('1', '1', '1');

INSERT INTO kairosbd.disponibilidad_competencias (instructor_id, competencia_id, vinculacion_instructor_id) 
VALUES ('1', '2', '1');

INSERT INTO kairosbd.disponibilidad_competencias (instructor_id, competencia_id, vinculacion_instructor_id) 
VALUES ('1', '3', '1');

INSERT INTO kairosbd.disponibilidad_competencias (instructor_id, competencia_id, vinculacion_instructor_id) 
VALUES ('1', '4', '1');

INSERT INTO kairosbd.disponibilidad_competencias (instructor_id, competencia_id, vinculacion_instructor_id) 
VALUES ('2', '1', '1');

INSERT INTO kairosbd.disponibilidad_competencias (instructor_id, competencia_id, vinculacion_instructor_id) 
VALUES ('2', '2', '1');

INSERT INTO kairosbd.disponibilidad_competencias (instructor_id, competencia_id, vinculacion_instructor_id) 
VALUES ('2', '3', '1');

INSERT INTO kairosbd.disponibilidad_competencias (instructor_id, competencia_id, vinculacion_instructor_id) 
VALUES ('2', '4', '1');

INSERT INTO kairosbd.disponibilidad_competencias (instructor_id, competencia_id, vinculacion_instructor_id) 
VALUES ('3', '1', '1');

INSERT INTO kairosbd.disponibilidad_competencias (instructor_id, competencia_id, vinculacion_instructor_id) 
VALUES ('3', '2', '1');

INSERT INTO kairosbd.disponibilidad_competencias (instructor_id, competencia_id, vinculacion_instructor_id) 
VALUES ('3', '3', '1');

INSERT INTO kairosbd.disponibilidad_competencias (instructor_id, competencia_id, vinculacion_instructor_id) 
VALUES ('3', '4', '1');

INSERT INTO kairosbd.disponibilidad_competencias (instructor_id, competencia_id, vinculacion_instructor_id) 
VALUES ('4', '1', '1');

INSERT INTO kairosbd.disponibilidad_competencias (instructor_id, competencia_id, vinculacion_instructor_id) 
VALUES ('4', '2', '1');

INSERT INTO kairosbd.disponibilidad_competencias (instructor_id, competencia_id, vinculacion_instructor_id) 
VALUES ('4', '3', '1');

INSERT INTO kairosbd.disponibilidad_competencias (instructor_id, competencia_id, vinculacion_instructor_id) 
VALUES ('4', '4', '1');


INSERT INTO kairosbd.disponibilidad_horaria (instructor_id, disponibilidad_horaria_id, vinculacion_instructor_id) 
VALUES ('1', '2', '1');

INSERT INTO kairosbd.disponibilidad_horaria (instructor_id, disponibilidad_horaria_id, vinculacion_instructor_id) 
VALUES ('2', '3', '1');

INSERT INTO kairosbd.disponibilidad_horaria (instructor_id, disponibilidad_horaria_id, vinculacion_instructor_id) 
VALUES ('3', '1', '1');

INSERT INTO kairosbd.disponibilidad_horaria (instructor_id, disponibilidad_horaria_id, vinculacion_instructor_id) 
VALUES ('4', '3', '1');


INSERT INTO kairosbd.fase (nombre, estado, proyecto_id) 
VALUES ('Análisis', 'Activo', '1');

INSERT INTO kairosbd.fase (nombre, estado, proyecto_id) 
VALUES ('Planeación', 'Activo', '2');

INSERT INTO kairosbd.fase (nombre, estado, proyecto_id) 
VALUES ('Ejecución', 'Activo', '3');

INSERT INTO kairosbd.fase (nombre, estado, proyecto_id) 
VALUES ('Evaluación', 'Activo', '4');


INSERT INTO kairosbd.ficha (numero_ficha, fecha_inicio, fecha_fin, ruta, estado_ficha_id, programa_id) 
VALUES ('1566614', '2017-12-11', '2019-12-10', '5G', '1', '1');

INSERT INTO kairosbd.ficha (numero_ficha, fecha_inicio, fecha_fin, ruta, estado_ficha_id, programa_id) 
VALUES ('1438318', '2017-12-11', '2019-12-10', '3G', '1', '2');

INSERT INTO kairosbd.ficha (numero_ficha, fecha_inicio, fecha_fin, ruta, estado_ficha_id, programa_id) 
VALUES ('1802977', '2019-01-28', '2020-01-27', '475G', '1', '3');

INSERT INTO kairosbd.ficha (numero_ficha, fecha_inicio, fecha_fin, ruta, estado_ficha_id, programa_id) 
VALUES ('1946767', '2017-12-11', '2019-12-10', '7G', '1', '4');

INSERT INTO kairosbd.ficha (numero_ficha, fecha_inicio, fecha_fin, ruta, estado_ficha_id, programa_id) 
VALUES ('20459968', '2017-12-11', '2020-12-10', '12G', '1', '5');

INSERT INTO kairosbd.ficha (numero_ficha, fecha_inicio, fecha_fin, ruta, estado_ficha_id, programa_id) 
VALUES ('474757', '2021-01-28', '2023-01-27', '4G', '1', '6');


INSERT INTO kairosbd.ficha_has_trimestre (trimestre_id, ficha_id) 
VALUES ('1', '1');

INSERT INTO kairosbd.ficha_has_trimestre (trimestre_id, ficha_id) 
VALUES ('2', '1');

INSERT INTO kairosbd.ficha_has_trimestre (trimestre_id, ficha_id) 
VALUES ('1', '2');

INSERT INTO kairosbd.ficha_has_trimestre (trimestre_id, ficha_id) 
VALUES ('1', '3');

INSERT INTO kairosbd.ficha_has_trimestre (trimestre_id, ficha_id) 
VALUES ('2', '3');

INSERT INTO kairosbd.ficha_has_trimestre (trimestre_id, ficha_id) 
VALUES ('6', '6');


INSERT INTO kairosbd.horario (hora_inicio, hora_fin, instructor_id, modalidad_id, dia_id, version_horario_id, ambiente_id, ficha_has_trimestre_id) 
VALUES ('2019-02-19', '2019-05-19', '1', '1', '1', '1', '1', '1');

INSERT INTO kairosbd.horario (hora_inicio, hora_fin, instructor_id, modalidad_id, dia_id, version_horario_id, ambiente_id, ficha_has_trimestre_id) 
VALUES ('2019-03-19', '2019-06-19', '2', '1', '3', '2', '1', '4');

INSERT INTO kairosbd.horario (hora_inicio, hora_fin, instructor_id, modalidad_id, dia_id, version_horario_id, ambiente_id, ficha_has_trimestre_id) 
VALUES ('2019-04-19', '2019-07-19', '2', '1', '2', '1', '2', '5');


INSERT INTO kairosbd.actividad (numero_actividad, nombre_actividad, fase_id) 
VALUES ('2', 'Determinar los requerimientos del sistema según especificaciones y lineamientos del proyecto.', '1');

INSERT INTO kairosbd.actividad (numero_actividad, nombre_actividad, fase_id) 
VALUES ('3', 'Analizar procesos, datos y necesidades del centro de electricidad, electrónica y telecomunicaciones y el usuario final para el modulo especifico.', '1');

INSERT INTO kairosbd.actividad (numero_actividad, nombre_actividad, fase_id) 
VALUES ('1', 'Actividades de  inducción en la formación profesional integral SENA.', '1');

INSERT INTO kairosbd.actividad (numero_actividad, nombre_actividad, fase_id) 
VALUES ('12', 'Verificar el funcionamiento de la multimedia con base en el alcance del proyecto.', '4');

INSERT INTO kairosbd.actividad (numero_actividad, nombre_actividad, fase_id) 
VALUES ('13', 'Realizar presupuesto y costos del desarrollo del proyecto formativo.', '4');

INSERT INTO kairosbd.actividad (numero_actividad, nombre_actividad, fase_id) 
VALUES ('4', 'Especificar modelo conceptual del sistema, especificando necesidades y requerimientos.', '2');

INSERT INTO kairosbd.actividad (numero_actividad, nombre_actividad, fase_id) 
VALUES ('7', 'Analizar procesos, datos y necesidades del centro de electricidad, electrónica y telecomunicaciones y el usuario final para el modulo especifico.', '1');

INSERT INTO kairosbd.actividad (numero_actividad, nombre_actividad, fase_id) 
VALUES ('77', 'GRABACIÓN DEL PRODUCTO AUDIOVISUAL SEGÚN SCRIPT', '3');

INSERT INTO kairosbd.actividad (numero_actividad, nombre_actividad, fase_id) 
VALUES ('45', 'EDICIÓN, MONTAJE Y FINALIZACIÓN DEL PRODUCTO AUDIOVISUAL DESARROLLADO CON  PRESENTACIÓN PITCH DE VENTA DEL PRODUCTO AUDIOVISUAL.', '1');


INSERT INTO kairosbd.resultado_aprendizaje (codigo_resultado, descripcion, competencia_id) 
VALUES ('220501006-01', 'Aplicar las técnicas de recolección de datos , diseñando  los instrumentos necesarios para el procesamiento de información, de acuerdo con la situación planteada por la empresa.', '1');

INSERT INTO kairosbd.resultado_aprendizaje (codigo_resultado, descripcion, competencia_id) 
VALUES ('220501006-02', 'Elaborar mapas de procesos que permitan identificar las áreas involucradas en un sistema de información, utilizando herramientas informáticas y las Tic’s, para generar informes según las necesidades de la empresa.', '1');

INSERT INTO kairosbd.resultado_aprendizaje (codigo_resultado, descripcion, competencia_id) 
VALUES ('220501033 05', 'Aplicar políticas y mecanismos de control en el diseño del sistema de información, mediante el análisis de la vulnerabilidad de la información, siguiendo los parámetros establecidos por la organización.', '1');

INSERT INTO kairosbd.resultado_aprendizaje (codigo_resultado, descripcion, competencia_id) 
VALUES ('220501032 01 436543', 'Interpretar el informe de requerimientos, para determinar las necesidades tecnológicas en el manejo de la información, de acuerdo con las normas y protocolos establecidos en la empresa.', '1');


INSERT INTO kairosbd.planeacion_trimestre (planeacion_id, resultado_aprendizaje_id, trimestre_id) 
VALUES ('1', '2', '4');

INSERT INTO kairosbd.planeacion_trimestre (planeacion_id, resultado_aprendizaje_id, trimestre_id) 
VALUES ('2', '3', '1');

INSERT INTO kairosbd.planeacion_trimestre (planeacion_id, resultado_aprendizaje_id, trimestre_id) 
VALUES ('3', '1', '2');

INSERT INTO kairosbd.planeacion_trimestre (planeacion_id, resultado_aprendizaje_id, trimestre_id) 
VALUES ('4', '4', '6');

INSERT INTO kairosbd.limitacion_ambiente (ambiente_id, resultado_aprendizaje_id) 
VALUES ('4', '1');

INSERT INTO kairosbd.limitacion_ambiente (ambiente_id, resultado_aprendizaje_id) 
VALUES ('6', '3');

INSERT INTO kairosbd.limitacion_ambiente (ambiente_id, resultado_aprendizaje_id) 
VALUES ('1', '2');

INSERT INTO kairosbd.limitacion_ambiente (ambiente_id, resultado_aprendizaje_id) 
VALUES ('5', '4');
