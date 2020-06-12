-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-06-2020 a las 01:43:16
-- Versión del servidor: 10.1.32-MariaDB
-- Versión de PHP: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `f110`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contribuyente`
--

CREATE TABLE `contribuyente` (
  `id_contribuyente` int(11) NOT NULL,
  `id_departamento` int(11) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `ap_paterno` varchar(255) DEFAULT NULL,
  `ap_materno` varchar(255) DEFAULT NULL,
  `ap_casada` varchar(255) DEFAULT NULL,
  `direccion` varchar(500) DEFAULT NULL,
  `tipo_documento` varchar(20) DEFAULT NULL,
  `nro_documento` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `contribuyente`
--

INSERT INTO `contribuyente` (`id_contribuyente`, `id_departamento`, `nombre`, `ap_paterno`, `ap_materno`, `ap_casada`, `direccion`, `tipo_documento`, `nro_documento`) VALUES
(1, 1, 'Natalia', 'Medrano', 'Cambara', NULL, 'Beijing', 'CI', '7896242'),
(2, 1, 'Francisca', 'Rodriguez', 'Fierro', NULL, 'Simon Lopez', 'CI', '12345678'),
(3, 2, 'Telma', 'Soliz', '', NULL, 'La Paz', 'CI', '9876542'),
(4, 1, 'Ramiro', 'Ramallo', 'Rocha', NULL, 'Sarco', 'CI', '665423');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `id_departamento` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`id_departamento`, `nombre`) VALUES
(1, 'Cbba'),
(2, 'La Paz'),
(3, 'Oruro'),
(4, 'Potosi'),
(5, 'Beni'),
(6, 'Pando'),
(7, 'Sta. Cruz'),
(8, 'Tarija'),
(9, 'Sucre');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleador`
--

