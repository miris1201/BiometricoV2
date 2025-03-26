-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 26-03-2025 a las 00:16:49
-- Versión del servidor: 10.4.10-MariaDB
-- Versión de PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_biometrico`
--
CREATE DATABASE IF NOT EXISTS `db_biometrico` DEFAULT CHARACTER SET utf32 COLLATE utf32_spanish_ci;
USE `db_biometrico`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_categoria`
--

DROP TABLE IF EXISTS `cat_categoria`;
CREATE TABLE IF NOT EXISTS `cat_categoria` (
  `id_categoria` int(11) NOT NULL AUTO_INCREMENT,
  `cve_cat` int(11) DEFAULT NULL,
  `descripcion` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `activo` tinyint(4) DEFAULT 1,
  PRIMARY KEY (`id_categoria`)
) ENGINE=MyISAM AUTO_INCREMENT=178 DEFAULT CHARSET=utf32 COLLATE=utf32_spanish_ci;

--
-- Volcado de datos para la tabla `cat_categoria`
--

INSERT INTO `cat_categoria` (`id_categoria`, `cve_cat`, `descripcion`, `activo`) VALUES
(1, 1, 'PRESIDENTE MUNICIPAL', 1),
(2, 2, 'SRIO. AYUNTAMIENTO', 1),
(3, 3, 'TESORERO MUNICIPAL', 1),
(4, 4, 'SINDICO (A)', 1),
(5, 5, 'REGIDOR (A)', 1),
(6, 6, 'CONTRALOR INTERNO MPAL', 1),
(7, 7, 'DIRECTOR', 1),
(8, 8, 'SRIO PART. OFNA. PRESID.', 1),
(9, 10, 'SUBSECRETARIO', 1),
(10, 12, 'SUBDIRECTOR', 1),
(11, 15, 'SUBCONTRALOR', 1),
(12, 16, 'SUBTESORERO', 1),
(13, 18, 'COORDINADOR DE ASESORES', 1),
(14, 24, 'ENLACE ADMINISTRATIVO', 1),
(15, 26, 'TEC. ADMINISTRATIVO A', 1),
(16, 27, 'TEC. ADMINISTRATIVO B', 1),
(17, 28, 'TEC. ADMINISTRATIVO C', 1),
(18, 29, 'TEC. ADMINISTRATIVO D', 1),
(19, 30, 'TEC. ADMINISTRATIVO E', 1),
(20, 31, 'ASISTENTE B', 1),
(21, 47, 'TEC MANTENIMIENTO A', 1),
(22, 48, 'TEC MANTENIMIENTO B', 1),
(23, 52, 'CAJERO A', 1),
(24, 54, 'SUPERVISOR  A', 1),
(25, 56, 'OPERADOR DE MAQUINA', 1),
(26, 71, 'INSPECTOR', 1),
(27, 73, 'OFICIAL SECRETARIO', 1),
(28, 81, 'OFICIAL CALIFICADOR', 1),
(29, 82, 'OFICIAL REG. CIVIL', 1),
(30, 84, 'COMANDANTE BOMBERO', 1),
(31, 85, 'SUBCOMANDANTE A BOMBERO A', 1),
(32, 86, 'SUBCOMANDANTE A BOMBERO B', 1),
(33, 87, 'PRIMER OFICIAL', 1),
(34, 88, 'SEGUNDO OFICIAL', 1),
(35, 89, 'BOMBERO', 1),
(36, 95, 'DIRECTOR DE BANDA', 1),
(37, 97, 'MUSICO', 1),
(38, 98, 'INSTRUCTOR', 1),
(39, 99, 'INSPECTOR/AUDITOR A', 1),
(40, 100, 'INSPECTOR AUDITOR B', 1),
(41, 116, 'SRIO PART. DE SRIO DEL AYTTO', 1),
(42, 117, 'ASISTENTE A', 1),
(43, 118, 'ASISTENTE', 1),
(44, 127, 'OFICIAL PRIMERO', 1),
(45, 128, 'OFICIAL SEGUNDO', 1),
(46, 129, 'OFICIAL TERCERO', 1),
(47, 133, 'COMANDANTE DE SECTOR', 1),
(48, 134, 'COMANDANTE', 1),
(49, 136, 'COMISARIO', 1),
(50, 137, 'OFICIAL', 1),
(51, 138, 'SUBOFICIAL', 1),
(52, 139, 'POLICIA PRIMERO', 1),
(53, 140, 'POLICIA SEGUNDO', 1),
(54, 141, 'POLICIA TERCERO', 1),
(55, 142, 'POLICIA', 1),
(56, 145, 'POLICIA TERCERO URI', 1),
(57, 146, 'POLICIA URI', 1),
(58, 157, 'DEFENSOR MPAL DERECHOS HUMANOS', 1),
(59, 159, 'ENCARGADO DE DESPACHO', 1),
(60, 161, 'OFICIAL MEDIADOR, CONCILIADOR', 1),
(61, 163, 'COORDINADOR.', 1),
(62, 164, 'CONSEJERO JURIDICO', 1),
(63, 165, 'INTEGRADORA DE CULTURA DE PAZ', 1),
(64, 167, 'COORD MPAL DE ZONA ORIENTE', 1),
(65, 170, 'COORDINADOR MPAL DE PROTECCION CIVIL', 1),
(66, 171, 'TITULAR DE UNIDAD DE TRANSPARENCIA', 1),
(67, 173, 'PROCURADOR SOCIAL', 1),
(68, 174, 'SRIO TECNICO DEL CONSEJO MPAL DE SEG PUB', 1),
(69, 175, 'JEFE DE DEPARTAMENTO A', 1),
(70, 176, 'JEFE DE DEPARTAMENTO B', 1),
(71, 177, 'TITULAR DE INSTITUTO', 1),
(72, 178, 'OFICIAL MAYOR', 1),
(73, 179, 'COORDINADOR DE CAJA GRAL', 1),
(74, 180, 'SECRETARIO OPERATIVO', 1),
(75, 181, 'CRONISTA MUNICIPAL', 1),
(76, 187, 'TECNICO ADMINISTRATIVO', 1),
(77, 188, 'ASISTENTE DE EDIL A', 1),
(78, 189, 'ASISTENTE DE EDIL B', 1),
(79, 190, 'ASISTENTE DE EDIL C', 1),
(80, 191, 'ASISTENTE DE EDIL D', 1),
(81, 192, 'ASISTENTE DE EDIL E', 1),
(82, 193, 'AYUDANTIA ESPECIALIZADA', 1),
(83, 195, 'TITULAR DEL IMPLAN', 1),
(84, 196, 'ASESOR', 1),
(85, 197, 'TECNICO ESPECIAL A', 1),
(86, 198, 'TECNICO ESPECIAL B', 1),
(87, 199, 'JEFE DE SECTOR BANDO MPAL', 1),
(88, 200, 'ENLACE ADMINISTRATIVO A', 1),
(89, 201, 'ENLACE ADMINISTRATIVO B', 1),
(90, 202, 'MEDICO LEGISTA', 1),
(91, 203, 'PERITO EN HECHOS DE TRANSITO TERRESTRE', 1),
(92, 204, 'MUSICO A', 1),
(93, 205, 'PARAMEDICO', 1),
(94, 206, 'ASISTENTE C', 1),
(95, 207, 'ASISTENTE EDIL A3                  ', 1),
(96, 208, 'ASISTENTE EDIL A4', 1),
(97, 209, 'ASISTENTE EDIL A5', 1),
(98, 210, 'ASISTENTE EDIL A6', 1),
(99, 211, 'ASISTENTE EDIL A7', 1),
(100, 212, 'ASISTENTE EDIL A8', 1),
(101, 213, 'ASISTENTE EDIL A9                  ', 1),
(102, 214, 'ASISTENTE EDIL A10', 1),
(103, 215, 'ASISTENTE EDIL B1', 1),
(104, 216, 'ASISTENTE EDIL B2', 1),
(105, 217, 'ASISTENTE EDIL B3', 1),
(106, 218, 'ASISTENTE EDIL B4', 1),
(107, 219, 'ASISTENTE EDIL B5', 1),
(108, 220, 'ASISTENTE EDIL B6', 1),
(109, 221, 'ASISTENTE EDIL B7', 1),
(110, 222, 'ASISTENTE EDIL B8', 1),
(111, 223, 'ASISTENTE EDIL B9', 1),
(112, 224, 'ASISTENTE EDIL B10', 1),
(113, 225, 'ASISTENTE EDIL C1', 1),
(114, 226, 'ASISTENTE EDIL C2', 1),
(115, 227, 'ASISTENTE EDIL C3', 1),
(116, 228, 'ASISTENTE EDIL C4', 1),
(117, 229, 'ASISTENTE EDIL C5', 1),
(118, 230, 'ASISTENTE EDIL C6', 1),
(119, 231, 'ASISTENTE EDIL C7', 1),
(120, 232, 'ASISTENTE EDIL C8', 1),
(121, 233, 'ASISTENTE EDIL C9', 1),
(122, 234, 'ASISTENTE EDIL C10', 1),
(123, 235, 'ASISTENTE EDIL D1', 1),
(124, 236, 'ASISTENTE EDIL D2', 1),
(125, 237, 'ASISTENTE EDIL D3', 1),
(126, 238, 'ASISTENTE EDIL D4', 1),
(127, 239, 'ASISTENTE EDIL D5', 1),
(128, 240, 'ASISTENTE EDIL D6', 1),
(129, 241, 'ASISTENTE EDIL D7', 1),
(130, 242, 'ASISTENTE EDIL D8', 1),
(131, 243, 'ASISTENTE EDIL D9', 1),
(132, 244, 'ASISTENTE EDIL D10', 1),
(133, 245, 'INSPECTOR DE VIA PÚBLICA', 1),
(134, 1003, 'MAESTRO DE COMPUTO', 1),
(135, 1005, 'MAESTRO DE INGLES A', 1),
(136, 1006, 'MAESTRO DE INGLES B', 1),
(137, 1007, 'MAESTRO DE INGLES C', 1),
(138, 1008, 'MAESTRO DE INGLES D', 1),
(139, 1009, 'MAESTRO DE ARTE A', 1),
(140, 1010, 'MAESTRO DE ARTE B', 1),
(141, 1011, 'MAESTRO DE ARTE C', 1),
(142, 1012, 'MAESTRO DE ARTE D', 1),
(143, 1013, 'MAESTRO DE ARTE E', 1),
(144, 2094, 'JEFE DE UNIDAD ESPECIAL A', 1),
(145, 2095, 'JEFE DE UNIDAD ESPECIAL B', 1),
(146, 2096, 'JEFE DE UNIDAD ESPECIAL C', 1),
(147, 2098, 'JEFE DE UNIDAD A', 1),
(148, 2099, 'JEFE DE UNIDAD B', 1),
(149, 2100, 'JEFE DE UNIDAD C', 1),
(150, 2101, 'ENCARGADO DEPTO', 1),
(151, 2103, 'OP. MAQUINA PESADA', 1),
(152, 2104, 'SRIA. DIRECTOR', 1),
(153, 2105, 'SRIA. EJECUTIVA', 1),
(154, 2106, 'SECRETARIA A', 1),
(155, 2115, 'TECNICO A', 1),
(156, 2117, 'TECNICO A ESPECIALIZADO', 1),
(157, 2119, 'CAJERO', 1),
(158, 2120, 'SUPERVISOR A', 1),
(159, 2122, 'OPERADOR DE MAQUINA', 1),
(160, 2123, 'OPERADOR VEHICULO A', 1),
(161, 2125, 'MECANICO A', 1),
(162, 2128, 'RESIDENTE A', 1),
(163, 2129, 'RESIDENTE B', 1),
(164, 2133, 'ALMACENISTA A', 1),
(165, 2148, 'TECNICO ELECTRICISTA', 1),
(166, 2152, 'AUXILIAR B', 1),
(167, 2187, 'BIBLIOTECARIO', 1),
(168, 2188, 'TEC DE UNIDAD ESPECIAL B           ', 1),
(169, 2189, 'TEC DE UNIDAD A                    ', 1),
(170, 2190, 'TEC DE UNIDAD B                    ', 1),
(171, 2191, 'TEC DE UNIDAD C                    ', 1),
(172, 2192, 'TEC DE CAMPO A                     ', 1),
(173, 2193, 'TEC DE UNIDAD ESPECIAL A           ', 1),
(174, 2194, 'TEC DE UNIDAD ESPECIAL B           ', 1),
(175, 2195, 'TEC DE UNIDAD ESPECIAL C', 1),
(176, 4066, 'PENSION A', 1),
(177, 4067, 'PENSION B', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_departamentos`
--

DROP TABLE IF EXISTS `cat_departamentos`;
CREATE TABLE IF NOT EXISTS `cat_departamentos` (
  `id_departamento` int(11) NOT NULL AUTO_INCREMENT,
  `cve_depto` varchar(5) COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripcion` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `activo` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id_departamento`)
) ENGINE=MyISAM AUTO_INCREMENT=288 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `cat_departamentos`
--

INSERT INTO `cat_departamentos` (`id_departamento`, `cve_depto`, `descripcion`, `activo`) VALUES
(1, '101', 'PRESIDENCIA MUNICIPAL', 1),
(2, '102', 'SECRETARIA PARTICULAR DE LA PRESIDENCIA MUNICIPAL', 1),
(3, '103', 'COORDINACION DE ASUNTOS INTERNACIONALES Y PASAPORTES', 1),
(4, '104', 'DEPARTAMENTO DE PASAPORTES', 1),
(5, '105', 'COORDINACION DE LOGISTICA Y EVENTOS', 1),
(6, '108', 'DEPARTAMENTO DE CONTROL DE GESTION', 1),
(7, '109', 'DEPARTAMENTO DE ATENCION CIUDADANA', 1),
(8, '110', 'DEPARTAMENTO DE RELACIONES PUBLICAS', 1),
(9, '111', 'ENLACE ADMINISTRATIVO', 1),
(10, '112', 'COORDINACION DE ASESORES', 1),
(11, '113', 'COORDINACION DE DIFUSION Y MEDIOS', 1),
(12, '118', 'COORDINACION GENERAL DE PROTECCION CIVIL', 1),
(13, '119', 'COORDINACION OPERATIVA                            ', 1),
(14, '120', 'DEPARTAMENTO DE RESCATE', 1),
(15, '121', 'DEPARTAMENTO DE CONTROL VEHICULAR Y MANTENIMIENTO DE EQUIPO', 1),
(16, '122', 'COMANDANCIA DE BOMBEROS', 1),
(17, '123', 'COORDINACION DE CAPACITACION Y CULTURA DE LA PROTECCION CIVIL', 1),
(18, '124', 'DEPARTAMENTO DE PREVENCION Y ANALISIS DE RIESGOS', 1),
(19, '125', 'DEPARTAMENTO DE CONTROL Y EVALUACION', 1),
(20, '126', 'DEPARTAMENTO DE PROTECCION CIVIL DE TLALNEPANTLA ORIENTE', 1),
(21, '127', 'ENLACE ADMINISTRATIVO PROTECCION CIVIL            ', 1),
(22, '128', 'DEPARTAMENTO DE CAPACITACION', 1),
(23, '129', 'DELEGACION TLALNEPANTLA ORIENTE', 1),
(24, '130', 'DEPARTAMENTO DE ASUNTOS DE BIENESTAR              ', 1),
(25, '131', 'DEPARTAMENTO DE ASUNTOS DE PROMOCION ECONOMICA    ', 1),
(26, '132', 'DEPARTAMENTO DE ASUNTOS DE SEGURIDAD PUBLICA      ', 1),
(27, '133', 'DEPARTAMENTO DE SERVICIOS Y MANTENIMIENTO URBANO  ', 1),
(28, '134', 'DEPARTAMENTO DE INFRAESTRUCTURA URBANA            ', 1),
(29, '135', 'DEPARTAMENTO DE VINCULACION                       ', 1),
(30, '136', 'DEPARTAMENTO DE PROMOCION CULTURAL                ', 1),
(31, '137', 'ENLACE ADMINISTRATIVO PRESIDENCIA', 1),
(32, '138', 'SECRETARIO TECNICO CONSEJO DE SEGURIDAD PUBLICA', 1),
(33, '139', 'ENLACE ADMINISTRATIVO PARA SINDICOS Y REGIDORES', 1),
(34, '140', 'ASISTENTES DE SINDICOS Y REGIDORES', 1),
(35, '141', '1a. SINDICATURA', 1),
(36, '142', '2a. SINDICATURA', 1),
(37, '143', '3a. SINDICATURA', 1),
(38, '144', '1a. REGIDURIA', 1),
(39, '145', '2a. REGIDURIA', 1),
(40, '146', '3a. REGIDURIA', 1),
(41, '147', '4a. REGIDURIA', 1),
(42, '148', '5a. REGIDURIA', 1),
(43, '149', '6a. REGIDURIA', 1),
(44, '150', '7a. REGIDURIA', 1),
(45, '151', '8a. REGIDURIA', 1),
(46, '152', '9a. REGIDURIA', 1),
(47, '153', '10a. REGIDURIA', 1),
(48, '154', '11a. REGIDURIA', 1),
(49, '155', '12a. REGIDURIA', 1),
(50, '156', '13a. REGIDURIA', 1),
(51, '157', '14a. REGIDURIA', 1),
(52, '158', '15a. REGIDURIA', 1),
(53, '159', '16a. REGIDURIA', 1),
(54, '160', 'COORDINACION DE CULTURA DE PAZ', 1),
(55, '201', 'SECRETARIA DEL AYUNTAMIENTO', 1),
(56, '202', 'SECRETARIA PARTICULAR', 1),
(57, '203', 'DEPARTAMENTO JURIDICO', 1),
(58, '204', 'DEPARTAMENTO CONSULTIVO', 1),
(59, '205', 'SUBSECRETARIA AYUNTAMIENTO', 1),
(60, '206', 'COORDINACION DE ASUNTOS EDILICIOS', 1),
(61, '207', 'DEPARTAMENTO DE COMISIONES EDILICIAS ', 1),
(62, '208', 'DEPARTAMENTO DE DICTAMENES Y ACUERDOS', 1),
(63, '209', 'COORDINACION DE PATRIMONIO MUNICIPAL', 1),
(64, '210', 'DEPARTAMENTO DE PATRIMONIO MUNICIPAL', 1),
(65, '211', 'DEPARTAMENTO DE ARCHIVO MUNICIPAL                 ', 1),
(66, '212', 'DEPARTAMENTO DE ACUERDOS, ACTAS Y CERTIFICACIONES', 1),
(67, '213', 'DEPARTAMENTO DE ENLACE INTERINSTITUCIONAL', 1),
(68, '214', 'SUBSECRETARIA DE GOBIERNO', 1),
(69, '215', 'COORDINACION DE INFORMACION Y ANALISIS POLITICO', 1),
(70, '216', 'DEPARTAMENTO DE CONCERTACION POLITICA             ', 1),
(71, '217', 'DEPARTAMENTO DE PARTICIPACION CIUDADANA Y ONG´S', 1),
(72, '218', 'DEPARTAMENTO DE ATENCION A ORGANISMOS REPRESENTATIVOS', 1),
(73, '219', 'DEPARTAMENTO DE ASUNTOS RELIGIOSOS', 1),
(74, '220', 'COORDINACION DE JUSTICIA RESTAURATIVA', 1),
(75, '221', 'DEPARTAMENTO DE MEDIACION Y CONCILIACION', 1),
(76, '222', 'DEPARTAMENTO DE OFICIALIAS CALIFICADORAS', 1),
(77, '223', 'PROCURADURIA SOCIAL', 1),
(78, '224', 'DEPARTAMENTO DE FOMENTO A LA CULTURA CONDOMINAL Y ', 1),
(79, '225', 'DEPARTAMENTO CONSEJOS PARTICIPACION CIUD', 1),
(80, '226', 'DEPARTAMENTO DE OFICIALIA DE PARTES', 1),
(81, '227', 'ENLACE ADMINISTRATIVO', 1),
(82, '228', 'PRIMERA OFICIALIA DEL REGISTRO CIVIL              ', 1),
(83, '229', 'SEGUNDA OFICIALIA DEL REGISTRO CIVIL              ', 1),
(84, '230', 'TERCERA OFICIALIA DEL REGISTRO CIVIL              ', 1),
(85, '231', 'CUARTA OFICIALIA DEL REGISTRO CIVIL               ', 1),
(86, '232', 'QUINTA OFICIALIA DEL REGISTRO CIVIL               ', 1),
(87, '301', 'OFICIALIA MAYOR', 1),
(88, '302', 'SUBDIRECCION DE CAPITAL HUMANO', 1),
(89, '303', 'DEPARTAMENTO DE RECLUTAMIENTO Y SELECCION', 1),
(90, '304', 'DEPARTAMENTO DE NOMINA', 1),
(91, '305', 'SUBDIRECCION DE RECURSOS MATERIALES', 1),
(92, '306', 'DEPARTAMENTOS DE ADQUISICIONES  Y SERVICIOS', 1),
(93, '307', 'DEPARTAMENTO DE CONTRATOS Y CONVENIOS', 1),
(94, '308', 'DEPARTAMENTO DE COMITE', 1),
(95, '309', 'DEPARTAMENTO DE ALMACEN E INVENTARIOS', 1),
(96, '310', 'SUBDIRECCION DE SERVICIOS GENERALES', 1),
(97, '311', 'DEPARTAMENTO DE SERVICIOS GENERALES', 1),
(98, '312', 'DEPARTAMENTO DE CONTROL VEHICULAR', 1),
(99, '313', 'SUBDIRECCION TECNOLOGIAS DE LA INFORMACI', 1),
(100, '314', 'DEPARTAMENTO DE SISTEMAS', 1),
(101, '315', 'DEPARTAMENTO DE VOZ Y DATOS', 1),
(102, '316', 'DEPARTAMENTO DE MANTENIMIENTO Y SOPORTE TECNICO', 1),
(103, '317', 'COORDINACION TECNICA', 1),
(104, '318', 'DEPARTAMENTO DE TRANSPARENCIA Y FONDO REVOLVENTE', 1),
(105, '401', 'TESORERIA MUNICIPAL', 1),
(106, '402', 'SUBTESORESIA DE INGRESOS', 1),
(107, '403', 'DEPARTAMENTO DE INGRESOS DIVERSOS', 1),
(108, '404', 'DEPARTAMENTO DE CATASTRO', 1),
(109, '405', 'DEPARTAMENTO DE EJECUCION FISCAL', 1),
(110, '406', 'DEPARTAMENTO DE ATENCION AL CONTRIBUYENTE', 1),
(111, '407', 'SUBTESORERIA DE  EGRESOS', 1),
(112, '408', 'DEPARTAMENTO DE REGISTRO Y CONTROL PRESUPUESTAL', 1),
(113, '409', 'DEPARTAMENTO DE PROGRAMAS FEDERALES Y ESTATALES', 1),
(114, '410', 'DEPARTAMENTO DE CUENTA PUBLICA Y SOLVENTACIONES', 1),
(115, '411', 'COORDINACION DE CAJA GENERAL', 1),
(116, '415', 'DEPARTAMENTO DE ASUNTOS JURIDICOS', 1),
(117, '416', 'DEPARTAMENTO DE IMPUESTOS INMOBILIARIOS', 1),
(118, '417', 'ENLACE ADMINISTRATIVO', 1),
(119, '501', 'DIRECCION DE SERVICIOS Y MANTENIMIENTO URBANO', 1),
(120, '502', 'SUBDIRECCION DE SERVICIOS COMUNITARIOS, ALUMBRADO PUBLICO Y VIALIDADES', 1),
(121, '503', 'COORDINACION DE ILUMINACION', 1),
(122, '504', 'COORDINACION DE ESPACIOS PUBLICOS', 1),
(123, '505', 'DEPARTAMENTO DE BACHEO Y SEÑALIZACION VIAL', 1),
(124, '506', 'DEPARTAMENTO DE PANTEONES', 1),
(125, '507', 'DEPARTAMENTO DE MANTENIMIENTO A ESCUELAS', 1),
(126, '508', 'SUBDIRECCION DE LIMPIA', 1),
(127, '509', 'DEPARTAMENTO DE RECOLECCION DE RESIDUOS', 1),
(128, '510', 'DEPARTAMENTO DE BARRIDO', 1),
(129, '511', 'DEPARTAMENTO DE VERIFICACION A RECINTOS DE CONFINAMIENTO', 1),
(130, '512', 'ENLACE ADMINISTRATIVO SERV. Y MANTO URBANO', 1),
(131, '601', 'DIRECCION DE BIENESTAR', 1),
(132, '602', 'SUBDIRECCION DE PROGRAMAS SOCIALES', 1),
(133, '603', 'DEPARTAMENTO DE PROGRAMAS MUNICIPALES Y ESTATALES', 1),
(134, '604', 'DEPARTAMENTO DE PROGRAMAS FEDERALES', 1),
(135, '605', 'DEPARTAMENTO DE COORDINACION INTERINSTITUCIONAL   ', 1),
(136, '606', 'SUBDIRECCION DE DESARROLLO COMUNITARIO', 1),
(137, '607', 'DEPARTAMENTO DE LA REGION UNO', 1),
(138, '608', 'DEPARTAMENTO DE LA REGION DOS', 1),
(139, '609', 'DEPARTAMENTO DE LA REGION TRES', 1),
(140, '610', 'DEPARTAMENTO DE LA REGION CUATRO', 1),
(141, '611', 'INSTITUTO MUNICIPAL DE LA SALUD', 1),
(142, '612', 'DEPARTAMENTO DE PROGRAMAS DE SALUD', 1),
(143, '613', 'DEPARTAMENTO DE CULTURA PARA LA SALUD             ', 1),
(144, '614', 'DEPARTAMENTO DE ATENCION DE ANIMALES EXP', 1),
(145, '615', 'INSTITUTO MUNICIPAL DE CULTURA FISICA, DEPORTE Y JUVENTUD', 1),
(146, '616', 'DEPARTAMENTO DEL DEPORTE', 1),
(147, '617', 'DEPARTAMENTO DE INFRAESTRUCTURA DEPORTIVA', 1),
(148, '618', 'DEPARTAMENTO DE CULTURA FISICA', 1),
(149, '619', 'COORDINACION DE LA JUVENTUD', 1),
(150, '620', 'INSTITUTO MUNICIPAL DE LA CULTURA Y LAS ARTES', 1),
(151, '621', 'DEPARTAMENTO DE EVENTOS CULTURALES', 1),
(152, '622', 'DEPARTAMENTO DE CASAS DE CULTURA Y BIBLIOTECAS', 1),
(153, '623', 'DEPARTAMENTO DE LAS ESCUELAS INBA                 ', 1),
(154, '624', 'DEPARTAMENTO DE DIFUSON CULTURAL', 1),
(155, '625', 'ENLACE ADMINISTRATIVO DE CULTURA Y LAS ARTES', 1),
(156, '626', 'INSTITUTO MUNICIPAL PARA LAS MUJERES Y LA EQUIDAD DE GENERO', 1),
(157, '627', 'DEPTO.DE PREVEN. Y ATENC. A LA ALERTA DE VIOLENCIA DE GENERO HACIA LAS MUJERES', 1),
(158, '628', 'DEPARTAMENTO DE TRANSVERSALIZACIÓN DE LA PERSPECTIVA DE GENERO', 1),
(159, '629', 'INSTITUTO MUNICIPAL DE EDUCACION', 1),
(160, '630', 'DEPARTAMENTO DE INCLUSION EDUCATIVA', 1),
(161, '631', 'DEPARTAMENTO DE TIC´s E INGLES', 1),
(162, '632', 'DEPARTAMENTO DE FORTALECIMIENTO A INSTITUCIONES EDUCATIVAS', 1),
(163, '633', 'CONSEJO MUNICIPAL DE PARTICIPACION SOCIAL EN LA EDUCACION ', 1),
(164, '634', 'ENLACE ADMINISTRATIVO DE EDUCACION', 1),
(165, '635', 'ENLACE ADMINISTRATIVO', 1),
(166, '636', 'DEPARTAMENTO DE LA JUVENTUD', 1),
(167, '637', 'ENLACE ADMINISTRATIVO DE CULTURA FISICA', 1),
(168, '639', 'ENLACE ADMINISTRATIVO PARA LA MUJER', 1),
(169, '701', 'DIRECCION DE TRANSFORMACION URBANA', 1),
(170, '702', 'SUBDIRECCION DE DESARROLLO URBANO', 1),
(171, '703', 'DEPARTAMENTO DE LICENCIAS Y AUTORIZACIONES URBANAS', 1),
(172, '704', 'DEPARTAMENTO DE PLANEACION URBANA Y POLITICA TERRITORIAL', 1),
(173, '705', 'DEPARTAMENTO DE TENENCIA DE LA TIERRA Y CONTROL CRECIMIENTO URBANO', 1),
(174, '706', 'DEPARTAMENTO DE ENLACE INTERMUNICIPAL METROPOLITANO Y DE CIUDAD', 1),
(175, '707', 'DEPARTAMENTO DE VERIFICACION URBANA', 1),
(176, '708', 'ENLACE ADMINISTRATIVO', 1),
(177, '801', 'COMISARIA GENERAL DE SEGURIDAD PUBLICA', 1),
(178, '802', 'SUBDIRECCION DE ADMINISTRACION POLICIAL', 1),
(179, '803', 'DEPARTAMENTO DE RECURSOS HUMANOS', 1),
(180, '804', 'DEPARTAMENTO DE PROGRAMACION Y PRESUPUESTO', 1),
(181, '805', 'DEPARTAMENTO DE CARRERA POLICIAL', 1),
(182, '806', 'DEPARTAMENTO DE PROFESIONALIZACION', 1),
(183, '807', 'DEPARTAMENTO DE CONTROL DE EQUIPAMIENTO', 1),
(184, '808', 'DEPARTAMENTO DE SERVICIOS GENERALES', 1),
(185, '809', 'COORDINACION JURIDICA', 1),
(186, '813', 'DEPARTAMENTO DE DOCUMENTACION Y ARCHIVO', 1),
(187, '814', 'COORDINACION DE INSPECCION GENERAL', 1),
(188, '815', 'COORDINACION DE LA COMISION DE HONOR Y JUSTICIA', 1),
(189, '816', 'SECRETARIA PARTICULAR', 1),
(190, '817', 'AYUDANTIA ESPECIALIZADA                           ', 1),
(191, '818', 'SECRETARIA TECNICA', 1),
(192, '819', 'SUBDIRECCION DE ESTADO MAYOR', 1),
(193, '821', 'DEPARTAMENTO DE ANALISIS DE LA INFORMACION', 1),
(194, '822', 'DEPARTAMENTO DE MAPAS GEOREFERENCIALES', 1),
(195, '823', 'UNIDAD DE ANALISIS TACTICO OPERATIVO', 1),
(196, '825', 'CENTRO DE MANDO C 4 Y C 2', 1),
(197, '831', 'SUBDIRECCION DE PREVENCION DEL DELITO Y PARTICIPACION CIUDADANA', 1),
(198, '832', 'DEPARTAMENTO DE ATENCION A VICTIMAS DEL DELITO', 1),
(199, '833', 'DEPARTAMENTO DE ATENCION Y VINVULACION CIUDADANA', 1),
(200, '834', 'DEPARTAMENTO DE REDES VECINALES POR CUADRA', 1),
(201, '835', 'DEPARTAMENTO ESPECIALIZADO EN VIOLENCIA FAMILIAR Y DE GENERO', 1),
(202, '837', 'SUBDIRECCION DE SEGURIDAD PUBLICA', 1),
(203, '838', 'JEFE DE DEPARTAMENTO OPERATIVO REGION 1', 1),
(204, '840', 'JEFATURA DE POLICIA VECINAL DE PROXIMIDAD', 1),
(205, '841', 'COORDINACION OPERATIVA DE GRUPOS ESPECIALES', 1),
(206, '843', 'SUBDIRECCION DE TRANSITO Y VIALIDAD', 1),
(207, '844', 'DEPARTAMENTO DE PERCANCES AUTOMOVILISTICOS', 1),
(208, '845', 'DEPARTAMENTO TECNICO OPERATIVO ZONA PONIENTE Y ORIENTE', 1),
(209, '847', 'DEPARTAMENTO DE AUXILIO VIAL', 1),
(210, '848', 'DEPARTAMENTO DE CONTROL DE SEMAFOROS', 1),
(211, '849', 'JEFE DE DEPARTAMENTO OPERATIVO REGION 3           ', 1),
(212, '850', 'JEFE DE DEPARTAMENTO OPERATIVO REGION 4           ', 1),
(213, '851', 'JEFE DE DEPARTAMENTO OPERATIVO REGION 5', 1),
(214, '852', 'JEFE DE DEPARTAMENTO OPERATIVO REGION 6           ', 1),
(215, '901', 'CONTRALORIA INTERNA MUNICIPAL', 1),
(216, '902', 'SUBCONTRALORIA DE INVESTIGACION, DENUNC', 1),
(217, '903', 'DEPARTAMENTO DE QUEJAS Y DENUNCIAS', 1),
(218, '904', 'DEPARTAMENTO DE INVESTIGACION Y CALIFICACION DE FALTAS ADMINISTRATIVAS', 1),
(219, '905', 'SUBCONTRALORIA DE SUBSTANCIACION, RESOLU', 1),
(220, '906', 'DEPARTAMENTO DE RESPONSABILIDADES Y SANCIONES', 1),
(221, '907', 'DEPARTAMENTO DE SITUACION PATRIMONIAL, CONTROL INTERNO', 1),
(222, '908', 'SUBCONTRALORIA DE AUDITORIA ADMINISTRATIVA, FINANCIERA, DE OBRA Y SOCIAL.', 1),
(223, '909', 'DEPARTAMENTO DE AUDITORIA OPERACIONAL Y ADMINISTRATIVA', 1),
(224, '910', 'DEPARTAMENTO DE AUDITORIA FINANCIERA', 1),
(225, '911', 'DEPARTAMENTO DE AUDITORIA DE OBRA Y SOCIAL', 1),
(226, '912', 'COORDINACION DE SEGUIMIENTO DEL SISTEMA', 1),
(227, '913', 'ENLACE ADMINISTRATIVO', 1),
(228, 'A01', 'DIRECCION DE PROMOCION ECONOMICA', 1),
(229, 'A02', 'SUBDIRECCION DE ABASTO, COMERCIO Y RASTRO MUNICIPAL', 1),
(230, 'A03', 'DEPARTAMENTO DE MERCADOS Y VIA PUBLICA', 1),
(231, 'A04', 'DEPARTAMENTO DE ANUNCIOS PUBLICITARIOS            ', 1),
(232, 'A05', 'COORDINACION DE VERIFICACION COMERCIAL', 1),
(233, 'A06', 'DEPARTAMENTO DE INSPECCION Y NOTIFICACION', 1),
(234, 'A07', 'DEPARTAMENTO DE PROCEDIMIENTOS Y RESOLUCIONES', 1),
(235, 'A08', 'COORDINACION DE PROMOCION ECONOMICA', 1),
(236, 'A09', 'DEPARTAMENTO DE MEJORA REGULATORIA', 1),
(237, 'A10', 'DEPARTAMENTO DE VINCULACION EMPRESARIAL Y PROMOCION AL EMPLEO', 1),
(238, 'A11', 'DEPARTAMENTO DE EMPRENDEDURISMO Y MIPYMES', 1),
(239, 'A12', 'DEPARTAMENTO DE TURISMO ECONOMICO', 1),
(240, 'A13', 'COORDINACION DEL CENTRO DE ATENCION EMPRESARIAL DE TLALNEPANTLA DE BAZ (CAET)', 1),
(241, 'A14', 'ENLACE ADMINISTRATIVO', 1),
(242, 'B01', 'DIRECCION DE INFRAESTRUCTURA URBANA', 1),
(243, 'B02', 'COORDINACION JURIDICA', 1),
(244, 'B03', 'DEPARTAMENTO JURIDICO DE OBRAS PUBLICAS', 1),
(245, 'B04', 'SUBDIRECCION DE PLANEACION Y PROYECTOS', 1),
(246, 'B05', 'DEPARTAMENTO DE PROMOCIÓN Y ENLACE SOCIAL', 1),
(247, 'B06', 'DEPARTAMENTO DE PLANEACIÓN ', 1),
(248, 'B07', 'DEPARTAMENTO DE PROYECTOS', 1),
(249, 'B08', 'SUBDIRECCION DE CONSTRUCCION', 1),
(250, 'B09', 'DEPARTAMENTO DE OBRAS POR ADMINISTRACION', 1),
(251, 'B10', 'DEPARTAMENTO DE INFRA ESTRUCTURA POR CONTRATO ', 1),
(252, 'B11', 'DEPARTAMENTO DE EDIFICACION POR CONTRATO', 1),
(253, 'B12', 'DEPARTAMENTO DE ESTIMACIONES Y CONTROL FINANCIERO', 1),
(254, 'B13', 'SUBDIRECCIÓN NORMATIVA', 1),
(255, 'B14', 'DEPARTAMENTO DE PRECIOS UNITARIOS', 1),
(256, 'B15', 'DEPARTAMENTO DE ADJUDICACION Y CONTRATACION', 1),
(257, 'B16', 'DEPARTAMENTO DE EVALUACION E INTEGRACION DE EXPEDIENTES', 1),
(258, 'B17', 'DEPARTAMENTO DE INSTANCIAS DE FISCALIZACIÓN ', 1),
(259, 'B18', 'ENLACE ADMINISTRATIVO', 1),
(260, 'C01', 'DIRECCION DE SUSTENTABILIDAD AMBIENTAL Y MOVILIDAD', 1),
(261, 'C02', 'COORDINACION DE MOVILIDAD', 1),
(262, 'C03', 'DEPARTAMENTO DE SERVICIOS A LA MOVILIDAD', 1),
(263, 'C04', 'DEPARTAMENTO DE OPERACION Y DESARROLLO DE LA MOVILIDAD', 1),
(264, 'C05', 'DEPARTAMENTO JURIDICO Y DE NORMATIVIDAD AMBIENTAL', 1),
(265, 'C06', 'DEPARTAMENTO DE PROMOCION AMBIENTAL', 1),
(266, 'C07', 'DEPARTAMENTO DE PROYECTOS SUSTENTABLES', 1),
(267, 'C08', 'ENLACE ADMINISTRATIVO', 1),
(268, 'D01', 'CONSEJERIA JURIDICA', 1),
(269, 'D02', 'DIRECCION CONSULTIVA Y DE APOYO JURIDICO', 1),
(270, 'D03', 'DEPARTAMENTO DE CONTRATOS, ASESORIA Y AS', 1),
(271, 'D07', 'SUBDIRECCION CONTENCIOSA', 1),
(272, 'D08', 'DEPARTAMENTO DE AMPAROS', 1),
(273, 'D11', 'SUBDIRECCION LABORAL', 1),
(274, 'D13', 'ENLACE ADMINISTRATIVO DE CONSEJERIA JURIDICA', 1),
(275, 'E01', 'INSTITUTO MUNICIPAL DE PLANEACION', 1),
(276, 'E02', 'SUBDIRECCION DE PLANEACION ESTRATEGICA            ', 1),
(277, 'E03', 'DEPARTAMENTO DE DESARROLLO INSTITUCIONA           ', 1),
(278, 'E04', 'COORDINACION GENERAL DE COPLADEMUN', 1),
(279, 'E05', 'DEPARTAMENTO DE PLANEACION Y EVALUACION', 1),
(280, 'E06', 'DEPARTAMENTO DE POLITICAS PUBLICAS', 1),
(281, 'E07', 'SUBDIRECCIÓN TÉCNICA', 1),
(282, 'E08', 'DEPARTAMENTO DE INFORMACION Y GEOESTADISTICA', 1),
(283, 'E09', 'DEPARTAMENTO DE PROYECTOS ESTRATEGICOS Y PROCURACI', 1),
(284, 'E10', 'ENLACE ADMINISTRATIVO DEL INSTITUTO DE PLANEACION', 1),
(285, 'F01', 'UNIDAD DE TRANSPARENCIA Y ACCESO A LA INFORMACION MUNICIPAL', 1),
(286, 'F02', 'DEPARTAMENTO DE ACCESO A LA INFORMACION Y PROTECCION DE DATOS PERSONALES', 1),
(287, 'G01', 'DEFENSORIA MUNICIPAL DE LOS DERECHOS HUM', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_estatus_justificacion`
--

DROP TABLE IF EXISTS `cat_estatus_justificacion`;
CREATE TABLE IF NOT EXISTS `cat_estatus_justificacion` (
  `id_estatus_justifica` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `class` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `activo` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id_estatus_justifica`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf32 COLLATE=utf32_spanish_ci;

--
-- Volcado de datos para la tabla `cat_estatus_justificacion`
--

INSERT INTO `cat_estatus_justificacion` (`id_estatus_justifica`, `descripcion`, `class`, `activo`) VALUES
(1, 'Capturado', 'fa fa-pencil-square text-warning', 1),
(2, 'En revisión', 'fa fa-search text-info', 1),
(3, 'Autorizado', 'fa fa-check-square text-success', 1),
(4, 'Rechazado', 'fa fa-times text-danger', 1),
(5, 'Cancelado', 'fa fa-ban ', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_horario`
--

DROP TABLE IF EXISTS `cat_horario`;
CREATE TABLE IF NOT EXISTS `cat_horario` (
  `id_horario` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `hr_generico` int(11) NOT NULL DEFAULT 0 COMMENT 'horario general',
  `salida` int(11) NOT NULL DEFAULT 1 COMMENT 'registra salida 1 = si, 0 = no',
  `id_usuario_captura` int(11) NOT NULL,
  `fecha_captura` datetime NOT NULL,
  `activo` tinyint(4) DEFAULT 1,
  PRIMARY KEY (`id_horario`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `cat_horario`
--

INSERT INTO `cat_horario` (`id_horario`, `descripcion`, `hr_generico`, `salida`, `id_usuario_captura`, `fecha_captura`, `activo`) VALUES
(2, 'Lunes a Viernes de 8:00 a 16:00', 0, 0, 2, '2021-05-24 21:12:00', 1),
(3, 'Lunes a Viernes de  9:00 - 18:00', 0, 1, 1, '2021-05-25 16:51:00', 1),
(4, 'Lunes a Viernes de 9:00 - 18:00', 0, 1, 1, '2021-05-25 16:53:00', 1),
(5, 'Lunes a Viernes de 9:00 - 18:00	', 0, 1, 1, '2021-05-25 16:55:00', 1),
(6, 'Lunes a Viernes de 9:00 - 18:00	', 0, 1, 1, '2021-05-25 16:56:00', 1),
(7, 'Lunes a Viernes de 9:00 - 18:00	', 0, 1, 1, '2021-05-25 16:56:00', 1),
(8, 'Lunes a Viernes de 9:00 - 18:00	', 0, 1, 1, '2021-05-25 16:57:00', 1),
(9, 'Lunes a Viernes de 9:00 - 18:00	', 0, 1, 1, '2021-05-25 16:57:00', 1),
(10, 'Lunes a Viernes de 9:00 - 18:00	', 0, 1, 1, '2021-05-25 16:57:00', 1),
(11, 'Lunes a Viernes de 9:00 - 18:00	', 0, 1, 1, '2021-05-25 16:57:00', 1),
(12, 'Lunes a Viernes de 9:00 - 18:00	', 0, 1, 1, '2021-05-25 16:58:00', 1),
(13, 'Lunes a Viernes de 9:00 - 18:00	', 0, 1, 1, '2021-05-25 17:00:00', 1),
(14, 'Lunes a Viernes de 9:00 - 18:00', 0, 1, 1, '2021-05-25 17:06:00', 1),
(15, 'Lunes a Viernes de 9:00 - 18:00', 0, 1, 1, '2021-05-25 17:06:00', 1),
(16, 'Lunes a Viernes de 9:00 - 18:00', 0, 1, 1, '2021-05-25 17:07:00', 1),
(17, 'Lunes a Viernes de 9:00 - 18:00, Sábado 10:00 - 14:00', 0, 1, 1, '2021-05-25 17:10:00', 1),
(18, 'Lunes a Viernes de 9:00 - 18:00', 1, 0, 1, '2021-05-25 17:11:00', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_horario_dtl`
--

DROP TABLE IF EXISTS `cat_horario_dtl`;
CREATE TABLE IF NOT EXISTS `cat_horario_dtl` (
  `id_horario_dtl` int(11) NOT NULL AUTO_INCREMENT,
  `id_horario` int(11) NOT NULL,
  `dia` int(11) NOT NULL,
  `hr_inicial` time NOT NULL,
  `hr_final` time NOT NULL,
  `activo` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id_horario_dtl`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf32 COLLATE=utf32_spanish_ci;

--
-- Volcado de datos para la tabla `cat_horario_dtl`
--

INSERT INTO `cat_horario_dtl` (`id_horario_dtl`, `id_horario`, `dia`, `hr_inicial`, `hr_final`, `activo`) VALUES
(1, 16, 1, '09:00:00', '18:00:00', 1),
(2, 16, 2, '09:00:00', '18:00:00', 1),
(3, 16, 3, '09:00:00', '18:00:00', 1),
(4, 16, 4, '09:00:00', '18:00:00', 1),
(5, 16, 5, '09:00:00', '18:00:00', 1),
(6, 17, 1, '09:00:00', '18:00:00', 1),
(7, 17, 2, '09:00:00', '18:00:00', 1),
(8, 17, 3, '09:00:00', '18:00:00', 1),
(9, 17, 4, '09:00:00', '18:00:00', 1),
(10, 17, 5, '09:00:00', '18:00:00', 1),
(11, 18, 1, '09:00:00', '18:00:00', 1),
(12, 18, 2, '09:00:00', '18:00:00', 1),
(16, 18, 3, '14:01:00', '14:01:00', 1),
(17, 17, 6, '10:00:00', '14:00:00', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_justificante`
--

DROP TABLE IF EXISTS `cat_justificante`;
CREATE TABLE IF NOT EXISTS `cat_justificante` (
  `id_justificante` int(11) NOT NULL AUTO_INCREMENT,
  `cve_justificante` int(11) NOT NULL,
  `descripcion` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `activo` tinyint(4) DEFAULT 1,
  PRIMARY KEY (`id_justificante`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `cat_justificante`
--

INSERT INTO `cat_justificante` (`id_justificante`, `cve_justificante`, `descripcion`, `activo`) VALUES
(1, 1, 'Salida Justificada  ', 1),
(2, 2, 'Entrada Justificada', 1),
(3, 3, 'Entrada con retardo ', 1),
(4, 4, 'Incidencia salida anticipada ', 1),
(5, 5, 'Incidencia falta completa ', 1),
(6, 6, 'Incapacidad ', 1),
(7, 7, 'Día económico ', 1),
(8, 8, 'Permiso sin goce de sueldo ', 1),
(9, 9, 'Vacaciones ', 1),
(10, 10, 'Comisión ', 1),
(11, 11, 'Incapacidad por maternidad ', 1),
(12, 12, 'Permiso con goce de sueldo ', 1),
(13, 13, 'Capacitación', 1),
(14, 14, 'Licencia por maternidad (lactancia 50%)', 1),
(15, 15, 'Licencia por maternidad (lactancia 80%)', 1),
(16, 16, 'Cumpleaños ', 1),
(17, 17, 'Otros ', 1),
(18, 18, 'Constancia de permanencia ', 1),
(19, 19, 'Suspensión ', 1),
(20, 20, 'Permiso prejubilatorio', 1),
(21, 21, 'Cambio de día', 1),
(22, 1002, 'Permiso por fallecimiento', 1),
(23, 1003, 'Justificar Entrada y Salida', 1),
(24, 2003, 'Licencia por nacimiento de un hijo o adopción', 1),
(25, 3003, 'Certificado Médico', 1),
(26, 3004, 'Permanencia', 1),
(27, 3005, 'comisión sindical', 1),
(28, 3006, 'Cuidados Maternos', 1),
(29, 3007, 'Omisión de entrada y salida del reloj biométrico', 1),
(30, 3008, 'Licencia sin goce de sueldo', 1),
(31, 3009, 'Incapacidad General', 1),
(32, 3010, 'Devolución del día', 1),
(33, 3011, 'Día Justificado ', 1),
(34, 3012, 'Cuidados Familiares', 1),
(35, 3013, 'Cambio de Horario', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_s_biometrico`
--

DROP TABLE IF EXISTS `cat_s_biometrico`;
CREATE TABLE IF NOT EXISTS `cat_s_biometrico` (
  `id_s_biometrico` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `activo` tinyint(4) DEFAULT 1,
  PRIMARY KEY (`id_s_biometrico`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `cat_s_biometrico`
--

INSERT INTO `cat_s_biometrico` (`id_s_biometrico`, `descripcion`, `activo`) VALUES
(1, 'Registra en biométrico', 1),
(2, 'Baja', 1),
(3, 'Registra en biométrico (Supervisor)', 1),
(4, 'Funcionario', 1),
(5, 'No registra autorizado', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_tipo_trabajador`
--

DROP TABLE IF EXISTS `cat_tipo_trabajador`;
CREATE TABLE IF NOT EXISTS `cat_tipo_trabajador` (
  `id_trabajador` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `activo` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id_trabajador`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf32 COLLATE=utf32_spanish_ci;

--
-- Volcado de datos para la tabla `cat_tipo_trabajador`
--

INSERT INTO `cat_tipo_trabajador` (`id_trabajador`, `descripcion`, `activo`) VALUES
(1, 'SUPERNUMERARIOS', 1),
(2, 'NUMERARIOS', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_justificacion_docto`
--

DROP TABLE IF EXISTS `t_justificacion_docto`;
CREATE TABLE IF NOT EXISTS `t_justificacion_docto` (
  `id_docto_just` int(11) NOT NULL AUTO_INCREMENT,
  `id_t_justificacion_m` int(11) NOT NULL,
  `id_usuario_captura` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf32_spanish_ci NOT NULL,
  `extension` varchar(10) COLLATE utf32_spanish_ci NOT NULL,
  PRIMARY KEY (`id_docto_just`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf32 COLLATE=utf32_spanish_ci;

--
-- Volcado de datos para la tabla `t_justificacion_docto`
--

INSERT INTO `t_justificacion_docto` (`id_docto_just`, `id_t_justificacion_m`, `id_usuario_captura`, `nombre`, `extension`) VALUES
(1, 1, 1, '1__79624.pdf', 'pdf'),
(2, 4, 1, '4__79307.pdf', 'pdf'),
(3, 5, 1, '5__79307.pdf', 'pdf');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_justificacion_dtl`
--

DROP TABLE IF EXISTS `t_justificacion_dtl`;
CREATE TABLE IF NOT EXISTS `t_justificacion_dtl` (
  `id_t_justificacion_dtl` int(11) NOT NULL AUTO_INCREMENT,
  `id_t_justificacion_m` int(11) NOT NULL,
  `id_empleado` int(11) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_final` date NOT NULL,
  PRIMARY KEY (`id_t_justificacion_dtl`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf32 COLLATE=utf32_spanish_ci;

--
-- Volcado de datos para la tabla `t_justificacion_dtl`
--

INSERT INTO `t_justificacion_dtl` (`id_t_justificacion_dtl`, `id_t_justificacion_m`, `id_empleado`, `fecha_inicio`, `fecha_final`) VALUES
(1, 1, 121982, '2021-06-04', '2021-06-08'),
(2, 5, 115929, '2021-06-04', '2021-06-07'),
(3, 6, 115929, '2021-04-30', '2021-04-30'),
(4, 6, 405467, '2021-04-30', '2021-04-30'),
(5, 6, 121982, '2021-04-30', '2021-04-30'),
(6, 6, 120035, '2021-04-30', '2021-04-30'),
(9, 7, 405467, '2021-06-07', '2021-06-07'),
(10, 7, 121982, '2021-06-07', '2021-06-07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_justificacion_historial`
--

DROP TABLE IF EXISTS `t_justificacion_historial`;
CREATE TABLE IF NOT EXISTS `t_justificacion_historial` (
  `id_justificacion_h` int(11) NOT NULL AUTO_INCREMENT,
  `id_t_justificacion_m` int(11) NOT NULL,
  `id_usuario_captura` int(11) NOT NULL,
  `id_estatus` int(11) NOT NULL,
  `fecha_captura` datetime NOT NULL,
  `observaciones` varchar(150) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id_justificacion_h`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf32 COLLATE=utf32_spanish_ci;

--
-- Volcado de datos para la tabla `t_justificacion_historial`
--

INSERT INTO `t_justificacion_historial` (`id_justificacion_h`, `id_t_justificacion_m`, `id_usuario_captura`, `id_estatus`, `fecha_captura`, `observaciones`) VALUES
(1, 1, 1, 1, '2021-06-04 14:47:37', 'Captura'),
(2, 4, 1, 1, '2021-06-04 17:29:20', 'Captura'),
(3, 5, 1, 1, '2021-06-04 17:36:06', 'Captura'),
(4, 6, 1, 1, '2021-06-07 14:42:49', 'Captura'),
(5, 7, 1, 1, '2021-06-07 14:47:19', 'Captura'),
(6, 7, 1, 2, '2021-06-07 23:00:15', 'autorizarlo'),
(7, 7, 1, 2, '2021-06-07 23:02:33', 'autoria');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_justificacion_master`
--

DROP TABLE IF EXISTS `t_justificacion_master`;
CREATE TABLE IF NOT EXISTS `t_justificacion_master` (
  `id_t_justificacion_m` int(11) NOT NULL AUTO_INCREMENT,
  `id_justificacion` int(11) NOT NULL,
  `id_usuario_captura` int(11) NOT NULL,
  `id_estatus` int(11) NOT NULL,
  `no_dias_justificados` int(11) NOT NULL,
  `folio_nomina` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `folio_checador` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `no_oficio` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `tiempo_justificacion` int(11) NOT NULL,
  `fecha_recibido` date NOT NULL,
  `fecha_captura` datetime NOT NULL,
  `biometrico` int(11) NOT NULL,
  `observacion` varchar(500) COLLATE utf8_spanish_ci DEFAULT NULL,
  `activo` tinyint(4) DEFAULT 1,
  PRIMARY KEY (`id_t_justificacion_m`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `t_justificacion_master`
--

INSERT INTO `t_justificacion_master` (`id_t_justificacion_m`, `id_justificacion`, `id_usuario_captura`, `id_estatus`, `no_dias_justificados`, `folio_nomina`, `folio_checador`, `no_oficio`, `tiempo_justificacion`, `fecha_recibido`, `fecha_captura`, `biometrico`, `observacion`, `activo`) VALUES
(1, 9, 1, 1, 5, '79624', '4455', 'DSyMU/EA/2181/2020', 3, '2021-06-04', '2021-06-04 14:47:37', 1, 'A cuenta  del primer periodo vacacional 2021', 1),
(2, 1, 1, 1, 4, '79307', '7150', 'DSyMU/EA/2158/2020', 2, '2021-06-04', '2021-06-04 17:00:33', 1, 'Salida anticipada debido a los trabajaos ', 1),
(3, 1, 1, 1, 4, '79307', '7150', 'DSyMU/EA/2158/2020', 2, '2021-06-04', '2021-06-04 17:28:33', 1, 'Salida anticipada debido a los trabajaos ', 1),
(4, 1, 1, 1, 4, '79307', '7150', 'DSyMU/EA/2158/2020', 2, '2021-06-04', '2021-06-04 17:29:20', 1, 'Salida anticipada debido a los trabajaos ', 1),
(5, 1, 1, 1, 4, '79307', '7150', 'DSyMU/EA/2158/2020', 2, '2021-06-04', '2021-06-04 17:36:06', 1, 'Salida anticipada debido a los trabajaos ', 1),
(6, 3011, 1, 1, 1, '', '9082', '', 1, '2021-05-03', '2021-06-07 14:42:49', 1, 'Día del trabajo, día feriado', 1),
(7, 4, 1, 2, 1, '', '4456', '', 1, '2021-06-07', '2021-06-07 14:47:19', 1, '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_usuario_area`
--

DROP TABLE IF EXISTS `t_usuario_area`;
CREATE TABLE IF NOT EXISTS `t_usuario_area` (
  `id_usuario_a` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) NOT NULL,
  `area` int(11) NOT NULL,
  PRIMARY KEY (`id_usuario_a`)
) ENGINE=MyISAM DEFAULT CHARSET=utf32 COLLATE=utf32_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ws_menu`
--

DROP TABLE IF EXISTS `ws_menu`;
CREATE TABLE IF NOT EXISTS `ws_menu` (
  `id_menu` int(11) NOT NULL AUTO_INCREMENT,
  `id_grupo` int(11) NOT NULL,
  `texto` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `link` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `class` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `orden` int(11) NOT NULL,
  `activo` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id_menu`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf32 COLLATE=utf32_spanish_ci;

--
-- Volcado de datos para la tabla `ws_menu`
--

INSERT INTO `ws_menu` (`id_menu`, `id_grupo`, `texto`, `title`, `link`, `class`, `orden`, `activo`) VALUES
(1, 0, 'Administrador', '', '', 'fa fa-wrench', 20, 1),
(2, 1, 'Usuarios', 'Ver lista de Usuarios', '?controller=admin/sis_usuarios&action=index\r\n', 'fa fa-caret-right', 1, 1),
(3, 1, 'Roles', 'Ver lista de Roles', '?controller=admin/sis_roles&action=index', 'fa fa-caret-right', 2, 1),
(4, 1, 'Empleados', 'Alta de Empleados', '?controller=admin/sis_empleados&action=index', 'fa fa-caret-right', 3, 1),
(5, 0, 'Catálogos', '', '', 'fa fa-book', 1, 1),
(6, 5, 'Horarios', 'Lista de horarios', '?controller=catalogos/horarios&action=index', 'fa fa-caret-right', 1, 1),
(7, 0, 'Biométrico', '', '', 'fa fa-archive', 2, 1),
(8, 7, 'Justificantes', 'Lista de justificantes', '?controller=biometrico/justificantes&action=index', 'fa fa-caret-right', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ws_param`
--

DROP TABLE IF EXISTS `ws_param`;
CREATE TABLE IF NOT EXISTS `ws_param` (
  `id_parametro` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripcion` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `valor_numerico` int(11) NOT NULL DEFAULT 0,
  `valor_string` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `activo` tinyint(4) DEFAULT 1,
  PRIMARY KEY (`id_parametro`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ws_param`
--

INSERT INTO `ws_param` (`id_parametro`, `nombre`, `descripcion`, `valor_numerico`, `valor_string`, `activo`) VALUES
(1, 'titulo_pagina', 'El titulo General de la página', 0, 'H. Ayuntamiento de Tlalnepantla de Baz', 1),
(2, 'nombre_logo', 'nombre de logo con extensión ', 0, 'logo_s.png?v=1.004', 1),
(3, 'toleracia_normal', 'Tolerancia normal', 10, NULL, 1),
(4, 'toleracia_grave', 'Tolerancia grave', 30, NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ws_rol`
--

DROP TABLE IF EXISTS `ws_rol`;
CREATE TABLE IF NOT EXISTS `ws_rol` (
  `id_rol` int(11) NOT NULL AUTO_INCREMENT,
  `rol` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `pag_ini` varchar(200) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripcion` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `activo` tinyint(4) DEFAULT 1,
  PRIMARY KEY (`id_rol`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf32 COLLATE=utf32_spanish_ci;

--
-- Volcado de datos para la tabla `ws_rol`
--

INSERT INTO `ws_rol` (`id_rol`, `rol`, `pag_ini`, `descripcion`, `activo`) VALUES
(1, 'Super Usuario', '\0\0\0i\0\0\0n\0\0\0d\0\0\0e\0\0\0x\0\0\0.\0\0\0p\0\0\0h\0\0\0p', 'Super Administrador', 1),
(2, 'Oficialía Mayor', NULL, 'Oficialía Mayor', 1),
(3, 'Supervisor', NULL, 'supervisor', 1),
(4, 'Empleados', NULL, 'Empleados', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ws_rol_menu`
--

DROP TABLE IF EXISTS `ws_rol_menu`;
CREATE TABLE IF NOT EXISTS `ws_rol_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_rol` int(11) DEFAULT NULL,
  `id_menu` int(11) DEFAULT NULL,
  `imp` tinyint(4) DEFAULT NULL,
  `edit` tinyint(4) DEFAULT NULL,
  `elim` tinyint(4) DEFAULT NULL,
  `nuevo` tinyint(4) DEFAULT NULL,
  `exportar` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=348 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ws_rol_menu`
--

INSERT INTO `ws_rol_menu` (`id`, `id_rol`, `id_menu`, `imp`, `edit`, `elim`, `nuevo`, `exportar`) VALUES
(347, 1, 8, 1, 1, 1, 1, 1),
(346, 1, 7, 0, 0, 0, 0, 0),
(345, 1, 6, 1, 1, 1, 1, 1),
(344, 1, 5, 0, 0, 0, 0, 0),
(343, 1, 4, 1, 1, 1, 1, 1),
(342, 1, 3, 1, 1, 1, 1, 1),
(332, 6, 16, 1, 1, 0, 1, 1),
(331, 6, 9, 1, 1, 0, 1, 1),
(330, 6, 8, 0, 0, 0, 0, 0),
(75, 7, 8, 0, 0, 0, 0, 0),
(76, 7, 9, 1, 1, 0, 1, 1),
(77, 7, 16, 1, 1, 0, 1, 1),
(78, 8, 1, 0, 0, 0, 0, 0),
(79, 8, 2, 1, 1, 1, 1, 1),
(80, 8, 3, 1, 1, 1, 1, 1),
(81, 8, 4, 0, 0, 0, 0, 0),
(82, 8, 5, 1, 1, 1, 1, 1),
(83, 8, 6, 1, 1, 1, 1, 1),
(84, 8, 7, 1, 1, 1, 1, 1),
(85, 8, 10, 1, 1, 1, 1, 1),
(86, 8, 11, 1, 1, 1, 1, 1),
(87, 8, 12, 1, 1, 1, 1, 1),
(88, 8, 13, 1, 1, 1, 1, 1),
(89, 8, 14, 1, 1, 1, 1, 1),
(90, 8, 15, 1, 1, 1, 1, 1),
(91, 8, 8, 0, 0, 0, 0, 0),
(92, 8, 9, 1, 1, 1, 1, 1),
(93, 8, 16, 1, 1, 1, 1, 1),
(276, 2, 16, 1, 1, 0, 1, 1),
(275, 2, 9, 1, 1, 0, 1, 1),
(274, 2, 8, 0, 0, 0, 0, 0),
(273, 2, 15, 1, 1, 0, 1, 1),
(272, 2, 14, 1, 1, 0, 1, 1),
(271, 2, 13, 1, 1, 0, 1, 1),
(270, 2, 12, 1, 1, 0, 1, 1),
(269, 2, 11, 1, 1, 0, 1, 1),
(268, 2, 10, 1, 1, 0, 1, 1),
(267, 2, 7, 1, 1, 0, 1, 1),
(266, 2, 6, 1, 1, 0, 1, 1),
(265, 2, 5, 1, 1, 0, 1, 1),
(264, 2, 4, 0, 0, 0, 0, 0),
(263, 2, 2, 1, 1, 0, 1, 1),
(262, 2, 1, 0, 0, 0, 0, 0),
(277, 2, 17, 1, 1, 0, 1, 1),
(341, 1, 2, 1, 1, 1, 1, 1),
(340, 1, 1, 0, 0, 0, 0, 0),
(314, 3, 4, 0, 0, 0, 0, 0),
(315, 3, 5, 1, 1, 0, 1, 1),
(316, 3, 14, 1, 1, 0, 1, 1),
(317, 3, 8, 0, 0, 0, 0, 0),
(318, 3, 9, 1, 1, 0, 1, 1),
(319, 3, 16, 1, 1, 0, 1, 1),
(320, 3, 17, 1, 1, 0, 1, 1),
(321, 3, 18, 1, 1, 0, 1, 1),
(322, 4, 4, 0, 0, 0, 0, 0),
(323, 4, 5, 1, 1, 0, 1, 1),
(324, 4, 14, 1, 1, 0, 1, 1),
(325, 4, 8, 0, 0, 0, 0, 0),
(326, 4, 9, 1, 1, 0, 1, 1),
(327, 4, 16, 1, 1, 0, 1, 1),
(328, 4, 17, 1, 1, 0, 1, 1),
(329, 4, 18, 1, 1, 0, 1, 1),
(333, 6, 17, 1, 1, 0, 1, 1),
(334, 6, 18, 1, 1, 0, 1, 1),
(335, 10, 8, 0, 0, 0, 0, 0),
(336, 10, 9, 1, 0, 0, 0, 1),
(337, 10, 16, 1, 0, 0, 0, 1),
(338, 10, 17, 1, 0, 0, 0, 1),
(339, 10, 18, 1, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ws_usuario`
--

DROP TABLE IF EXISTS `ws_usuario`;
CREATE TABLE IF NOT EXISTS `ws_usuario` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `id_rol` int(11) NOT NULL,
  `id_t_trabajador` int(11) DEFAULT 0 COMMENT 'id_trabajador / proceso (cat_tipo_trabajador)',
  `id_departamento` int(11) NOT NULL DEFAULT 0 COMMENT 'id_departamento (cat_departamentos))',
  `id_categoria` int(11) NOT NULL DEFAULT 0 COMMENT 'id_categoria (cat_categoria))',
  `id_biometrico` int(11) NOT NULL DEFAULT 0 COMMENT 'cat_estatus_biometrico',
  `id_horario` int(11) DEFAULT NULL,
  `usuario` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `clave` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `num_empleado` int(11) DEFAULT NULL,
  `nombre` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `apepa` varchar(80) COLLATE utf8_spanish_ci DEFAULT NULL,
  `apema` varchar(80) COLLATE utf8_spanish_ci DEFAULT NULL,
  `genero` int(11) NOT NULL,
  `img` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `admin` int(11) DEFAULT 0,
  `correo` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `editar` int(11) DEFAULT 0,
  `nuevo` int(11) NOT NULL DEFAULT 0,
  `eliminar` int(11) NOT NULL DEFAULT 0,
  `imprimir` int(11) NOT NULL DEFAULT 0,
  `fecha_captura` datetime NOT NULL,
  `id_carpeta` int(11) DEFAULT NULL COMMENT 'ws_menu',
  `activo` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id_usuario`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ws_usuario`
--

INSERT INTO `ws_usuario` (`id_usuario`, `id_rol`, `id_t_trabajador`, `id_departamento`, `id_categoria`, `id_biometrico`, `id_horario`, `usuario`, `clave`, `num_empleado`, `nombre`, `apepa`, `apema`, `genero`, `img`, `admin`, `correo`, `editar`, `nuevo`, `eliminar`, `imprimir`, `fecha_captura`, `id_carpeta`, `activo`) VALUES
(2, 1, 0, 0, 0, 0, NULL, 'miriam', 'f848eea8567fb1454f47a3d76e12fb4f', NULL, 'Miriam Guadalupe Flores Moreno', NULL, NULL, 2, 'avatar2.png', 1, 'mairim1201@gmail.com', 1, 1, 1, 1, '2021-05-20 17:42:37', NULL, 1),
(1, 1, 0, 0, 0, 0, NULL, 'turing', '35a2219c74662d2dffcbcbea4787ed99', NULL, 'Administrador', 'de', 'Usuario', 1, 'avatar5.png', 1, '.@prueba.com', 1, 1, 1, 1, '2021-05-20 18:09:00', NULL, 1),
(5, 4, 1, 314, 198, 1, NULL, '121982', 'b91f3dff191f841e919cf4cfd3fd0ace', 121982, 'FLORES MORENO MIRIAM GUADALUPE', NULL, NULL, 2, 'avatar2.png', 0, NULL, 0, 0, 0, 0, '2021-05-21 22:53:00', NULL, 1),
(6, 4, 1, 316, 26, 1, NULL, '115929', 'c4329b518f855b06d644d7a646cf79e9', 115929, 'SOLORIO LOPEZ GABRIEL ELIGIO', NULL, NULL, 1, 'avatar5.png', 0, NULL, 0, 0, 0, 0, '2021-05-24 17:39:00', NULL, 1),
(7, 4, 1, 314, 2115, 3, NULL, '405467', '8b2af2f9c4053d045a2e44bfd42b62f0', 405467, 'AZUZ CRUZ JAIME ISAAC', NULL, NULL, 1, 'avatar5.png', 0, NULL, 0, 0, 0, 0, '2021-05-24 18:41:00', NULL, 1),
(8, 4, 1, 314, 175, 3, 17, '120035', 'a8106959b66e27eb698af549de9b290d', 120035, 'FONSECA SÁNCHEZ JOSÉ DE JESÚS', NULL, NULL, 1, 'avatar5.png', 0, NULL, 0, 0, 0, 0, '2021-05-25 22:45:00', NULL, 1),
(9, 4, 2, 314, 187, 1, 18, '124078', '51a48736f127a7e91baac425e0a21f8b', 124078, 'GUTIERREZ  SÁNCHEZ  ALEJANDRA', NULL, NULL, 2, 'avatar2.png', 0, NULL, 0, 0, 0, 0, '2021-05-25 22:49:00', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ws_usuario_menu`
--

DROP TABLE IF EXISTS `ws_usuario_menu`;
CREATE TABLE IF NOT EXISTS `ws_usuario_menu` (
  `id_usuario_menu` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) DEFAULT NULL,
  `id_menu` int(11) DEFAULT NULL,
  `imp` tinyint(4) DEFAULT NULL,
  `edit` tinyint(4) DEFAULT NULL,
  `elim` tinyint(4) DEFAULT NULL,
  `nuevo` tinyint(4) DEFAULT NULL,
  `exportar` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id_usuario_menu`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ws_usuario_menu`
--

INSERT INTO `ws_usuario_menu` (`id_usuario_menu`, `id_usuario`, `id_menu`, `imp`, `edit`, `elim`, `nuevo`, `exportar`) VALUES
(6, 1, 3, 1, 1, 1, 1, 1),
(5, 1, 2, 1, 1, 1, 1, 1),
(4, 1, 1, 0, 0, 0, 0, 0),
(7, 1, 4, 1, 1, 1, 1, 1),
(8, 1, 5, 0, 0, 0, 0, 0),
(9, 1, 6, 1, 1, 1, 1, 1),
(10, 1, 7, 0, 0, 0, 0, 0),
(11, 1, 8, 1, 1, 1, 1, 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
