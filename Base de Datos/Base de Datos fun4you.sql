-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.3.7-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para fun4you
CREATE DATABASE IF NOT EXISTS `fun4you` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `fun4you`;

-- Volcando estructura para procedimiento fun4you.AgregarMeme
DROP PROCEDURE IF EXISTS `AgregarMeme`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `AgregarMeme`(
	IN `titulo` VARCHAR(20),
	IN `imagen` VARCHAR(500),
	IN `usuario` INT
)
BEGIN
	INSERT INTO meme (titulo_meme,imagen_meme,id_usuario)
		VALUES (titulo,imagen,usuario);
END//
DELIMITER ;

-- Volcando estructura para tabla fun4you.amigos
DROP TABLE IF EXISTS `amigos`;
CREATE TABLE IF NOT EXISTS `amigos` (
  `id_amigo` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id_amigo`,`id_usuario`),
  KEY `Amigos_Id_Usuario_Usuario_FK` (`id_usuario`),
  KEY `Amigos_Id_Amigo_Usuario_FK` (`id_amigo`),
  CONSTRAINT `amigos_id_amigo_usuario_fk` FOREIGN KEY (`id_amigo`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `amigos_id_usuario_usuario_fk` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='La tabla amigos alamcena los amigos de los usuarios en fun4u ';

-- Volcando datos para la tabla fun4you.amigos: ~4 rows (aproximadamente)
DELETE FROM `amigos`;
/*!40000 ALTER TABLE `amigos` DISABLE KEYS */;
INSERT INTO `amigos` (`id_amigo`, `id_usuario`, `created_at`, `updated_at`) VALUES
	(1, 3, '2021-07-27 12:04:57', '2021-07-27 12:04:57'),
	(1, 6, '2021-07-27 14:00:15', '2021-07-27 14:00:15'),
	(2, 1, '2021-07-27 11:49:46', '2021-07-27 11:49:46'),
	(2, 6, '2021-07-27 13:59:47', '2021-07-27 13:59:47');
/*!40000 ALTER TABLE `amigos` ENABLE KEYS */;

-- Volcando estructura para tabla fun4you.amigosagregados
DROP TABLE IF EXISTS `amigosagregados`;
CREATE TABLE IF NOT EXISTS `amigosagregados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_amigo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla fun4you.amigosagregados: ~0 rows (aproximadamente)
DELETE FROM `amigosagregados`;
/*!40000 ALTER TABLE `amigosagregados` DISABLE KEYS */;
/*!40000 ALTER TABLE `amigosagregados` ENABLE KEYS */;

-- Volcando estructura para procedimiento fun4you.BorrarMeme
DROP PROCEDURE IF EXISTS `BorrarMeme`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `BorrarMeme`(
	IN `idMeme` INT
)
BEGIN
	DELETE FROM meme 
		WHERE id_meme = idMeme;
END//
DELIMITER ;

-- Volcando estructura para procedimiento fun4you.CambiarTituloMeme
DROP PROCEDURE IF EXISTS `CambiarTituloMeme`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `CambiarTituloMeme`(
	IN `tituloNuevo` VARCHAR(50),
	IN `ID` INT
)
BEGIN
	UPDATE meme 
		SET titulo_meme = tituloNuevo
			WHERE id_meme = ID;
END//
DELIMITER ;

-- Volcando estructura para tabla fun4you.contacto
DROP TABLE IF EXISTS `contacto`;
CREATE TABLE IF NOT EXISTS `contacto` (
  `id_contacto` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_usuario` varchar(50) DEFAULT NULL,
  `correo_persona` varchar(50) DEFAULT NULL,
  `contenido` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `id_usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_contacto`),
  KEY `Contacto_id_usuario_fk` (`id_usuario`),
  CONSTRAINT `contacto_id_usuario_fk` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Tabla que almacena la informacion de los formularios de contacto';

-- Volcando datos para la tabla fun4you.contacto: ~2 rows (aproximadamente)
DELETE FROM `contacto`;
/*!40000 ALTER TABLE `contacto` DISABLE KEYS */;
INSERT INTO `contacto` (`id_contacto`, `nombre_usuario`, `correo_persona`, `contenido`, `created_at`, `updated_at`, `id_usuario`) VALUES
	(1, 'Jose Saavedra', '13joselon@gmail.com', 'Me gusta su red social', '2021-07-27 11:46:50', '2021-07-27 11:46:50', 1),
	(2, 'Juan Zamora', 'jz@correo.com', 'Me encanta esta red', '2021-07-27 13:58:05', '2021-07-27 13:58:05', 6);
/*!40000 ALTER TABLE `contacto` ENABLE KEYS */;

-- Volcando estructura para procedimiento fun4you.DarLike
DROP PROCEDURE IF EXISTS `DarLike`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `DarLike`(
	IN `codMeme` INT,
	IN `idUsuario` INT
)
BEGIN
	INSERT INTO likes(id_meme,id_usuario)
		VALUES (codMeme,idUsuario);
	UPDATE meme 
		SET likes = likes + 1
		WHERE id_meme = codMeme;
END//
DELIMITER ;

-- Volcando estructura para procedimiento fun4you.EnviarContacto
DROP PROCEDURE IF EXISTS `EnviarContacto`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `EnviarContacto`(
	IN `Nombre` VARCHAR(50),
	IN `Correo` VARCHAR(50),
	IN `Contenido` TEXT,
	IN `ID` INT
)
BEGIN
	INSERT INTO contacto (nombre_usuario,correo_persona,contenido,id_usuario)
	VALUES (Nombre,Correo,Contenido,ID);
END//
DELIMITER ;

-- Volcando estructura para procedimiento fun4you.GetAllMemesUser
DROP PROCEDURE IF EXISTS `GetAllMemesUser`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllMemesUser`(
	IN `iduser` INT
)
BEGIN
	SELECT	u.nombre_usuario,
					m.titulo_meme,
					m.imagen_meme,
					u.foto_usuario,
					CAST(CAST(m.updated_at AS DATE) AS CHAR(10)) AS fecha,
					m.likes,
					m.id_meme
			FROM meme m JOIN usuario u 
								ON m.id_usuario = u.id_usuario
			WHERE m.id_usuario = iduser
				ORDER BY m.updated_at DESC;
			
END//
DELIMITER ;

-- Volcando estructura para procedimiento fun4you.InsertarAmigo
DROP PROCEDURE IF EXISTS `InsertarAmigo`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarAmigo`(
	IN `idamigo` INT
,
	IN `idusuario` INT

)
BEGIN
	INSERT INTO amigos(id_amigo, id_usuario)
	VALUES (idusuario, idamigo);
END//
DELIMITER ;

-- Volcando estructura para tabla fun4you.likes
DROP TABLE IF EXISTS `likes`;
CREATE TABLE IF NOT EXISTS `likes` (
  `id_meme` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id_meme`,`id_usuario`),
  KEY `Likes_Id_Meme_Meme_FK` (`id_meme`),
  KEY `Likes_Id_Usuario_Usuario_FK` (`id_usuario`),
  CONSTRAINT `likes_id_meme_fk` FOREIGN KEY (`id_meme`) REFERENCES `meme` (`id_meme`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `likes_id_usuario_fk` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='En esta tabla se almacenan los likes de los usuarios.';

-- Volcando datos para la tabla fun4you.likes: ~0 rows (aproximadamente)
DELETE FROM `likes`;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;

-- Volcando estructura para tabla fun4you.likesdados
DROP TABLE IF EXISTS `likesdados`;
CREATE TABLE IF NOT EXISTS `likesdados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla fun4you.likesdados: ~8 rows (aproximadamente)
DELETE FROM `likesdados`;
/*!40000 ALTER TABLE `likesdados` DISABLE KEYS */;
INSERT INTO `likesdados` (`id`, `id_usuario`) VALUES
	(1, 1),
	(2, 3),
	(3, 3),
	(4, 3),
	(5, 6),
	(6, 6),
	(7, 3),
	(8, 3);
/*!40000 ALTER TABLE `likesdados` ENABLE KEYS */;

-- Volcando estructura para tabla fun4you.meme
DROP TABLE IF EXISTS `meme`;
CREATE TABLE IF NOT EXISTS `meme` (
  `id_meme` int(11) NOT NULL AUTO_INCREMENT,
  `titulo_meme` varchar(50) NOT NULL,
  `imagen_meme` varchar(500) NOT NULL DEFAULT 'https://i.redd.it/32vqf2dfl5a11.jpg',
  `id_usuario` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `likes` int(11) unsigned zerofill DEFAULT 00000000000,
  PRIMARY KEY (`id_meme`),
  KEY `Meme_Id_Usuario_Usuario_FK` (`id_usuario`),
  CONSTRAINT `usuario_id_usuario_fk` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Todos los usuarios pueden subir memes a fun4u, en esta tabla se almacenan estos memes.';

-- Volcando datos para la tabla fun4you.meme: ~2 rows (aproximadamente)
DELETE FROM `meme`;
/*!40000 ALTER TABLE `meme` DISABLE KEYS */;
INSERT INTO `meme` (`id_meme`, `titulo_meme`, `imagen_meme`, `id_usuario`, `created_at`, `updated_at`, `likes`) VALUES
	(3, 'UTP be like', 'https://i.pinimg.com/564x/e0/92/c4/e092c4956d5feec4553da74ddb68bbdf.jpg', 3, '2021-07-27 12:01:19', '2021-07-27 12:01:19', 00000000000),
	(4, 'semestrales be like', 'http://images7.memedroid.com/images/UPLOADED758/599681f9f02e7.jpeg', 6, '2021-07-27 13:58:31', '2021-07-27 14:14:17', 00000000000);
/*!40000 ALTER TABLE `meme` ENABLE KEYS */;

-- Volcando estructura para procedimiento fun4you.MemeLikedDB
DROP PROCEDURE IF EXISTS `MemeLikedDB`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `MemeLikedDB`(
	IN `codMeme` INT,
	IN `userID` INT
)
    COMMENT 'Procedimiento para determinar si el usuario le dio like al meme'
BEGIN
		INSERT INTO likesdados (id_usuario)
			SELECT id_usuario FROM likes WHERE id_meme = codMeme AND id_usuario = userID;
END//
DELIMITER ;

-- Volcando estructura para procedimiento fun4you.MostrarMemes
DROP PROCEDURE IF EXISTS `MostrarMemes`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `MostrarMemes`(
	IN `Permiso` CHAR(1),
	IN `IdUsuario` INT
)
    COMMENT 'Si es un usuario se muestran los memes de sus amigos y sí es admin se muestran todos los memes.'
BEGIN
	IF Permiso = 'A' THEN
		SELECT	u.nombre_usuario,
					m.titulo_meme,
					m.imagen_meme,
					u.foto_usuario,
					CAST(CAST(m.updated_at AS DATE) AS CHAR(10)) AS fecha,
					m.likes,
					m.id_meme
			FROM meme m JOIN usuario u 
								ON m.id_usuario = u.id_usuario
				ORDER BY m.updated_at DESC;
	ELSEIF Permiso = 'U' THEN 
		SELECT	u.nombre_usuario,
					m.titulo_meme,
					m.imagen_meme,
					u.foto_usuario,
					CAST(CAST(m.updated_at AS DATE) AS CHAR(10)) AS fecha,
					m.likes,
					m.id_meme
			FROM meme m JOIN usuario u 
								ON m.id_usuario = u.id_usuario
						WHERE u.id_usuario IN (SELECT id_amigo FROM amigos WHERE id_usuario = idUsuario)
							ORDER BY m.updated_at DESC;	
	END IF;
END//
DELIMITER ;

-- Volcando estructura para procedimiento fun4you.MostrarMemeSeleccionado
DROP PROCEDURE IF EXISTS `MostrarMemeSeleccionado`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `MostrarMemeSeleccionado`(
	IN `idmeme` INT
)
BEGIN
	SELECT	u.nombre_usuario,
					m.titulo_meme,
					m.imagen_meme,
					u.foto_usuario,
					CAST(CAST(m.updated_at AS DATE) AS CHAR(10)) AS fecha,
					m.likes,
					m.id_meme
			FROM meme m JOIN usuario u 
								ON m.id_usuario = u.id_usuario
			WHERE m.id_meme = idmeme;
END//
DELIMITER ;

-- Volcando estructura para procedimiento fun4you.ObtenerAmigo
DROP PROCEDURE IF EXISTS `ObtenerAmigo`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `ObtenerAmigo`(
	IN `idamigo` INT



)
BEGIN
	SELECT
		amigos.id_amigo,
		usuario.nombre_usuario,
		usuario.foto_usuario AS foto
	FROM amigos
	INNER JOIN usuario ON amigos.id_amigo = usuario.id_usuario
	WHERE amigos.id_usuario = idamigo;
END//
DELIMITER ;

-- Volcando estructura para procedimiento fun4you.ObtenerUsuariosPorCoincidencia
DROP PROCEDURE IF EXISTS `ObtenerUsuariosPorCoincidencia`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `ObtenerUsuariosPorCoincidencia`(
	IN `ref` VARCHAR(50)



)
BEGIN
	SELECT 
		usuario.id_usuario,
		usuario.nombre_usuario,
		usuario.foto_usuario AS foto
	FROM usuario
	WHERE usuario.nombre_usuario LIKE concat('%',ref,'%')
	ORDER BY usuario.nombre_usuario DESC;
END//
DELIMITER ;

-- Volcando estructura para procedimiento fun4you.QuitarLike
DROP PROCEDURE IF EXISTS `QuitarLike`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `QuitarLike`(
	IN `memeSeleccionado` INT,
	IN `usuarioSesion` INT
)
BEGIN
	DELETE FROM likes
		WHERE id_meme = memeSeleccionado AND id_usuario = usuarioSesion;
	UPDATE meme 
		SET likes = likes - 1
		WHERE id_meme = memeSeleccionado;
END//
DELIMITER ;

-- Volcando estructura para procedimiento fun4you.Registro
DROP PROCEDURE IF EXISTS `Registro`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `Registro`(
	IN `NombrePersona` VARCHAR(50),
	IN `CorreoPersona` VARCHAR(50),
	IN `NombreUsuario` VARCHAR(50),
	IN `Contrasena` VARCHAR(50),
	IN `Foto` VARCHAR(500)
)
BEGIN
	INSERT INTO usuario (nombre_persona, correo_persona,nombre_usuario, contrasena, foto_usuario)
		VALUES (NombrePersona,CorreoPersona,NombreUsuario,Contrasena,Foto);	
END//
DELIMITER ;

-- Volcando estructura para tabla fun4you.usuario
DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_persona` varchar(50) NOT NULL DEFAULT '',
  `correo_persona` varchar(50) NOT NULL DEFAULT '',
  `nombre_usuario` varchar(40) NOT NULL,
  `contrasena` varchar(28) NOT NULL,
  `foto_usuario` varchar(500) NOT NULL DEFAULT 'https://i.pinimg.com/236x/f1/f5/15/f1f5153cabe32239c85842fb4d0ba3c8--ps.jpg',
  `permisos_usuario` char(1) NOT NULL DEFAULT 'U',
  `estado_usuario` char(1) NOT NULL DEFAULT 'A',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id_usuario`),
  UNIQUE KEY `Usuario_Nombre_Usuario_Unique` (`nombre_usuario`),
  UNIQUE KEY `Usuario_Corre_Usuario_Unique` (`correo_persona`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='En Fun4U las personas pueden tener varios usuarios pero un usuario puede pertenecer a una sola persona.';

-- Volcando datos para la tabla fun4you.usuario: ~6 rows (aproximadamente)
DELETE FROM `usuario`;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` (`id_usuario`, `nombre_persona`, `correo_persona`, `nombre_usuario`, `contrasena`, `foto_usuario`, `permisos_usuario`, `estado_usuario`, `created_at`, `updated_at`) VALUES
	(1, 'Jose Saavedra', '13joselon@gmail.com', 'Joselon13', 'Panecillo123', 'https://www.tonica.la/__export/1607722171427/sites/debate/img/2020/12/11/obi-wan-kenobi-portada.jpg_1902800913.jpg', 'U', 'A', '2021-07-27 11:44:28', '2021-07-27 11:44:28'),
	(2, 'Angela Pellecchia', 'angela.pellecchia@utp.ac.pa', 'AngelaPellecchia', 'angela', 'https://i0.wp.com/vistarmagazine.com/wp-content/uploads/2020/01/elsa-frozen-VISTAR.jpg', 'U', 'A', '2021-07-27 11:48:15', '2021-07-27 12:09:15'),
	(3, 'RaÃºl RamÃ­rez', 'raul.ramirez@utp.ac.pa', 'rramirez', 'admin', 'https://cdn2.bulbagarden.net/upload/thumb/9/98/Steven_Stone_ORAS_Trailer.png/250px-Steven_Stone_ORAS_Trailer.png', 'A', 'A', '2021-07-27 11:54:47', '2021-07-27 11:55:40'),
	(4, 'Holger GonzÃ¡lez', 'holger.gonzalez@utp.ac.pa', 'Holgerg', 'holger', 'https://as01.epimg.net/futbol/imagenes/2021/06/23/primera/1624440518_372415_1624440629_noticia_normal_recorte1.jpg', 'U', 'A', '2021-07-27 12:07:05', '2021-07-27 12:07:05'),
	(5, 'SebastiÃ¡n Arrivillaga', 'sebastian.arrivillaga@utp.ac.pa', 'ElSebas18', 'sebas', 'https://i.pinimg.com/236x/5d/3c/54/5d3c5424ef6a2c1005906d2f87550ead.jpg', 'U', 'A', '2021-07-27 12:08:15', '2021-07-27 12:08:15'),
	(6, 'Juan Zamora', 'jz@correo.com', 'JZ', '123', 'https://www.vhv.rs/dpng/d/396-3968010_thumb-image-dragon-ball-z-mini-goku-hd.png', 'U', 'A', '2021-07-27 13:56:24', '2021-07-27 13:56:24');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;

-- Volcando estructura para procedimiento fun4you.ValidarUsuario
DROP PROCEDURE IF EXISTS `ValidarUsuario`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `ValidarUsuario`(
	IN `nom_u` VARCHAR(50),
	IN `pass` VARCHAR(50)
)
BEGIN
    SELECT
        id_usuario,
        nombre_persona,
        correo_persona,
		  nombre_usuario,
        permisos_usuario,
        foto_usuario
	    FROM usuario
		    	WHERE nombre_usuario = nom_u AND contrasena = pass;
END//
DELIMITER ;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