CREATE TABLE `empleador` (
  `id_empleador` int(11) NOT NULL,
  `nit` varchar(50) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `direccion` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `empleador`
--

INSERT INTO `empleador` (`id_empleador`, `nit`, `nombre`, `direccion`) VALUES
(1, '12526698', 'ENDE TECNOLOGIAS', 'Suipacha'),
(2, '1223344556', 'ENDE MATRIZ', 'Colombia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `id_factura` int(11) NOT NULL,
  `id_formulario` int(11) DEFAULT NULL,
  `nit` varchar(50) DEFAULT NULL,
  `nro_factura` int(11) DEFAULT NULL,
  `nro_autorizacion` varchar(255) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `importe` decimal(18,5) DEFAULT NULL,
  `codigo_control` varchar(255) DEFAULT NULL,
  `factura_electronica` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `factura`
--

INSERT INTO `factura` (`id_factura`, `id_formulario`, `nit`, `nro_factura`, `nro_autorizacion`, `fecha`, `importe`, `codigo_control`, `factura_electronica`, `created_at`, `updated_at`) VALUES
(1, 2, '1003562892600', 3, '3082343074', '1993-03-10', '1358321.00000', 'b5601e0d-927d-3806-89fe-3fa4beb790da', 0, '2020-06-13 01:11:19', '2020-06-13 01:11:19'),
(2, 1, '6192507765262', 9, '1471739597', '1979-06-02', '459994.00000', 'da6dce38-c798-3df3-86be-8cf7ef4545fa', 1, '2020-06-13 01:11:20', '2020-06-13 01:11:20'),
(3, 2, '9855856492056', 6, '7011350969', '2019-09-18', '1018323.00000', '57f42550-42f8-3e3a-9e0c-06e60cf6fdeb', 1, '2020-06-13 01:11:20', '2020-06-13 01:11:20'),
(4, 2, '6169091194631', 9, '370823927X', '1996-05-08', '351451.00000', '32a2ec93-a096-3c64-b9af-7bc1d10bef74', 1, '2020-06-13 01:11:20', '2020-06-13 01:11:20'),
(5, 1, '2041792835423', 4, '6391705488', '2012-03-06', '303116.00000', '5abd6e2a-6892-3729-8471-265b59fecf84', 1, '2020-06-13 01:11:20', '2020-06-13 01:11:20'),
(6, 1, '0672817657335', 9, '6524587286', '1988-01-02', '686737.00000', '80f2eb3a-a9a0-3712-bfbc-a7106c861741', 1, '2020-06-13 01:11:20', '2020-06-13 01:11:20'),
(7, 1, '9450844277792', 3, '2991433450', '1990-03-28', '591814.00000', '041667f5-316b-3947-8d76-e524600a8326', 0, '2020-06-13 01:11:20', '2020-06-13 01:11:20'),
(8, 2, '1222132934650', 4, '3327710619', '1997-08-13', '405166.00000', '936c56c9-00bf-3f1a-9350-e17ac84ede48', 0, '2020-06-13 01:11:20', '2020-06-13 01:11:20'),
(9, 1, '1560821164712', 1, '2930774886', '1990-10-10', '759144.00000', '5965d64d-bcff-3da5-86ac-b7fe5f6f8999', 1, '2020-06-13 01:11:20', '2020-06-13 01:11:20'),
(10, 1, '9153815853505', 4, '1320621805', '2020-05-21', '1203498.00000', '20557bae-3220-38e1-bf5d-e133ff5bb63b', 0, '2020-06-13 01:11:20', '2020-06-13 01:11:20'),
(11, 2, '1847839041540', 7, '1566229103', '1977-06-28', '439523.00000', 'fae7fd60-064b-3a2d-ae42-a34c539faaa7', 1, '2020-06-13 01:11:20', '2020-06-13 01:11:20'),
(12, 1, '7692746265145', 7, '2947576209', '2007-06-26', '1142441.00000', '626761d7-c4aa-3630-98c5-519b8440411b', 1, '2020-06-13 01:11:20', '2020-06-13 01:11:20'),
(13, 1, '8094928574295', 2, '3589830824', '2003-07-02', '1429531.00000', '98944324-990e-3924-b4f2-d6691a7cc288', 1, '2020-06-13 01:11:20', '2020-06-13 01:11:20'),
(14, 2, '7597140151608', 3, '5789126782', '1984-08-15', '1900930.00000', 'cb658644-a17f-352c-a49a-c96e7e73d6dc', 1, '2020-06-13 01:11:20', '2020-06-13 01:11:20'),
(15, 1, '8812308029612', 5, '0508232287', '1990-11-01', '115840.00000', '489b07fa-a415-35f1-9010-bbe79bae2218', 0, '2020-06-13 01:11:20', '2020-06-13 01:11:20'),
(16, 1, '8830138142851', 1, '4355208605', '1987-03-20', '902640.00000', 'df1742c7-461b-3a14-a935-8a00f4dd2376', 1, '2020-06-13 01:11:20', '2020-06-13 01:11:20'),
(17, 1, '0799860677063', 1, '7331030280', '2008-03-26', '1297995.00000', '7e4825df-f2c6-375e-aa5d-b26ff9ea3a24', 0, '2020-06-13 01:11:20', '2020-06-13 01:11:20'),
(18, 2, '3684491266298', 8, '1042392455', '2008-05-15', '118423.00000', '3876046b-bb48-3920-85e8-cd7eff5495a4', 0, '2020-06-13 01:11:20', '2020-06-13 01:11:20'),
(19, 2, '5215386509268', 8, '1391315049', '2019-04-29', '1461467.00000', '9af63f56-d1d2-3f33-84b4-a774d3400f80', 0, '2020-06-13 01:11:20', '2020-06-13 01:11:20'),
(20, 1, '2515801850306', 3, '3804402631', '2000-04-26', '142393.00000', '045663db-c0a6-35af-b4ff-254d92a4e722', 0, '2020-06-13 01:11:20', '2020-06-13 01:11:20'),
(21, 1, '3020825673170', 2, '979443499X', '1978-11-03', '326181.00000', 'b0fb81fb-2eee-3c4a-bd3d-5f6f2110ef2d', 0, '2020-06-13 01:11:20', '2020-06-13 01:11:20'),
(22, 2, '9460815955055', 7, '1167783360', '1976-11-11', '609763.00000', '9586f12c-772d-3bd2-b1bd-65f11c105dee', 1, '2020-06-13 01:11:20', '2020-06-13 01:11:20'),
(23, 1, '5249640648905', 7, '5555708416', '2017-11-13', '149462.00000', 'a9c9290c-f2cb-32ef-a202-5f17d133abbe', 0, '2020-06-13 01:11:20', '2020-06-13 01:11:20'),
(24, 1, '6279978698760', 4, '2656872383', '1980-11-17', '833112.00000', '9c0f5102-b351-3fbd-9e13-8e3bba20c60c', 0, '2020-06-13 01:11:20', '2020-06-13 01:11:20'),
(25, 1, '0034970524280', 5, '2743510994', '1982-10-02', '606364.00000', 'b8dec890-8708-3e7f-b5ae-2e6d86c70782', 0, '2020-06-13 01:11:20', '2020-06-13 01:11:20'),
(26, 1, '9315993078501', 7, '9300313290', '1988-01-10', '409723.00000', '921e0993-dd29-36ca-9912-debd82b5232f', 0, '2020-06-13 01:11:20', '2020-06-13 01:11:20'),
(27, 1, '8734101470814', 7, '3422353720', '1994-06-09', '1780175.00000', '6827c611-55e7-34d6-a1ad-3a8d5c1173bf', 1, '2020-06-13 01:11:20', '2020-06-13 01:11:20'),
(28, 2, '1874856386491', 4, '1398011053', '1996-06-05', '488002.00000', '1f08e078-f622-3e2f-9d2e-d8d467ca2e97', 0, '2020-06-13 01:11:20', '2020-06-13 01:11:20'),
(29, 1, '5199116493501', 7, '624906592X', '2009-12-25', '462446.00000', '5d86dd4c-9860-395b-9f2f-ab48032f7689', 1, '2020-06-13 01:11:20', '2020-06-13 01:11:20'),
(30, 1, '7398861840419', 9, '3091473376', '1978-10-15', '1501886.00000', '3ebe2088-fbbd-3608-90ba-5d2dc0372d4d', 1, '2020-06-13 01:11:20', '2020-06-13 01:11:20'),
(31, 2, '0027849939469', 9, '6330173370', '1977-11-24', '1370002.00000', '86c72bfc-1db2-3618-a4fa-78e0af1abbe2', 0, '2020-06-13 01:11:20', '2020-06-13 01:11:20'),
(32, 1, '2126924575832', 4, '9132929676', '1979-03-24', '841864.00000', 'b1fe2693-bdd7-3671-9df3-e46fd7da6ec6', 0, '2020-06-13 01:11:21', '2020-06-13 01:11:21'),
(33, 1, '1451174090592', 0, '2951101449', '2010-11-16', '943049.00000', 'ee3a0cad-7d8a-3a7e-884a-fb5662edac1e', 0, '2020-06-13 01:11:21', '2020-06-13 01:11:21'),
(34, 2, '8702971659806', 0, '9206865501', '2019-03-23', '1024551.00000', '28a6bdae-a66d-3cba-aeb2-7473757689a7', 1, '2020-06-13 01:11:21', '2020-06-13 01:11:21'),
(35, 2, '5477524288774', 4, '8906378629', '1990-06-18', '981248.00000', '464a0572-7a09-345e-b79b-7291c8680df6', 1, '2020-06-13 01:11:21', '2020-06-13 01:11:21'),
(36, 2, '1529969181173', 4, '1588970434', '1977-06-05', '500175.00000', '8ef70c4e-abe1-323b-9564-67776c9ceee7', 1, '2020-06-13 01:11:21', '2020-06-13 01:11:21'),
(37, 2, '0917115268396', 4, '0981814441', '1992-02-18', '534891.00000', '015e27df-b7b9-3b19-9c62-58ad3583b3ec', 0, '2020-06-13 01:11:21', '2020-06-13 01:11:21'),
(38, 2, '4081160872092', 7, '2230360078', '2016-05-06', '665849.00000', 'b582d8e7-0212-3f4c-afc5-5c5374d9b4ee', 0, '2020-06-13 01:11:21', '2020-06-13 01:11:21'),
(39, 1, '3691137719872', 1, '1430729570', '1985-01-30', '477695.00000', 'e1bb4adf-0251-343e-a02b-fa499dc2179f', 0, '2020-06-13 01:11:21', '2020-06-13 01:11:21'),
(40, 1, '0283580678030', 5, '2113378809', '1974-10-19', '800241.00000', '7ff276ce-0a5f-391c-a2d6-5f0aeca66cbd', 0, '2020-06-13 01:11:21', '2020-06-13 01:11:21'),
(41, 2, '9767039053292', 1, '4655323027', '2011-08-23', '323269.00000', '2af808e6-61eb-3916-b8d2-d93e22a8ae9b', 0, '2020-06-13 01:11:21', '2020-06-13 01:11:21'),
(42, 2, '1956773255927', 8, '500786319X', '1983-03-03', '697034.00000', 'b71a5a39-0431-3f47-b786-791966ae4227', 0, '2020-06-13 01:11:21', '2020-06-13 01:11:21'),
(43, 1, '1888004931167', 5, '8051472861', '1970-05-15', '772412.00000', '477a08ff-c4a6-3b8c-8edd-cccc8b551370', 0, '2020-06-13 01:11:21', '2020-06-13 01:11:21'),
(44, 2, '0114754010755', 4, '9737515889', '1994-08-16', '1645461.00000', '83993903-910e-3f3d-9033-890cdbfb54ba', 1, '2020-06-13 01:11:21', '2020-06-13 01:11:21'),
(45, 1, '8396195883941', 6, '5049873312', '2011-01-28', '174337.00000', '9e32fe57-3797-36ec-96e1-e4c261ecb761', 0, '2020-06-13 01:11:21', '2020-06-13 01:11:21'),
(46, 1, '5688589739488', 8, '3573250556', '1986-07-09', '158310.00000', '7b5b8e10-e61a-32ab-a85d-5a6e64c72020', 1, '2020-06-13 01:11:21', '2020-06-13 01:11:21'),
(47, 2, '8378874439052', 8, '666541597X', '2008-04-18', '523667.00000', '6e74fc38-e3a2-3134-8011-7e6449e992db', 0, '2020-06-13 01:11:21', '2020-06-13 01:11:21'),
(48, 1, '8782304850834', 2, '0555112667', '2018-09-26', '46696.00000', '1fa7a145-d477-3bd6-b3b5-15f4766a1ced', 0, '2020-06-13 01:11:21', '2020-06-13 01:11:21'),
(49, 1, '1447497410865', 1, '6895211918', '1980-01-12', '1635421.00000', '8e098637-cdce-3174-96c6-1a62b553191a', 0, '2020-06-13 01:11:21', '2020-06-13 01:11:21'),
(50, 1, '8016343217427', 4, '6890123468', '2010-02-19', '1314598.00000', '166d0947-783b-3959-94d8-c7b5472365cd', 1, '2020-06-13 01:11:21', '2020-06-13 01:11:21'),
(51, 1, '5767378224289', 4, '8434425971', '2010-10-07', '1218296.00000', '26552725-506a-3aae-8fb7-0d4b9f898d11', 0, '2020-06-13 01:11:21', '2020-06-13 01:11:21'),
(52, 2, '4026914719308', 6, '3351768036', '1988-09-04', '956044.00000', '14b53882-f652-36ee-899d-8f7e2be1f458', 1, '2020-06-13 01:11:21', '2020-06-13 01:11:21'),
(53, 2, '0296325238345', 1, '808075070X', '2000-12-03', '1605657.00000', '2db94ae5-fb1c-3257-b5b3-9668f589e5a7', 1, '2020-06-13 01:11:21', '2020-06-13 01:11:21'),
(54, 1, '8766549691155', 2, '5751004094', '2003-04-02', '1918487.00000', '4e9bc22e-808f-321c-bebb-f274edf0d98c', 0, '2020-06-13 01:11:21', '2020-06-13 01:11:21'),
(55, 1, '0384042911709', 8, '2292124009', '1984-01-22', '672825.00000', '37ee4b27-ba20-3aa2-8c47-b5c6dde6373e', 1, '2020-06-13 01:11:21', '2020-06-13 01:11:21'),
(56, 1, '3326612823422', 1, '7035344373', '1983-10-18', '1909927.00000', '87f6604e-3eda-385c-b5de-626c2d2a8d8b', 1, '2020-06-13 01:11:21', '2020-06-13 01:11:21'),
(57, 2, '4457950429263', 0, '4078456367', '1971-09-12', '1270258.00000', '611814af-b7bd-3d97-973c-c212863b3437', 1, '2020-06-13 01:11:21', '2020-06-13 01:11:21'),
(58, 2, '0080539203264', 8, '6380910433', '1981-04-28', '874729.00000', '88609f0e-943a-3aec-ad93-15ac852c3c9b', 0, '2020-06-13 01:11:21', '2020-06-13 01:11:21'),
(59, 1, '3634571275122', 7, '027246855X', '1993-12-06', '1334721.00000', 'aa8f2af4-30ee-3a90-a714-254b44385cfc', 0, '2020-06-13 01:11:21', '2020-06-13 01:11:21'),
(60, 2, '6940155631794', 3, '5977193467', '2002-01-21', '702019.00000', 'aed69a7f-ff14-3da3-b6ec-c6707e7fdfc8', 1, '2020-06-13 01:11:21', '2020-06-13 01:11:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formulario`
--

CREATE TABLE `formulario` (
  `id_formulario` int(11) NOT NULL,
  `id_departamento` int(11) DEFAULT NULL,
  `id_empleador` int(11) DEFAULT NULL,
  `id_contribuyente` int(11) DEFAULT NULL,
  `fecha_presentacion` date DEFAULT NULL,
  `nro_orden` varchar(50) DEFAULT NULL,
  `periodo` varchar(2) DEFAULT NULL,
  `gestion` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `formulario`
--

INSERT INTO `formulario` (`id_formulario`, `id_departamento`, `id_empleador`, `id_contribuyente`, `fecha_presentacion`, `nro_orden`, `periodo`, `gestion`) VALUES
(1, 1, 1, 1, '2020-06-10', NULL, '05', '2020'),
(2, 1, 1, 2, '2020-06-07', NULL, '05', '2020');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `contribuyente`
--
ALTER TABLE `contribuyente`
  ADD PRIMARY KEY (`id_contribuyente`),
  ADD KEY `fk_departamento_contribuyente` (`id_departamento`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`id_departamento`);

--
-- Indices de la tabla `empleador`
--
ALTER TABLE `empleador`
  ADD PRIMARY KEY (`id_empleador`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`id_factura`),
  ADD KEY `fk_formulario_factura` (`id_formulario`);

--
-- Indices de la tabla `formulario`
--
ALTER TABLE `formulario`
  ADD PRIMARY KEY (`id_formulario`),
  ADD KEY `fk_contribuyente_formulario` (`id_contribuyente`),
  ADD KEY `fk_departamento_formulario` (`id_departamento`),
  ADD KEY `fk_empleador_formulario` (`id_empleador`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `contribuyente`
--
ALTER TABLE `contribuyente`
  MODIFY `id_contribuyente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `departamento`
--
ALTER TABLE `departamento`
  MODIFY `id_departamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `empleador`
--
ALTER TABLE `empleador`
  MODIFY `id_empleador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `factura`
--
ALTER TABLE `factura`
  MODIFY `id_factura` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de la tabla `formulario`
--
ALTER TABLE `formulario`
  MODIFY `id_formulario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `contribuyente`
--
ALTER TABLE `contribuyente`
  ADD CONSTRAINT `fk_departamento_contribuyente` FOREIGN KEY (`id_departamento`) REFERENCES `departamento` (`id_departamento`);

--
-- Filtros para la tabla `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `fk_formulario_factura` FOREIGN KEY (`id_formulario`) REFERENCES `formulario` (`id_formulario`);

--
-- Filtros para la tabla `formulario`
--
ALTER TABLE `formulario`
  ADD CONSTRAINT `fk_contribuyente_formulario` FOREIGN KEY (`id_contribuyente`) REFERENCES `contribuyente` (`id_contribuyente`),
  ADD CONSTRAINT `fk_departamento_formulario` FOREIGN KEY (`id_departamento`) REFERENCES `departamento` (`id_departamento`),
  ADD CONSTRAINT `fk_empleador_formulario` FOREIGN KEY (`id_empleador`) REFERENCES `empleador` (`id_empleador`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
