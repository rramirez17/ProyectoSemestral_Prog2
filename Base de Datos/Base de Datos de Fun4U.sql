-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.3.7-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for fun4you
CREATE DATABASE IF NOT EXISTS `fun4you` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `fun4you`;

-- Dumping structure for procedure fun4you.AgregarMeme
DELIMITER //
CREATE PROCEDURE `AgregarMeme`(
	IN `titulo` VARCHAR(20),
	IN `imagen` VARCHAR(500),
	IN `usuario` INT
)
BEGIN
	INSERT INTO meme (titulo_meme,imagen_meme,id_usuario)
		VALUES (titulo,imagen,usuario);
END//
DELIMITER ;

-- Dumping structure for table fun4you.amigos
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

-- Dumping data for table fun4you.amigos: ~0 rows (approximately)
DELETE FROM `amigos`;
/*!40000 ALTER TABLE `amigos` DISABLE KEYS */;
/*!40000 ALTER TABLE `amigos` ENABLE KEYS */;

-- Dumping structure for procedure fun4you.BorrarMeme
DELIMITER //
CREATE PROCEDURE `BorrarMeme`(
	IN `idMeme` INT
)
BEGIN
	DELETE FROM meme 
		WHERE id_meme = idMeme;
END//
DELIMITER ;

-- Dumping structure for procedure fun4you.CambiarTituloMeme
DELIMITER //
CREATE PROCEDURE `CambiarTituloMeme`(
	IN `tituloNuevo` VARCHAR(50),
	IN `ID` INT
)
BEGIN
	UPDATE meme 
		SET titulo_meme = tituloNuevo
			WHERE id_meme = ID;
END//
DELIMITER ;

-- Dumping structure for table fun4you.contacto
CREATE TABLE IF NOT EXISTS `contacto` (
  `id_contacto` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_usuario` varchar(50) DEFAULT NULL,
  `correo_persona` varchar(50) DEFAULT NULL,
  `contenido` text DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id_contacto`),
  KEY `Contacto_id_usuario_fk` (`id_usuario`),
  CONSTRAINT `contacto_id_usuario_fk` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tabla que almacena la informacion de los formularios de contacto';

-- Dumping data for table fun4you.contacto: ~0 rows (approximately)
DELETE FROM `contacto`;
/*!40000 ALTER TABLE `contacto` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacto` ENABLE KEYS */;

-- Dumping structure for procedure fun4you.DarLike
DELIMITER //
CREATE PROCEDURE `DarLike`(
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

-- Dumping structure for procedure fun4you.EnviarContacto
DELIMITER //
CREATE PROCEDURE `EnviarContacto`(
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

-- Dumping structure for procedure fun4you.GetAllMemesUser
DELIMITER //
CREATE PROCEDURE `GetAllMemesUser`(
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

-- Dumping structure for procedure fun4you.InsertarAmigo
DELIMITER //
CREATE PROCEDURE `InsertarAmigo`(
	IN `idamigo` INT
,
	IN `idusuario` INT

)
BEGIN
	INSERT INTO amigos(id_amigo, id_usuario)
	VALUES (idusuario, idamigo);
END//
DELIMITER ;

-- Dumping structure for table fun4you.likes
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

-- Dumping data for table fun4you.likes: ~0 rows (approximately)
DELETE FROM `likes`;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;

-- Dumping structure for table fun4you.likesdados
CREATE TABLE IF NOT EXISTS `likesdados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table fun4you.likesdados: ~0 rows (approximately)
DELETE FROM `likesdados`;
/*!40000 ALTER TABLE `likesdados` DISABLE KEYS */;
/*!40000 ALTER TABLE `likesdados` ENABLE KEYS */;

-- Dumping structure for table fun4you.meme
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Todos los usuarios pueden subir memes a fun4u, en esta tabla se almacenan estos memes.';

-- Dumping data for table fun4you.meme: ~0 rows (approximately)
DELETE FROM `meme`;
/*!40000 ALTER TABLE `meme` DISABLE KEYS */;
/*!40000 ALTER TABLE `meme` ENABLE KEYS */;

-- Dumping structure for procedure fun4you.MemeLikedDB
DELIMITER //
CREATE PROCEDURE `MemeLikedDB`(
	IN `codMeme` INT,
	IN `userID` INT
)
    COMMENT 'Procedimiento para determinar si el usuario le dio like al meme'
BEGIN
		INSERT INTO likesdados (id_usuario)
			SELECT id_usuario FROM likes WHERE id_meme = codMeme AND id_usuario = userID;
END//
DELIMITER ;

-- Dumping structure for procedure fun4you.MostrarMemes
DELIMITER //
CREATE PROCEDURE `MostrarMemes`(
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

-- Dumping structure for procedure fun4you.MostrarMemeSeleccionado
DELIMITER //
CREATE PROCEDURE `MostrarMemeSeleccionado`(
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

-- Dumping structure for procedure fun4you.ObtenerAmigo
DELIMITER //
CREATE PROCEDURE `ObtenerAmigo`(
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

-- Dumping structure for procedure fun4you.ObtenerUsuariosPorCoincidencia
DELIMITER //
CREATE PROCEDURE `ObtenerUsuariosPorCoincidencia`(
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

-- Dumping structure for procedure fun4you.QuitarLike
DELIMITER //
CREATE PROCEDURE `QuitarLike`(
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

-- Dumping structure for procedure fun4you.Registro
DELIMITER //
CREATE PROCEDURE `Registro`(
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

-- Dumping structure for table fun4you.usuario
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='En Fun4U las personas pueden tener varios usuarios pero un usuario puede pertenecer a una sola persona.';

-- Dumping data for table fun4you.usuario: ~0 rows (approximately)
DELETE FROM `usuario`;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` (`id_usuario`, `nombre_persona`, `correo_persona`, `nombre_usuario`, `contrasena`, `foto_usuario`, `permisos_usuario`, `estado_usuario`, `created_at`, `updated_at`) VALUES
	(1, 'admin', 'admin@fun4u@utp.ac.pa', 'admin', 'admin', 'https://i.pinimg.com/236x/f1/f5/15/f1f5153cabe32239c85842fb4d0ba3c8--ps.jpg', 'A', 'A', '2021-07-27 17:13:56', '2021-07-27 17:13:56');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;

-- Dumping structure for procedure fun4you.ValidarUsuario
DELIMITER //
CREATE PROCEDURE `ValidarUsuario`(
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
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
