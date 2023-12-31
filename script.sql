USE [master]
GO
/****** Object:  Database [ClubLaboratorioPresentacion]    Script Date: 21/11/2023 17:17:23 ******/
CREATE DATABASE [ClubLaboratorioPresentacion]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ClubLaboratorioPresentacion', FILENAME = N'C:\Users\RBB\Downloads\MSSQL12.ULTIMOSQL\MSSQL\DATA\ClubLaboratorioPresentacion.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ClubLaboratorioPresentacion_log', FILENAME = N'C:\Users\RBB\Downloads\MSSQL12.ULTIMOSQL\MSSQL\DATA\ClubLaboratorioPresentacion_log.ldf' , SIZE = 1072KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ClubLaboratorioPresentacion] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ClubLaboratorioPresentacion].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ClubLaboratorioPresentacion] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ClubLaboratorioPresentacion] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ClubLaboratorioPresentacion] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ClubLaboratorioPresentacion] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ClubLaboratorioPresentacion] SET ARITHABORT OFF 
GO
ALTER DATABASE [ClubLaboratorioPresentacion] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [ClubLaboratorioPresentacion] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ClubLaboratorioPresentacion] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ClubLaboratorioPresentacion] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ClubLaboratorioPresentacion] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ClubLaboratorioPresentacion] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ClubLaboratorioPresentacion] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ClubLaboratorioPresentacion] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ClubLaboratorioPresentacion] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ClubLaboratorioPresentacion] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ClubLaboratorioPresentacion] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ClubLaboratorioPresentacion] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ClubLaboratorioPresentacion] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ClubLaboratorioPresentacion] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ClubLaboratorioPresentacion] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ClubLaboratorioPresentacion] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ClubLaboratorioPresentacion] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ClubLaboratorioPresentacion] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ClubLaboratorioPresentacion] SET  MULTI_USER 
GO
ALTER DATABASE [ClubLaboratorioPresentacion] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ClubLaboratorioPresentacion] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ClubLaboratorioPresentacion] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ClubLaboratorioPresentacion] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [ClubLaboratorioPresentacion] SET DELAYED_DURABILITY = DISABLED 
GO
USE [ClubLaboratorioPresentacion]
GO
/****** Object:  Table [dbo].[Categorias]    Script Date: 21/11/2023 17:17:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Categorias](
	[id_Categoria] [int] IDENTITY(1,1) NOT NULL,
	[categoria] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Categoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ciudades]    Script Date: 21/11/2023 17:17:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ciudades](
	[id_ciudad] [int] IDENTITY(1,1) NOT NULL,
	[nom_ciudad] [varchar](50) NULL,
	[pais] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_ciudad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Club_temporada]    Script Date: 21/11/2023 17:17:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Club_temporada](
	[id_clubTemp] [int] IDENTITY(1,1) NOT NULL,
	[idClub] [int] NULL,
	[id_temporada] [int] NULL,
	[posicion] [int] NULL,
	[puntos] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_clubTemp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Clubes]    Script Date: 21/11/2023 17:17:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Clubes](
	[IDClub] [int] IDENTITY(1,1) NOT NULL,
	[NombreClub] [varchar](255) NOT NULL,
	[Ciudad] [int] NOT NULL,
	[Estadio] [varchar](255) NOT NULL,
	[fechaFundacion] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDClub] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Contratos_DT]    Script Date: 21/11/2023 17:17:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contratos_DT](
	[id_Contrato] [int] IDENTITY(1,1) NOT NULL,
	[id_Director] [int] NULL,
	[Sueldo] [money] NULL,
	[Fechainicio] [date] NULL,
	[fechaFin] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Contrato] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Contratos_Jugadores]    Script Date: 21/11/2023 17:17:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contratos_Jugadores](
	[id_Contrato] [int] IDENTITY(1,1) NOT NULL,
	[id_Jugador] [int] NULL,
	[IdClub] [int] NULL,
	[Sueldo] [money] NULL,
	[Fechainicio] [date] NULL,
	[fechaFin] [date] NULL,
	[valor] [money] NULL,
	[Clausula] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Contrato] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DirectoresTecnicos]    Script Date: 21/11/2023 17:17:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DirectoresTecnicos](
	[id_Director] [int] IDENTITY(1,1) NOT NULL,
	[idClub] [int] NULL,
	[id_Pais] [int] NULL,
	[Fecha_Nacimiento] [date] NULL,
	[nombre] [varchar](100) NULL,
	[Experiencia] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Director] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EstadisticasPartido]    Script Date: 21/11/2023 17:17:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstadisticasPartido](
	[ID_ESTADISTICA] [int] IDENTITY(1,1) NOT NULL,
	[IDPartido] [int] NULL,
	[IDJUGADOR] [int] NULL,
	[Goles] [int] NULL,
	[asistencias] [int] NULL,
	[Amarillas] [int] NULL,
	[rojas] [int] NULL,
	[TiempoJugado] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_ESTADISTICA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Jugadores]    Script Date: 21/11/2023 17:17:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Jugadores](
	[IDJugador] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](255) NOT NULL,
	[Apellido] [varchar](255) NOT NULL,
	[club] [int] NULL,
	[PosicionID] [int] NULL,
	[NumeroCamiseta] [int] NULL,
	[Nacionalidad] [int] NULL,
	[FechaNacimiento] [date] NULL,
	[Altura] [decimal](4, 2) NULL,
	[Peso] [decimal](4, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDJugador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[paises]    Script Date: 21/11/2023 17:17:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[paises](
	[id_pais] [int] IDENTITY(1,1) NOT NULL,
	[nombrePais] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_pais] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Partidos]    Script Date: 21/11/2023 17:17:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partidos](
	[IDPartido] [int] IDENTITY(1,1) NOT NULL,
	[Fecha] [date] NULL,
	[EquipoLocal] [int] NOT NULL,
	[Adversario] [int] NULL,
	[id_temporada] [int] NULL,
	[Goles_Local] [int] NULL,
	[Goles_Visitante] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDPartido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Patrocinadores]    Script Date: 21/11/2023 17:17:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Patrocinadores](
	[IDPatrocinador] [int] IDENTITY(1,1) NOT NULL,
	[Tipo] [int] NULL,
	[Descripcion] [varchar](255) NULL,
	[Contacto] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDPatrocinador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Patrocinadores_Clubes]    Script Date: 21/11/2023 17:17:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patrocinadores_Clubes](
	[id_Patocinador_Club] [int] IDENTITY(1,1) NOT NULL,
	[idClub] [int] NULL,
	[patrocinador] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Patocinador_Club] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Posiciones]    Script Date: 21/11/2023 17:17:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Posiciones](
	[IDPosicion] [int] IDENTITY(1,1) NOT NULL,
	[NombrePosicion] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDPosicion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Temporadas]    Script Date: 21/11/2023 17:17:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Temporadas](
	[IDTemporada] [int] IDENTITY(1,1) NOT NULL,
	[IDCategoria] [int] NULL,
	[AnioInicio] [int] NOT NULL,
	[AnioFin] [int] NOT NULL,
	[id_torneo] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDTemporada] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TipoPatrocinador]    Script Date: 21/11/2023 17:17:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoPatrocinador](
	[IdTipopatrocinio] [int] IDENTITY(1,1) NOT NULL,
	[Nombretipo] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdTipopatrocinio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TiposVenta]    Script Date: 21/11/2023 17:17:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TiposVenta](
	[IDTipoVenta] [int] IDENTITY(1,1) NOT NULL,
	[NombreTipoVenta] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDTipoVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[torneos]    Script Date: 21/11/2023 17:17:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[torneos](
	[id_Torneo] [int] IDENTITY(1,1) NOT NULL,
	[torneo] [varchar](50) NULL,
	[descripcion] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Torneo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Transferencias]    Script Date: 21/11/2023 17:17:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transferencias](
	[IDTransferencia] [int] IDENTITY(1,1) NOT NULL,
	[IDJugador] [int] NULL,
	[FechaTransferencia] [date] NULL,
	[MontoTransferencia] [decimal](10, 2) NULL,
	[IDTipoVenta] [int] NULL,
	[ClubOrigen] [int] NULL,
	[ClubDestino] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDTransferencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UsuarioEPF]    Script Date: 21/11/2023 17:17:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UsuarioEPF](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[usuario] [varchar](40) NOT NULL,
	[pass] [varchar](20) NOT NULL,
 CONSTRAINT [pk_usuario] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[JugArgCont]    Script Date: 21/11/2023 17:17:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create view [dbo].[JugArgCont]
as
Select j.Nombre + ' ' + j.Apellido Nombre, j.FechaNacimiento, cj.Sueldo, cj.valor, cj.clausula, cj.Fechainicio, cj.fechaFin
from Jugadores j join Contratos_Jugadores cj on j.IDJugador = cj.id_Jugador
where j.Nacionalidad = 1

GO
/****** Object:  View [dbo].[VistaEstadisticasClub]    Script Date: 21/11/2023 17:17:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VistaEstadisticasClub] AS
SELECT
    C.NombreClub AS 'Club',
    CT.puntos AS 'Puntos',
    COALESCE(SUM(E.Goles), 0) AS 'Goles',
    TE.torneo AS 'Torneo',
    CONCAT(T.AnioInicio, '/', T.AnioFin) AS 'Temporada'
FROM
    Clubes C
JOIN
    Club_temporada CT ON CT.idClub = C.IDClub
JOIN
    Temporadas T ON T.IDTemporada = CT.id_temporada
JOIN
    Partidos P ON P.id_temporada = T.IDTemporada
JOIN
    Torneos TE ON T.id_torneo = TE.id_Torneo
JOIN
    Jugadores J ON J.club = C.IDClub
LEFT JOIN
    EstadisticasPartido E ON E.IDJUGADOR = J.IDJugador AND E.IDPartido = P.IDPartido
GROUP BY
    CT.puntos,C.NombreClub,TE.torneo, T.AnioInicio, T.AnioFin;
GO
/****** Object:  View [dbo].[VistaTablaPosiciones_Torneo_Temporada]    Script Date: 21/11/2023 17:17:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VistaTablaPosiciones_Torneo_Temporada] AS
SELECT
    C.NombreClub AS 'Club',
    CT.puntos AS 'Puntos',
    COALESCE(SUM(E.Goles), 0) AS 'Goles',
    TE.torneo AS 'Torneo',
    CONCAT(T.AnioInicio, '/', T.AnioFin) AS 'Temporada'
FROM
    Clubes C
JOIN
    Club_temporada CT ON CT.idClub = C.IDClub
JOIN
    Temporadas T ON T.IDTemporada = CT.id_temporada
JOIN
    Partidos P ON P.id_temporada = T.IDTemporada
JOIN
    Torneos TE ON T.id_torneo = TE.id_Torneo
JOIN
    Jugadores J ON J.club = C.IDClub
LEFT JOIN
    EstadisticasPartido E ON E.IDJUGADOR = J.IDJugador AND E.IDPartido = P.IDPartido
GROUP BY
    CT.puntos,C.NombreClub,  TE.torneo, T.AnioInicio, T.AnioFin
GO
SET IDENTITY_INSERT [dbo].[Categorias] ON 

INSERT [dbo].[Categorias] ([id_Categoria], [categoria]) VALUES (1, N'Primera')
INSERT [dbo].[Categorias] ([id_Categoria], [categoria]) VALUES (2, N'Reserva')
INSERT [dbo].[Categorias] ([id_Categoria], [categoria]) VALUES (3, N'Juveniles')
SET IDENTITY_INSERT [dbo].[Categorias] OFF
SET IDENTITY_INSERT [dbo].[Ciudades] ON 

INSERT [dbo].[Ciudades] ([id_ciudad], [nom_ciudad], [pais]) VALUES (1, N'Buenos Aires', 1)
INSERT [dbo].[Ciudades] ([id_ciudad], [nom_ciudad], [pais]) VALUES (2, N'Cordoba', 1)
INSERT [dbo].[Ciudades] ([id_ciudad], [nom_ciudad], [pais]) VALUES (3, N'Santa Fe', 1)
INSERT [dbo].[Ciudades] ([id_ciudad], [nom_ciudad], [pais]) VALUES (4, N'Formosa', 1)
INSERT [dbo].[Ciudades] ([id_ciudad], [nom_ciudad], [pais]) VALUES (5, N'Misiones', 1)
INSERT [dbo].[Ciudades] ([id_ciudad], [nom_ciudad], [pais]) VALUES (6, N'Chaco', 1)
INSERT [dbo].[Ciudades] ([id_ciudad], [nom_ciudad], [pais]) VALUES (7, N'San Luis', 1)
INSERT [dbo].[Ciudades] ([id_ciudad], [nom_ciudad], [pais]) VALUES (8, N'San Juan', 1)
INSERT [dbo].[Ciudades] ([id_ciudad], [nom_ciudad], [pais]) VALUES (9, N'Mendoza', 1)
INSERT [dbo].[Ciudades] ([id_ciudad], [nom_ciudad], [pais]) VALUES (10, N'Chubut', 1)
INSERT [dbo].[Ciudades] ([id_ciudad], [nom_ciudad], [pais]) VALUES (11, N'Rio Negro', 1)
INSERT [dbo].[Ciudades] ([id_ciudad], [nom_ciudad], [pais]) VALUES (12, N'Entre Rios', 1)
INSERT [dbo].[Ciudades] ([id_ciudad], [nom_ciudad], [pais]) VALUES (13, N'CataMarca', 1)
INSERT [dbo].[Ciudades] ([id_ciudad], [nom_ciudad], [pais]) VALUES (14, N'Santa Cruz', 1)
INSERT [dbo].[Ciudades] ([id_ciudad], [nom_ciudad], [pais]) VALUES (15, N'Tierra del Fuego', 1)
INSERT [dbo].[Ciudades] ([id_ciudad], [nom_ciudad], [pais]) VALUES (16, N'La Pampa', 1)
INSERT [dbo].[Ciudades] ([id_ciudad], [nom_ciudad], [pais]) VALUES (17, N'Tucuman', 1)
INSERT [dbo].[Ciudades] ([id_ciudad], [nom_ciudad], [pais]) VALUES (18, N'La Rioja', 1)
INSERT [dbo].[Ciudades] ([id_ciudad], [nom_ciudad], [pais]) VALUES (19, N'Salta', 1)
INSERT [dbo].[Ciudades] ([id_ciudad], [nom_ciudad], [pais]) VALUES (20, N'Jujuy', 1)
INSERT [dbo].[Ciudades] ([id_ciudad], [nom_ciudad], [pais]) VALUES (21, N'Neuquen', 1)
INSERT [dbo].[Ciudades] ([id_ciudad], [nom_ciudad], [pais]) VALUES (22, N'Santiago Del Estero', 1)
INSERT [dbo].[Ciudades] ([id_ciudad], [nom_ciudad], [pais]) VALUES (23, N'Corrientes', 1)
SET IDENTITY_INSERT [dbo].[Ciudades] OFF
SET IDENTITY_INSERT [dbo].[Club_temporada] ON 

INSERT [dbo].[Club_temporada] ([id_clubTemp], [idClub], [id_temporada], [posicion], [puntos]) VALUES (1, 1, 1, NULL, 10)
INSERT [dbo].[Club_temporada] ([id_clubTemp], [idClub], [id_temporada], [posicion], [puntos]) VALUES (2, 2, 1, NULL, 9)
INSERT [dbo].[Club_temporada] ([id_clubTemp], [idClub], [id_temporada], [posicion], [puntos]) VALUES (3, 3, 1, NULL, 4)
INSERT [dbo].[Club_temporada] ([id_clubTemp], [idClub], [id_temporada], [posicion], [puntos]) VALUES (4, 4, 1, NULL, 4)
INSERT [dbo].[Club_temporada] ([id_clubTemp], [idClub], [id_temporada], [posicion], [puntos]) VALUES (5, 5, 1, NULL, 2)
INSERT [dbo].[Club_temporada] ([id_clubTemp], [idClub], [id_temporada], [posicion], [puntos]) VALUES (6, 6, 1, NULL, 1)
INSERT [dbo].[Club_temporada] ([id_clubTemp], [idClub], [id_temporada], [posicion], [puntos]) VALUES (7, 7, 1, NULL, 6)
INSERT [dbo].[Club_temporada] ([id_clubTemp], [idClub], [id_temporada], [posicion], [puntos]) VALUES (8, 8, 1, NULL, 2)
INSERT [dbo].[Club_temporada] ([id_clubTemp], [idClub], [id_temporada], [posicion], [puntos]) VALUES (9, 9, 1, NULL, 3)
INSERT [dbo].[Club_temporada] ([id_clubTemp], [idClub], [id_temporada], [posicion], [puntos]) VALUES (10, 10, 1, NULL, 1)
INSERT [dbo].[Club_temporada] ([id_clubTemp], [idClub], [id_temporada], [posicion], [puntos]) VALUES (11, 11, 1, NULL, 4)
INSERT [dbo].[Club_temporada] ([id_clubTemp], [idClub], [id_temporada], [posicion], [puntos]) VALUES (12, 12, 1, NULL, 6)
INSERT [dbo].[Club_temporada] ([id_clubTemp], [idClub], [id_temporada], [posicion], [puntos]) VALUES (13, 13, 1, NULL, 0)
INSERT [dbo].[Club_temporada] ([id_clubTemp], [idClub], [id_temporada], [posicion], [puntos]) VALUES (14, 14, 1, NULL, 2)
INSERT [dbo].[Club_temporada] ([id_clubTemp], [idClub], [id_temporada], [posicion], [puntos]) VALUES (15, 15, 1, NULL, 1)
INSERT [dbo].[Club_temporada] ([id_clubTemp], [idClub], [id_temporada], [posicion], [puntos]) VALUES (16, 16, 1, NULL, 6)
INSERT [dbo].[Club_temporada] ([id_clubTemp], [idClub], [id_temporada], [posicion], [puntos]) VALUES (17, 17, 1, NULL, 2)
INSERT [dbo].[Club_temporada] ([id_clubTemp], [idClub], [id_temporada], [posicion], [puntos]) VALUES (18, 18, 1, NULL, 4)
INSERT [dbo].[Club_temporada] ([id_clubTemp], [idClub], [id_temporada], [posicion], [puntos]) VALUES (19, 19, 1, NULL, 14)
INSERT [dbo].[Club_temporada] ([id_clubTemp], [idClub], [id_temporada], [posicion], [puntos]) VALUES (20, 20, 1, NULL, 3)
SET IDENTITY_INSERT [dbo].[Club_temporada] OFF
SET IDENTITY_INSERT [dbo].[Clubes] ON 

INSERT [dbo].[Clubes] ([IDClub], [NombreClub], [Ciudad], [Estadio], [fechaFundacion]) VALUES (1, N'Boca', 1, N'Bombonera', CAST(N'1939-02-18 00:00:00.000' AS DateTime))
INSERT [dbo].[Clubes] ([IDClub], [NombreClub], [Ciudad], [Estadio], [fechaFundacion]) VALUES (2, N'Belgrano', 2, N'Julio Cesar Villagra', CAST(N'1929-03-17 00:00:00.000' AS DateTime))
INSERT [dbo].[Clubes] ([IDClub], [NombreClub], [Ciudad], [Estadio], [fechaFundacion]) VALUES (3, N'Gimnasia y Esgrima', 1, N'23 de Agosto', CAST(N'1973-03-27 00:00:00.000' AS DateTime))
INSERT [dbo].[Clubes] ([IDClub], [NombreClub], [Ciudad], [Estadio], [fechaFundacion]) VALUES (4, N'Huracan', 2, N'Hidalgo', CAST(N'1993-02-14 00:00:00.000' AS DateTime))
INSERT [dbo].[Clubes] ([IDClub], [NombreClub], [Ciudad], [Estadio], [fechaFundacion]) VALUES (5, N'Estudiantes', 1, N'Jorge Luis Hirschi', CAST(N'1907-12-25 00:00:00.000' AS DateTime))
INSERT [dbo].[Clubes] ([IDClub], [NombreClub], [Ciudad], [Estadio], [fechaFundacion]) VALUES (6, N'Godoy Cruz', 9, N'Feliciano Gambarte', CAST(N'1959-10-03 00:00:00.000' AS DateTime))
INSERT [dbo].[Clubes] ([IDClub], [NombreClub], [Ciudad], [Estadio], [fechaFundacion]) VALUES (7, N'Club Atlético Platense', 1, N'Vicente Lopez', CAST(N'1979-06-22 00:00:00.000' AS DateTime))
INSERT [dbo].[Clubes] ([IDClub], [NombreClub], [Ciudad], [Estadio], [fechaFundacion]) VALUES (8, N'Racing Club', 1, N'Presidente Perón', CAST(N'1903-03-25 00:00:00.000' AS DateTime))
INSERT [dbo].[Clubes] ([IDClub], [NombreClub], [Ciudad], [Estadio], [fechaFundacion]) VALUES (9, N'Club Atlético Tigre', 1, N'José Dellagiovanna "El Coliseo"', CAST(N'1936-09-20 00:00:00.000' AS DateTime))
INSERT [dbo].[Clubes] ([IDClub], [NombreClub], [Ciudad], [Estadio], [fechaFundacion]) VALUES (10, N'Club Atlético Unión', 3, N'15 de abril', CAST(N'1928-04-28 00:00:00.000' AS DateTime))
INSERT [dbo].[Clubes] ([IDClub], [NombreClub], [Ciudad], [Estadio], [fechaFundacion]) VALUES (11, N'Club Atlético Vélez Sarsfield', 1, N'José Amalfitani', CAST(N'1951-04-22 00:00:00.000' AS DateTime))
INSERT [dbo].[Clubes] ([IDClub], [NombreClub], [Ciudad], [Estadio], [fechaFundacion]) VALUES (12, N'San Lorenzo', 1, N'Pedro Bidegain', CAST(N'1908-01-04 00:00:00.000' AS DateTime))
INSERT [dbo].[Clubes] ([IDClub], [NombreClub], [Ciudad], [Estadio], [fechaFundacion]) VALUES (13, N'Instituto', 2, N'Juan Domingo Perón', CAST(N'1918-08-08 00:00:00.000' AS DateTime))
INSERT [dbo].[Clubes] ([IDClub], [NombreClub], [Ciudad], [Estadio], [fechaFundacion]) VALUES (14, N'Sarmiento', 1, N'Eva Perón', CAST(N'1911-01-04 00:00:00.000' AS DateTime))
INSERT [dbo].[Clubes] ([IDClub], [NombreClub], [Ciudad], [Estadio], [fechaFundacion]) VALUES (15, N'Lanús', 1, N'Ciudad de Lanús', CAST(N'1915-03-01 00:00:00.000' AS DateTime))
INSERT [dbo].[Clubes] ([IDClub], [NombreClub], [Ciudad], [Estadio], [fechaFundacion]) VALUES (16, N'Arsenal', 1, N'Estadio Julio Humberto Grondona', CAST(N'1957-01-11 00:00:00.000' AS DateTime))
INSERT [dbo].[Clubes] ([IDClub], [NombreClub], [Ciudad], [Estadio], [fechaFundacion]) VALUES (17, N'Independiente', 1, N'Libertadores de América', CAST(N'1904-04-08 00:00:00.000' AS DateTime))
INSERT [dbo].[Clubes] ([IDClub], [NombreClub], [Ciudad], [Estadio], [fechaFundacion]) VALUES (18, N'Rosario Central', 3, N'Gigante de Arroyito', CAST(N'1889-12-24 00:00:00.000' AS DateTime))
INSERT [dbo].[Clubes] ([IDClub], [NombreClub], [Ciudad], [Estadio], [fechaFundacion]) VALUES (19, N'Talleres', 2, N'Estadio La Boutique', CAST(N'1913-10-12 00:00:00.000' AS DateTime))
INSERT [dbo].[Clubes] ([IDClub], [NombreClub], [Ciudad], [Estadio], [fechaFundacion]) VALUES (20, N'River Plate', 1, N'Estadio El monumental', CAST(N'1901-05-25 00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Clubes] OFF
SET IDENTITY_INSERT [dbo].[Contratos_DT] ON 

INSERT [dbo].[Contratos_DT] ([id_Contrato], [id_Director], [Sueldo], [Fechainicio], [fechaFin]) VALUES (1, 1, 90000.0000, CAST(N'2022-02-14' AS Date), CAST(N'2025-02-14' AS Date))
INSERT [dbo].[Contratos_DT] ([id_Contrato], [id_Director], [Sueldo], [Fechainicio], [fechaFin]) VALUES (2, 2, 45000.0000, CAST(N'2021-06-10' AS Date), CAST(N'2024-06-10' AS Date))
INSERT [dbo].[Contratos_DT] ([id_Contrato], [id_Director], [Sueldo], [Fechainicio], [fechaFin]) VALUES (3, 3, 75000.0000, CAST(N'2020-11-30' AS Date), CAST(N'2024-11-30' AS Date))
INSERT [dbo].[Contratos_DT] ([id_Contrato], [id_Director], [Sueldo], [Fechainicio], [fechaFin]) VALUES (4, 4, 55000.0000, CAST(N'2022-03-05' AS Date), CAST(N'2025-03-05' AS Date))
INSERT [dbo].[Contratos_DT] ([id_Contrato], [id_Director], [Sueldo], [Fechainicio], [fechaFin]) VALUES (5, 5, 30000.0000, CAST(N'2021-08-15' AS Date), CAST(N'2024-08-15' AS Date))
INSERT [dbo].[Contratos_DT] ([id_Contrato], [id_Director], [Sueldo], [Fechainicio], [fechaFin]) VALUES (6, 6, 85000.0000, CAST(N'2020-10-20' AS Date), CAST(N'2024-10-20' AS Date))
INSERT [dbo].[Contratos_DT] ([id_Contrato], [id_Director], [Sueldo], [Fechainicio], [fechaFin]) VALUES (7, 7, 60000.0000, CAST(N'2022-01-25' AS Date), CAST(N'2025-01-25' AS Date))
INSERT [dbo].[Contratos_DT] ([id_Contrato], [id_Director], [Sueldo], [Fechainicio], [fechaFin]) VALUES (8, 8, 22000.0000, CAST(N'2021-12-03' AS Date), CAST(N'2024-12-03' AS Date))
INSERT [dbo].[Contratos_DT] ([id_Contrato], [id_Director], [Sueldo], [Fechainicio], [fechaFin]) VALUES (9, 9, 72000.0000, CAST(N'2020-05-12' AS Date), CAST(N'2024-05-12' AS Date))
INSERT [dbo].[Contratos_DT] ([id_Contrato], [id_Director], [Sueldo], [Fechainicio], [fechaFin]) VALUES (10, 10, 39000.0000, CAST(N'2022-04-17' AS Date), CAST(N'2025-04-17' AS Date))
INSERT [dbo].[Contratos_DT] ([id_Contrato], [id_Director], [Sueldo], [Fechainicio], [fechaFin]) VALUES (11, 11, 66000.0000, CAST(N'2021-07-28' AS Date), CAST(N'2024-07-28' AS Date))
INSERT [dbo].[Contratos_DT] ([id_Contrato], [id_Director], [Sueldo], [Fechainicio], [fechaFin]) VALUES (12, 12, 25000.0000, CAST(N'2020-09-21' AS Date), CAST(N'2024-09-21' AS Date))
INSERT [dbo].[Contratos_DT] ([id_Contrato], [id_Director], [Sueldo], [Fechainicio], [fechaFin]) VALUES (13, 13, 80000.0000, CAST(N'2022-02-01' AS Date), CAST(N'2025-02-01' AS Date))
INSERT [dbo].[Contratos_DT] ([id_Contrato], [id_Director], [Sueldo], [Fechainicio], [fechaFin]) VALUES (14, 14, 47000.0000, CAST(N'2021-11-11' AS Date), CAST(N'2024-11-11' AS Date))
INSERT [dbo].[Contratos_DT] ([id_Contrato], [id_Director], [Sueldo], [Fechainicio], [fechaFin]) VALUES (15, 15, 34000.0000, CAST(N'2020-04-04' AS Date), CAST(N'2024-04-04' AS Date))
INSERT [dbo].[Contratos_DT] ([id_Contrato], [id_Director], [Sueldo], [Fechainicio], [fechaFin]) VALUES (16, 16, 88000.0000, CAST(N'2022-03-20' AS Date), CAST(N'2025-03-20' AS Date))
INSERT [dbo].[Contratos_DT] ([id_Contrato], [id_Director], [Sueldo], [Fechainicio], [fechaFin]) VALUES (17, 17, 41000.0000, CAST(N'2021-09-02' AS Date), CAST(N'2024-09-02' AS Date))
INSERT [dbo].[Contratos_DT] ([id_Contrato], [id_Director], [Sueldo], [Fechainicio], [fechaFin]) VALUES (18, 18, 67000.0000, CAST(N'2020-07-07' AS Date), CAST(N'2024-07-07' AS Date))
INSERT [dbo].[Contratos_DT] ([id_Contrato], [id_Director], [Sueldo], [Fechainicio], [fechaFin]) VALUES (19, 19, 26000.0000, CAST(N'2022-01-15' AS Date), CAST(N'2025-01-15' AS Date))
INSERT [dbo].[Contratos_DT] ([id_Contrato], [id_Director], [Sueldo], [Fechainicio], [fechaFin]) VALUES (20, 20, 73000.0000, CAST(N'2021-10-30' AS Date), CAST(N'2024-10-30' AS Date))
SET IDENTITY_INSERT [dbo].[Contratos_DT] OFF
SET IDENTITY_INSERT [dbo].[Contratos_Jugadores] ON 

INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (3, 21, 1, 10.0000, CAST(N'2022-01-01' AS Date), CAST(N'2025-01-01' AS Date), 5.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (4, 22, 1, 10000.0000, CAST(N'2022-01-01' AS Date), CAST(N'2025-01-01' AS Date), 5000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (5, 22, 1, 10000.0000, CAST(N'2022-01-01' AS Date), CAST(N'2025-01-01' AS Date), 5000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (6, 23, 1, 15000.0000, CAST(N'2022-03-15' AS Date), CAST(N'2025-03-15' AS Date), 8000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (7, 24, 1, 12000.0000, CAST(N'2022-02-10' AS Date), CAST(N'2025-02-10' AS Date), 7000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (8, 25, 1, 20000.0000, CAST(N'2022-06-20' AS Date), CAST(N'2025-06-20' AS Date), 12000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (9, 26, 1, 18000.0000, CAST(N'2022-04-05' AS Date), CAST(N'2025-04-05' AS Date), 11000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (10, 27, 1, 9000.0000, CAST(N'2022-01-05' AS Date), CAST(N'2025-01-05' AS Date), 3000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (11, 28, 1, 25000.0000, CAST(N'2023-01-01' AS Date), CAST(N'2025-01-01' AS Date), 15000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (12, 29, 1, 6000.0000, CAST(N'2022-10-10' AS Date), CAST(N'2025-10-10' AS Date), 2000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (13, 30, 1, 35000.0000, CAST(N'2021-02-01' AS Date), CAST(N'2024-02-01' AS Date), 19000000.0000, 100000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (14, 31, 1, 8000.0000, CAST(N'2022-11-11' AS Date), CAST(N'2025-11-11' AS Date), 4000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (15, 32, 1, 45000.0000, CAST(N'2022-03-01' AS Date), CAST(N'2024-03-01' AS Date), 17000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (16, 41, 2, 15000.0000, CAST(N'2022-03-15' AS Date), CAST(N'2025-03-15' AS Date), 8000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (17, 42, 2, 12000.0000, CAST(N'2022-02-10' AS Date), CAST(N'2025-02-10' AS Date), 8000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (18, 43, 2, 20000.0000, CAST(N'2022-06-20' AS Date), CAST(N'2025-06-20' AS Date), 12000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (19, 44, 2, 18000.0000, CAST(N'2022-04-05' AS Date), CAST(N'2025-04-05' AS Date), 11000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (20, 45, 2, 9000.0000, CAST(N'2022-01-05' AS Date), CAST(N'2025-01-05' AS Date), 3000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (21, 46, 2, 25000.0000, CAST(N'2021-01-01' AS Date), CAST(N'2025-01-01' AS Date), 15000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (22, 47, 2, 6000.0000, CAST(N'2022-10-10' AS Date), CAST(N'2025-10-10' AS Date), 2000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (23, 48, 2, 35000.0000, CAST(N'2020-02-01' AS Date), CAST(N'2025-02-01' AS Date), 19000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (24, 49, 2, 8000.0000, CAST(N'2022-11-11' AS Date), CAST(N'2025-11-11' AS Date), 5000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (25, 50, 2, 40000.0000, CAST(N'2020-03-01' AS Date), CAST(N'2025-03-01' AS Date), 18000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (26, 51, 2, 20000.0000, CAST(N'2022-01-01' AS Date), CAST(N'2025-01-01' AS Date), 3000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (27, 52, 2, 5000.0000, CAST(N'2022-04-15' AS Date), CAST(N'2025-04-15' AS Date), 3000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (28, 61, 3, 25000.0000, CAST(N'2022-03-15' AS Date), CAST(N'2025-03-15' AS Date), 2000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (29, 62, 3, 15000.0000, CAST(N'2022-02-10' AS Date), CAST(N'2025-02-10' AS Date), 1000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (30, 63, 3, 24000.0000, CAST(N'2022-06-20' AS Date), CAST(N'2025-06-20' AS Date), 11000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (31, 64, 3, 14000.0000, CAST(N'2022-04-05' AS Date), CAST(N'2025-04-05' AS Date), 11000000.0000, 100000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (32, 65, 3, 9100.0000, CAST(N'2022-01-05' AS Date), CAST(N'2025-01-05' AS Date), 3000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (33, 66, 3, 25800.0000, CAST(N'2021-01-01' AS Date), CAST(N'2025-01-01' AS Date), 15000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (34, 67, 3, 6600.0000, CAST(N'2022-10-10' AS Date), CAST(N'2025-10-10' AS Date), 2000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (35, 68, 3, 32000.0000, CAST(N'2020-02-01' AS Date), CAST(N'2025-02-01' AS Date), 19000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (36, 69, 3, 9000.0000, CAST(N'2022-11-11' AS Date), CAST(N'2025-11-11' AS Date), 3000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (37, 70, 3, 47000.0000, CAST(N'2021-03-01' AS Date), CAST(N'2025-03-01' AS Date), 18000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (38, 71, 3, 10000.0000, CAST(N'2022-01-01' AS Date), CAST(N'2025-01-01' AS Date), 1700000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (39, 72, 3, 7000.0000, CAST(N'2021-04-15' AS Date), CAST(N'2025-04-15' AS Date), 9000000.0000, 50000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (40, 101, 4, 23000.0000, CAST(N'2022-03-15' AS Date), CAST(N'2025-03-15' AS Date), 9000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (41, 102, 4, 15000.0000, CAST(N'2022-02-10' AS Date), CAST(N'2025-02-10' AS Date), 8000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (42, 103, 4, 26000.0000, CAST(N'2022-06-20' AS Date), CAST(N'2025-06-20' AS Date), 10000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (43, 104, 4, 11000.0000, CAST(N'2022-04-05' AS Date), CAST(N'2025-04-05' AS Date), 11000000.0000, 100000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (44, 105, 4, 8000.0000, CAST(N'2022-01-05' AS Date), CAST(N'2025-01-05' AS Date), 3000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (45, 106, 4, 35000.0000, CAST(N'2020-01-01' AS Date), CAST(N'2025-01-01' AS Date), 15000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (46, 107, 4, 9000.0000, CAST(N'2022-10-10' AS Date), CAST(N'2025-10-10' AS Date), 14000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (47, 108, 4, 45000.0000, CAST(N'2020-02-01' AS Date), CAST(N'2025-02-01' AS Date), 19000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (48, 109, 4, 5000.0000, CAST(N'2022-11-11' AS Date), CAST(N'2025-11-11' AS Date), 17000000.0000, 50000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (49, 110, 4, 50000.0000, CAST(N'2022-03-01' AS Date), CAST(N'2025-03-01' AS Date), 12000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (50, 111, 4, 17000.0000, CAST(N'2022-01-01' AS Date), CAST(N'2025-01-01' AS Date), 6000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (51, 112, 4, 21000.0000, CAST(N'2021-04-15' AS Date), CAST(N'2025-04-15' AS Date), 8000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (52, 142, 5, 5000.0000, CAST(N'2022-03-15' AS Date), CAST(N'2025-03-15' AS Date), 10000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (53, 143, 5, 18000.0000, CAST(N'2022-02-10' AS Date), CAST(N'2025-02-10' AS Date), 4000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (54, 144, 5, 20000.0000, CAST(N'2022-06-20' AS Date), CAST(N'2025-06-20' AS Date), 10000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (55, 145, 5, 8000.0000, CAST(N'2022-04-05' AS Date), CAST(N'2025-04-05' AS Date), 11000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (56, 146, 5, 29000.0000, CAST(N'2022-01-05' AS Date), CAST(N'2025-01-05' AS Date), 3000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (57, 147, 5, 35000.0000, CAST(N'2022-01-01' AS Date), CAST(N'2025-01-01' AS Date), 15000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (58, 148, 5, 5000.0000, CAST(N'2022-10-10' AS Date), CAST(N'2025-10-10' AS Date), 13000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (59, 149, 5, 5000.0000, CAST(N'2020-02-01' AS Date), CAST(N'2025-02-01' AS Date), 19000000.0000, 50000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (60, 150, 5, 8000.0000, CAST(N'2022-11-11' AS Date), CAST(N'2025-11-11' AS Date), 14000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (61, 151, 5, 42000.0000, CAST(N'2021-03-01' AS Date), CAST(N'2025-03-01' AS Date), 19000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (62, 152, 5, 17000.0000, CAST(N'2022-01-01' AS Date), CAST(N'2025-01-01' AS Date), 6000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (63, 153, 5, 21000.0000, CAST(N'2020-04-15' AS Date), CAST(N'2025-04-15' AS Date), 9000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (120, 486, 16, 15000.0000, CAST(N'2022-10-15' AS Date), CAST(N'2024-10-15' AS Date), 12000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (121, 487, 16, 18000.0000, CAST(N'2022-11-01' AS Date), CAST(N'2024-11-01' AS Date), 15000000.0000, 34583485.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (122, 488, 16, 12000.0000, CAST(N'2022-09-20' AS Date), CAST(N'2024-09-20' AS Date), 11000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (123, 489, 16, 16000.0000, CAST(N'2022-10-20' AS Date), CAST(N'2024-10-20' AS Date), 14000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (124, 490, 16, 170000.0000, CAST(N'2021-11-05' AS Date), CAST(N'2024-11-05' AS Date), 13000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (125, 491, 16, 14000.0000, CAST(N'2021-09-25' AS Date), CAST(N'2024-09-25' AS Date), 11500000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (126, 489, 16, 16000.0000, CAST(N'2021-10-20' AS Date), CAST(N'2026-10-20' AS Date), 14000000.0000, 23656546.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (127, 490, 16, 17000.0000, CAST(N'2021-11-05' AS Date), CAST(N'2028-11-05' AS Date), 13000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (128, 491, 16, 14000.0000, CAST(N'2021-09-25' AS Date), CAST(N'2028-09-25' AS Date), 11500000.0000, 23656546.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (129, 492, 16, 15500.0000, CAST(N'2021-10-02' AS Date), CAST(N'2029-10-02' AS Date), 16000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (130, 493, 16, 16000.0000, CAST(N'2021-11-15' AS Date), CAST(N'2024-11-15' AS Date), 14500000.0000, 10000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (131, 494, 16, 14500.0000, CAST(N'2021-09-18' AS Date), CAST(N'2028-09-18' AS Date), 11000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (132, 495, 16, 18000.0000, CAST(N'2021-11-10' AS Date), CAST(N'2067-11-10' AS Date), 17500000.0000, 10000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (133, 496, 16, 70000.0000, CAST(N'2021-10-05' AS Date), CAST(N'2024-10-05' AS Date), 13200000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (134, 497, 16, 18500.0000, CAST(N'2021-11-22' AS Date), CAST(N'2024-11-22' AS Date), 14000000.0000, 10000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (135, 498, 16, 16200.0000, CAST(N'2022-09-30' AS Date), CAST(N'2024-09-30' AS Date), 15800000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (136, 499, 16, 17500.0000, CAST(N'2022-10-14' AS Date), CAST(N'2024-10-14' AS Date), 16500000.0000, 10000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (137, 500, 16, 16800.0000, CAST(N'2021-11-08' AS Date), CAST(N'2024-11-08' AS Date), 14200000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (138, 501, 16, 16300.0000, CAST(N'2020-10-17' AS Date), CAST(N'2024-10-17' AS Date), 15500000.0000, 10000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (139, 502, 16, 16700.0000, CAST(N'2020-09-22' AS Date), CAST(N'2024-09-22' AS Date), 12000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (140, 503, 16, 15900.0000, CAST(N'2020-11-20' AS Date), CAST(N'2024-11-20' AS Date), 13700000.0000, 10000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (141, 504, 17, 17200.0000, CAST(N'2020-09-28' AS Date), CAST(N'2024-09-28' AS Date), 16300000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (142, 505, 17, 16600.0000, CAST(N'2020-10-09' AS Date), CAST(N'2024-10-09' AS Date), 15100000.0000, 10000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (143, 506, 17, 16400.0000, CAST(N'2021-11-25' AS Date), CAST(N'2024-11-25' AS Date), 18000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (144, 507, 17, 15800.0000, CAST(N'2022-10-12' AS Date), CAST(N'2024-10-12' AS Date), 13200000.0000, 10000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (145, 508, 17, 18200.0000, CAST(N'2021-09-26' AS Date), CAST(N'2024-09-26' AS Date), 14800000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (146, 509, 17, 17600.0000, CAST(N'2021-11-18' AS Date), CAST(N'2024-11-18' AS Date), 14200000.0000, 10000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (147, 510, 17, 16100.0000, CAST(N'2021-09-29' AS Date), CAST(N'2024-09-29' AS Date), 13400000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (148, 511, 17, 15300.0000, CAST(N'2021-10-23' AS Date), CAST(N'2024-10-23' AS Date), 12000000.0000, 10000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (149, 512, 17, 16800.0000, CAST(N'2021-09-21' AS Date), CAST(N'2024-09-21' AS Date), 12500000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (150, 513, 17, 17900.0000, CAST(N'2021-10-30' AS Date), CAST(N'2024-10-30' AS Date), 17000000.0000, 14000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (151, 514, 17, 15700.0000, CAST(N'2021-09-24' AS Date), CAST(N'2024-09-24' AS Date), 14800000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (152, 515, 17, 17400.0000, CAST(N'2021-10-16' AS Date), CAST(N'2024-10-16' AS Date), 15200000.0000, 14000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (153, 516, 17, 18100.0000, CAST(N'2022-11-03' AS Date), CAST(N'2024-11-03' AS Date), 16200000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (154, 517, 17, 16000.0000, CAST(N'2021-09-27' AS Date), CAST(N'2024-09-27' AS Date), 13000000.0000, 14000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (155, 518, 17, 15000.0000, CAST(N'2023-10-21' AS Date), CAST(N'2024-10-21' AS Date), 12800000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (156, 519, 17, 17800.0000, CAST(N'2021-11-14' AS Date), CAST(N'2024-11-14' AS Date), 15800000.0000, 14000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (157, 520, 17, 16200.0000, CAST(N'2020-09-23' AS Date), CAST(N'2024-09-23' AS Date), 14200000.0000, NULL)
GO
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (158, 521, 17, 15900.0000, CAST(N'2022-10-18' AS Date), CAST(N'2024-10-18' AS Date), 13600000.0000, 14000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (159, 522, 18, 16600.0000, CAST(N'2021-09-19' AS Date), CAST(N'2024-09-19' AS Date), 12500000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (160, 523, 18, 17300.0000, CAST(N'2021-11-01' AS Date), CAST(N'2024-11-01' AS Date), 14800000.0000, 14000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (161, 524, 18, 16100.0000, CAST(N'2021-10-10' AS Date), CAST(N'2024-10-10' AS Date), 13800000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (162, 525, 18, 15600.0000, CAST(N'2022-11-23' AS Date), CAST(N'2024-11-23' AS Date), 12900000.0000, 14000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (163, 526, 18, 16400.0000, CAST(N'2021-10-13' AS Date), CAST(N'2024-10-13' AS Date), 12200000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (164, 527, 18, 15200.0000, CAST(N'2021-09-30' AS Date), CAST(N'2024-09-30' AS Date), 11800000.0000, 14000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (165, 528, 18, 18100.0000, CAST(N'2021-10-26' AS Date), CAST(N'2024-10-26' AS Date), 15600000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (166, 529, 18, 16000.0000, CAST(N'2021-10-07' AS Date), CAST(N'2026-10-07' AS Date), 14200000.0000, 14000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (167, 530, 18, 15800.0000, CAST(N'2021-11-20' AS Date), CAST(N'2028-11-20' AS Date), 13400000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (168, 531, 18, 16300.0000, CAST(N'2021-09-25' AS Date), CAST(N'2054-09-25' AS Date), 12600000.0000, 14000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (169, 532, 18, 17200.0000, CAST(N'2021-10-16' AS Date), CAST(N'2027-10-16' AS Date), 14800000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (170, 533, 18, 17600.0000, CAST(N'2021-10-01' AS Date), CAST(N'2029-10-01' AS Date), 15200000.0000, 14000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (171, 534, 18, 16900.0000, CAST(N'2021-09-14' AS Date), CAST(N'2025-09-14' AS Date), 12900000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (172, 535, 18, 15700.0000, CAST(N'2021-10-11' AS Date), CAST(N'2027-10-11' AS Date), 12100000.0000, 10000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (173, 536, 18, 15400.0000, CAST(N'2021-11-02' AS Date), CAST(N'2029-11-02' AS Date), 11700000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (174, 537, 18, 16800.0000, CAST(N'2021-10-05' AS Date), CAST(N'2028-10-05' AS Date), 14000000.0000, 14000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (175, 538, 18, 18200.0000, CAST(N'2022-11-28' AS Date), CAST(N'2024-09-28' AS Date), 13200000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (176, 539, 18, 17300.0000, CAST(N'2022-10-21' AS Date), CAST(N'2024-10-21' AS Date), 13800000.0000, 14000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (177, 540, 18, 15900.0000, CAST(N'2022-09-26' AS Date), CAST(N'2024-09-26' AS Date), 12600000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (178, 541, 19, 16400.0000, CAST(N'2022-10-19' AS Date), CAST(N'2024-10-19' AS Date), 12400000.0000, 1400000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (179, 542, 19, 15500.0000, CAST(N'2022-09-12' AS Date), CAST(N'2024-09-12' AS Date), 11900000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (180, 543, 19, 18000.0000, CAST(N'2022-09-29' AS Date), CAST(N'2024-09-29' AS Date), 15500000.0000, 14000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (181, 544, 19, 16700.0000, CAST(N'2022-10-26' AS Date), CAST(N'2024-10-26' AS Date), 14200000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (182, 545, 19, 17500.0000, CAST(N'2022-10-09' AS Date), CAST(N'2024-10-09' AS Date), 14800000.0000, 8000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (183, 546, 19, 16200.0000, CAST(N'2022-10-15' AS Date), CAST(N'2024-10-15' AS Date), 13700000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (184, 547, 19, 16100.0000, CAST(N'2022-09-14' AS Date), CAST(N'2024-09-14' AS Date), 13300000.0000, 8000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (185, 548, 19, 1580000.0000, CAST(N'2022-10-01' AS Date), CAST(N'2024-10-01' AS Date), 13100000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (186, 549, 19, 16300.0000, CAST(N'2022-11-02' AS Date), CAST(N'2024-11-02' AS Date), 12500000.0000, 8000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (187, 550, 19, 15600.0000, CAST(N'2022-09-21' AS Date), CAST(N'2024-09-21' AS Date), 12000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (188, 551, 19, 15900.0000, CAST(N'2021-09-30' AS Date), CAST(N'2024-09-30' AS Date), 11900000.0000, 8000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (189, 552, 19, 16600.0000, CAST(N'2021-10-22' AS Date), CAST(N'2024-10-22' AS Date), 12600000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (190, 553, 19, 17500.0000, CAST(N'2022-10-13' AS Date), CAST(N'2024-10-13' AS Date), 12800000.0000, 8000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (191, 554, 19, 16700.0000, CAST(N'2021-09-28' AS Date), CAST(N'2024-09-28' AS Date), 12400000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (192, 555, 19, 17100.0000, CAST(N'2021-09-23' AS Date), CAST(N'2024-09-23' AS Date), 12200000.0000, 80000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (193, 556, 19, 16300.0000, CAST(N'2021-10-18' AS Date), CAST(N'2024-10-18' AS Date), 11800000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (194, 557, 19, 15900.0000, CAST(N'2021-11-10' AS Date), CAST(N'2024-11-10' AS Date), 11600000.0000, 8000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (195, 558, 19, 16700.0000, CAST(N'2021-10-05' AS Date), CAST(N'2024-10-05' AS Date), 11400000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (196, 559, 19, 16200.0000, CAST(N'2021-09-29' AS Date), CAST(N'2024-09-29' AS Date), 11200000.0000, 12000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (197, 560, 20, 16400.0000, CAST(N'2021-10-11' AS Date), CAST(N'2024-10-11' AS Date), 11000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (198, 561, 20, 16100.0000, CAST(N'2021-09-30' AS Date), CAST(N'2024-09-30' AS Date), 13500000.0000, 12000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (199, 562, 20, 15400.0000, CAST(N'2021-10-25' AS Date), CAST(N'2024-10-25' AS Date), 13300000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (200, 563, 20, 15800.0000, CAST(N'2021-10-02' AS Date), CAST(N'2024-10-02' AS Date), 13000000.0000, 12000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (201, 564, 20, 16100.0000, CAST(N'2021-09-14' AS Date), CAST(N'2024-09-14' AS Date), 12800000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (202, 565, 20, 15600.0000, CAST(N'2021-10-07' AS Date), CAST(N'2024-10-07' AS Date), 12600000.0000, 12000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (203, 566, 20, 15500.0000, CAST(N'2021-10-30' AS Date), CAST(N'2024-10-30' AS Date), 12400000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (204, 567, 20, 16200.0000, CAST(N'2022-09-22' AS Date), CAST(N'2024-09-22' AS Date), 12200000.0000, 12000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (205, 568, 20, 15800.0000, CAST(N'2022-10-15' AS Date), CAST(N'2024-10-15' AS Date), 12000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (206, 569, 20, 16000.0000, CAST(N'2022-11-02' AS Date), CAST(N'2024-11-02' AS Date), 11800000.0000, 12000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (207, 570, 20, 15700.0000, CAST(N'2022-09-19' AS Date), CAST(N'2024-09-19' AS Date), 11600000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (208, 571, 20, 10000.0000, CAST(N'2022-09-28' AS Date), CAST(N'2024-09-28' AS Date), 11400000.0000, 12000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (209, 572, 20, 30000.0000, CAST(N'2022-10-16' AS Date), CAST(N'2024-10-16' AS Date), 11200000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (210, 573, 20, 90000.0000, CAST(N'2022-11-10' AS Date), CAST(N'2024-11-10' AS Date), 11000000.0000, 22000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (211, 574, 20, 80000.0000, CAST(N'2020-10-05' AS Date), CAST(N'2024-10-05' AS Date), 13500000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (212, 575, 20, 10000.0000, CAST(N'2020-09-30' AS Date), CAST(N'2024-09-30' AS Date), 13300000.0000, 241432343.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (213, 576, 20, 20000.0000, CAST(N'2020-10-22' AS Date), CAST(N'2024-10-22' AS Date), 13000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (214, 577, 20, 70000.0000, CAST(N'2020-09-14' AS Date), CAST(N'2024-09-14' AS Date), 12800000.0000, 30000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (215, 578, 20, 90000.0000, CAST(N'2020-09-30' AS Date), CAST(N'2024-09-30' AS Date), 12600000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (216, 579, 20, 16000.0000, CAST(N'2021-10-15' AS Date), CAST(N'2024-10-15' AS Date), 12400000.0000, 10000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (217, 162, 6, 11000.0000, CAST(N'2021-03-14' AS Date), CAST(N'2025-09-18' AS Date), 13000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (218, 163, 6, 17000.0000, CAST(N'2020-06-07' AS Date), CAST(N'2025-04-22' AS Date), 9500000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (219, 164, 6, 23000.0000, CAST(N'2022-01-11' AS Date), CAST(N'2025-11-03' AS Date), 8000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (220, 165, 6, 18000.0000, CAST(N'2022-02-05' AS Date), CAST(N'2025-08-01' AS Date), 6000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (221, 166, 6, 6000.0000, CAST(N'2020-09-25' AS Date), CAST(N'2025-01-09' AS Date), 11000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (222, 167, 6, 21000.0000, CAST(N'2022-03-18' AS Date), CAST(N'2025-05-16' AS Date), 14000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (223, 168, 6, 15000.0000, CAST(N'2020-12-10' AS Date), CAST(N'2025-03-25' AS Date), 1300000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (224, 169, 6, 8000.0000, CAST(N'2021-08-30' AS Date), CAST(N'2025-02-14' AS Date), 9000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (225, 170, 6, 20000.0000, CAST(N'2021-11-27' AS Date), CAST(N'2025-07-30' AS Date), 7000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (226, 171, 6, 12000.0000, CAST(N'2020-05-09' AS Date), CAST(N'2025-10-10' AS Date), 13000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (227, 172, 6, 14000.0000, CAST(N'2020-07-19' AS Date), CAST(N'2025-06-15' AS Date), 600000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (228, 181, 7, 17000.0000, CAST(N'2020-05-14' AS Date), CAST(N'2025-09-18' AS Date), 8000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (229, 182, 7, 21000.0000, CAST(N'2022-06-07' AS Date), CAST(N'2025-04-22' AS Date), 9500000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (230, 183, 7, 15000.0000, CAST(N'2022-01-11' AS Date), CAST(N'2025-11-03' AS Date), 14000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (231, 184, 7, 12000.0000, CAST(N'2022-02-05' AS Date), CAST(N'2025-08-01' AS Date), 1300000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (232, 185, 7, 6000.0000, CAST(N'2020-09-25' AS Date), CAST(N'2025-01-09' AS Date), 11000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (233, 186, 7, 20000.0000, CAST(N'2022-03-18' AS Date), CAST(N'2025-05-16' AS Date), 13000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (234, 187, 7, 8000.0000, CAST(N'2020-12-10' AS Date), CAST(N'2025-03-25' AS Date), 1300000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (235, 188, 7, 18000.0000, CAST(N'2021-08-30' AS Date), CAST(N'2025-02-14' AS Date), 7000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (236, 189, 7, 13000.0000, CAST(N'2021-11-27' AS Date), CAST(N'2025-07-30' AS Date), 13000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (237, 190, 7, 16000.0000, CAST(N'2020-05-09' AS Date), CAST(N'2025-10-10' AS Date), 600000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (238, 191, 7, 14000.0000, CAST(N'2020-07-19' AS Date), CAST(N'2025-06-15' AS Date), 9500000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (239, 232, 8, 18000.0000, CAST(N'2022-02-15' AS Date), CAST(N'2025-08-07' AS Date), 13000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (240, 233, 8, 22000.0000, CAST(N'2020-11-20' AS Date), CAST(N'2025-02-10' AS Date), 8000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (241, 234, 8, 6000.0000, CAST(N'2022-01-10' AS Date), CAST(N'2025-01-14' AS Date), 1500000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (242, 235, 8, 12000.0000, CAST(N'2021-04-05' AS Date), CAST(N'2025-09-01' AS Date), 7000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (243, 236, 8, 16000.0000, CAST(N'2020-07-28' AS Date), CAST(N'2025-03-15' AS Date), 11000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (244, 237, 8, 9000.0000, CAST(N'2021-06-14' AS Date), CAST(N'2025-06-02' AS Date), 9500000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (245, 238, 8, 23000.0000, CAST(N'2020-03-12' AS Date), CAST(N'2025-11-12' AS Date), 6000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (246, 239, 8, 14000.0000, CAST(N'2020-08-19' AS Date), CAST(N'2025-04-30' AS Date), 13000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (247, 240, 8, 20000.0000, CAST(N'2020-05-03' AS Date), CAST(N'2025-05-25' AS Date), 1300000.0000, 100000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (248, 241, 8, 19000.0000, CAST(N'2022-07-17' AS Date), CAST(N'2025-07-20' AS Date), 11000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (249, 242, 8, 10000.0000, CAST(N'2021-09-09' AS Date), CAST(N'2025-10-05' AS Date), 8000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (250, 253, 9, 14000.0000, CAST(N'2022-02-18' AS Date), CAST(N'2025-04-25' AS Date), 7500000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (251, 254, 9, 18000.0000, CAST(N'2020-07-23' AS Date), CAST(N'2025-11-12' AS Date), 9000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (252, 255, 9, 21000.0000, CAST(N'2022-01-15' AS Date), CAST(N'2025-08-21' AS Date), 6500000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (253, 256, 9, 20000.0000, CAST(N'2020-03-11' AS Date), CAST(N'2025-09-19' AS Date), 11000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (254, 257, 9, 17000.0000, CAST(N'2020-12-08' AS Date), CAST(N'2025-03-02' AS Date), 13000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (255, 258, 9, 21000.0000, CAST(N'2020-11-05' AS Date), CAST(N'2025-10-14' AS Date), 14500000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (256, 259, 9, 16000.0000, CAST(N'2022-03-29' AS Date), CAST(N'2025-01-09' AS Date), 1300000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (257, 260, 9, 19000.0000, CAST(N'2021-06-20' AS Date), CAST(N'2025-02-11' AS Date), 9500000.0000, NULL)
GO
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (258, 261, 9, 13000.0000, CAST(N'2021-05-15' AS Date), CAST(N'2025-08-22' AS Date), 7000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (259, 262, 9, 22000.0000, CAST(N'2022-09-11' AS Date), CAST(N'2025-10-17' AS Date), 12500000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (260, 263, 9, 18000.0000, CAST(N'2021-08-01' AS Date), CAST(N'2025-06-25' AS Date), 8000000.0000, 50000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (261, 295, 10, 9000.0000, CAST(N'2021-07-02' AS Date), CAST(N'2025-03-15' AS Date), 16000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (262, 296, 10, 25000.0000, CAST(N'2021-02-14' AS Date), CAST(N'2025-11-10' AS Date), 8000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (263, 297, 10, 7000.0000, CAST(N'2022-01-20' AS Date), CAST(N'2025-08-28' AS Date), 14000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (264, 298, 10, 15000.0000, CAST(N'2020-12-01' AS Date), CAST(N'2025-01-30' AS Date), 10000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (265, 299, 10, 22000.0000, CAST(N'2022-06-18' AS Date), CAST(N'2025-06-05' AS Date), 12000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (266, 300, 10, 13000.0000, CAST(N'2021-10-11' AS Date), CAST(N'2025-10-28' AS Date), 7000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (267, 301, 10, 18000.0000, CAST(N'2020-04-09' AS Date), CAST(N'2025-09-20' AS Date), 11000000.0000, 100000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (268, 302, 10, 17000.0000, CAST(N'2022-05-07' AS Date), CAST(N'2025-07-12' AS Date), 9000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (269, 303, 10, 19000.0000, CAST(N'2021-08-29' AS Date), CAST(N'2025-05-18' AS Date), 15000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (270, 304, 10, 8000.0000, CAST(N'2020-11-16' AS Date), CAST(N'2025-04-03' AS Date), 1700000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (271, 305, 10, 20000.0000, CAST(N'2022-03-24' AS Date), CAST(N'2025-02-01' AS Date), 10000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (272, 336, 11, 18000.0000, CAST(N'2021-02-18' AS Date), CAST(N'2025-06-28' AS Date), 12500000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (274, 338, 11, 22000.0000, CAST(N'2020-04-15' AS Date), CAST(N'2025-12-11' AS Date), 7000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (277, 341, 11, 20000.0000, CAST(N'2020-08-10' AS Date), CAST(N'2025-04-19' AS Date), 15000000.0000, 100000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (280, 344, 11, 17000.0000, CAST(N'2021-07-07' AS Date), CAST(N'2025-11-02' AS Date), 500000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (282, 346, 11, 14000.0000, CAST(N'2020-06-16' AS Date), CAST(N'2025-07-12' AS Date), 7000000.0000, NULL)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (283, 359, 11, 100000.0000, CAST(N'2023-10-11' AS Date), CAST(N'2025-10-11' AS Date), 2000000.0000, 2200000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (284, 360, 11, 105000.0000, CAST(N'2023-10-11' AS Date), CAST(N'2025-10-11' AS Date), 2100000.0000, 2300000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (285, 361, 11, 110000.0000, CAST(N'2023-10-11' AS Date), CAST(N'2025-10-11' AS Date), 2200000.0000, 2400000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (286, 362, 11, 115000.0000, CAST(N'2023-10-11' AS Date), CAST(N'2025-10-11' AS Date), 2300000.0000, 2500000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (287, 363, 11, 120000.0000, CAST(N'2023-10-11' AS Date), CAST(N'2025-10-11' AS Date), 2400000.0000, 2600000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (288, 364, 11, 125000.0000, CAST(N'2023-10-11' AS Date), CAST(N'2025-10-11' AS Date), 2500000.0000, 2700000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (289, 365, 11, 130000.0000, CAST(N'2023-10-11' AS Date), CAST(N'2025-10-11' AS Date), 2600000.0000, 2800000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (290, 366, 11, 135000.0000, CAST(N'2023-10-11' AS Date), CAST(N'2025-10-11' AS Date), 2700000.0000, 2900000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (291, 367, 11, 140000.0000, CAST(N'2023-10-11' AS Date), CAST(N'2025-10-11' AS Date), 2800000.0000, 3000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (292, 388, 11, 145000.0000, CAST(N'2023-10-11' AS Date), CAST(N'2025-10-11' AS Date), 2900000.0000, 3100000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (293, 389, 12, 100000.0000, CAST(N'2022-10-11' AS Date), CAST(N'2024-10-11' AS Date), 2000000.0000, 3000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (294, 390, 12, 110000.0000, CAST(N'2022-09-15' AS Date), CAST(N'2024-09-15' AS Date), 2200000.0000, 3300000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (295, 391, 12, 95000.0000, CAST(N'2022-08-05' AS Date), CAST(N'2024-08-05' AS Date), 1900000.0000, 2850000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (296, 392, 12, 90000.0000, CAST(N'2022-07-20' AS Date), CAST(N'2024-07-20' AS Date), 1800000.0000, 2700000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (297, 393, 12, 85000.0000, CAST(N'2022-06-14' AS Date), CAST(N'2024-06-14' AS Date), 1700000.0000, 2550000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (298, 394, 12, 80000.0000, CAST(N'2022-05-19' AS Date), CAST(N'2024-05-19' AS Date), 1600000.0000, 2400000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (299, 395, 12, 75000.0000, CAST(N'2022-04-25' AS Date), CAST(N'2024-04-25' AS Date), 1500000.0000, 2250000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (300, 396, 12, 70000.0000, CAST(N'2022-03-30' AS Date), CAST(N'2024-03-30' AS Date), 1400000.0000, 2100000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (301, 408, 12, 65000.0000, CAST(N'2022-03-05' AS Date), CAST(N'2024-03-05' AS Date), 1300000.0000, 1950000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (302, 409, 12, 60000.0000, CAST(N'2022-02-10' AS Date), CAST(N'2024-02-10' AS Date), 1200000.0000, 1800000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (303, 410, 12, 55000.0000, CAST(N'2022-01-15' AS Date), CAST(N'2024-01-15' AS Date), 1100000.0000, 1650000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (304, 411, 12, 50000.0000, CAST(N'2021-12-20' AS Date), CAST(N'2023-12-20' AS Date), 1000000.0000, 1500000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (305, 412, 12, 40000.0000, CAST(N'2020-12-10' AS Date), CAST(N'2023-12-10' AS Date), 3500000.0000, 45000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (306, 413, 12, 41000.0000, CAST(N'2023-06-20' AS Date), CAST(N'2026-06-20' AS Date), 3800000.0000, 48000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (307, 414, 12, 41000.0000, CAST(N'2022-02-28' AS Date), CAST(N'2025-02-28' AS Date), 4000000.0000, 50000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (308, 415, 12, 55000.0000, CAST(N'2020-11-15' AS Date), CAST(N'2023-11-15' AS Date), 3300000.0000, 43000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (309, 416, 12, 64000.0000, CAST(N'2023-09-30' AS Date), CAST(N'2026-09-30' AS Date), 3400000.0000, 44000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (310, 417, 12, 64500.0000, CAST(N'2021-10-10' AS Date), CAST(N'2024-10-10' AS Date), 3300000.0000, 43000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (311, 418, 12, 58000.0000, CAST(N'2020-11-25' AS Date), CAST(N'2023-11-25' AS Date), 3200000.0000, 42000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (312, 419, 12, 64500.0000, CAST(N'2022-08-05' AS Date), CAST(N'2025-08-05' AS Date), 3400000.0000, 44000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (313, 420, 13, 66400.0000, CAST(N'2021-10-10' AS Date), CAST(N'2024-10-10' AS Date), 3300000.0000, 43000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (314, 421, 13, 54000.0000, CAST(N'2020-11-25' AS Date), CAST(N'2023-11-25' AS Date), 3200000.0000, 42000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (315, 422, 13, 45000.0000, CAST(N'2022-08-05' AS Date), CAST(N'2025-08-05' AS Date), 3400000.0000, 44000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (316, 423, 13, 84000.0000, CAST(N'2023-01-15' AS Date), CAST(N'2026-01-15' AS Date), 3500000.0000, 45000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (317, 424, 13, 90000.0000, CAST(N'2020-12-08' AS Date), CAST(N'2023-12-08' AS Date), 3200000.0000, 42000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (318, 425, 13, 91000.0000, CAST(N'2022-07-20' AS Date), CAST(N'2025-07-20' AS Date), 3400000.0000, 44000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (319, 426, 13, 78000.0000, CAST(N'2023-05-02' AS Date), CAST(N'2026-05-02' AS Date), 3600000.0000, 46000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (320, 427, 13, 77000.0000, CAST(N'2022-10-30' AS Date), CAST(N'2025-10-30' AS Date), 3450000.0000, 44500000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (321, 428, 13, 76000.0000, CAST(N'2022-03-15' AS Date), CAST(N'2025-03-15' AS Date), 3350000.0000, 43500000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (322, 429, 13, 76500.0000, CAST(N'2020-08-10' AS Date), CAST(N'2023-08-10' AS Date), 3150000.0000, 41500000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (323, 430, 13, 69000.0000, CAST(N'2023-07-01' AS Date), CAST(N'2026-07-01' AS Date), 3650000.0000, 46500000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (324, 431, 13, 43000.0000, CAST(N'2023-09-25' AS Date), CAST(N'2026-09-25' AS Date), 3700000.0000, 47000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (325, 432, 13, 41000.0000, CAST(N'2022-06-15' AS Date), CAST(N'2025-06-15' AS Date), 3400000.0000, 44000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (326, 433, 13, 43000.0000, CAST(N'2022-05-18' AS Date), CAST(N'2025-05-18' AS Date), 3400000.0000, 44000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (327, 434, 13, 40000.0000, CAST(N'2021-07-12' AS Date), CAST(N'2024-07-12' AS Date), 3250000.0000, 42500000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (328, 435, 13, 62000.0000, CAST(N'2022-04-30' AS Date), CAST(N'2025-04-30' AS Date), 3400000.0000, 44000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (329, 436, 13, 66000.0000, CAST(N'2021-11-15' AS Date), CAST(N'2024-11-15' AS Date), 3300000.0000, 43000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (330, 437, 13, 96000.0000, CAST(N'2023-02-18' AS Date), CAST(N'2026-02-18' AS Date), 3550000.0000, 45500000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (331, 438, 13, 99000.0000, CAST(N'2020-11-10' AS Date), CAST(N'2023-11-10' AS Date), 3200000.0000, 42000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (332, 439, 13, 84000.0000, CAST(N'2022-03-15' AS Date), CAST(N'2025-03-15' AS Date), 3380000.0000, 43800000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (333, 440, 14, 81000.0000, CAST(N'2021-10-15' AS Date), CAST(N'2024-10-15' AS Date), 3600000.0000, 46000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (334, 441, 14, 82000.0000, CAST(N'2022-03-20' AS Date), CAST(N'2025-03-20' AS Date), 3850000.0000, 48500000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (335, 442, 14, 83300.0000, CAST(N'2022-09-10' AS Date), CAST(N'2025-09-10' AS Date), 3700000.0000, 47000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (336, 443, 14, 84000.0000, CAST(N'2022-02-05' AS Date), CAST(N'2025-02-05' AS Date), 4000000.0000, 50000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (337, 444, 14, 74000.0000, CAST(N'2021-12-18' AS Date), CAST(N'2024-12-18' AS Date), 3500000.0000, 45000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (338, 445, 14, 73000.0000, CAST(N'2022-03-25' AS Date), CAST(N'2025-03-25' AS Date), 3750000.0000, 47500000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (339, 446, 14, 72000.0000, CAST(N'2022-08-10' AS Date), CAST(N'2025-08-10' AS Date), 3950000.0000, 49500000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (340, 447, 14, 71000.0000, CAST(N'2021-06-05' AS Date), CAST(N'2024-06-05' AS Date), 3550000.0000, 45500000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (341, 448, 14, 60000.0000, CAST(N'2021-11-18' AS Date), CAST(N'2024-11-18' AS Date), 3650000.0000, 46500000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (342, 449, 14, 66000.0000, CAST(N'2022-05-30' AS Date), CAST(N'2025-05-30' AS Date), 3800000.0000, 48000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (343, 450, 14, 64000.0000, CAST(N'2022-06-10' AS Date), CAST(N'2025-06-10' AS Date), 3650000.0000, 46500000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (344, 451, 14, 84000.0000, CAST(N'2021-10-25' AS Date), CAST(N'2024-10-25' AS Date), 3550000.0000, 45500000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (345, 452, 14, 85000.0000, CAST(N'2022-09-10' AS Date), CAST(N'2025-09-10' AS Date), 3700000.0000, 47000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (346, 453, 14, 86000.0000, CAST(N'2022-02-10' AS Date), CAST(N'2025-02-10' AS Date), 3750000.0000, 47500000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (347, 454, 14, 87000.0000, CAST(N'2021-12-05' AS Date), CAST(N'2024-12-05' AS Date), 3600000.0000, 46000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (348, 455, 14, 88000.0000, CAST(N'2022-04-15' AS Date), CAST(N'2025-04-15' AS Date), 3900000.0000, 49000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (349, 456, 14, 89000.0000, CAST(N'2022-07-10' AS Date), CAST(N'2025-07-10' AS Date), 3650000.0000, 46500000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (350, 457, 14, 90000.0000, CAST(N'2022-06-20' AS Date), CAST(N'2025-06-20' AS Date), 3750000.0000, 47500000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (351, 458, 14, 41000.0000, CAST(N'2021-06-15' AS Date), CAST(N'2024-06-15' AS Date), 3500000.0000, 45000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (352, 459, 15, 42000.0000, CAST(N'2022-03-15' AS Date), CAST(N'2025-03-15' AS Date), 3600000.0000, 46000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (353, 460, 15, 43000.0000, CAST(N'2022-07-28' AS Date), CAST(N'2025-07-28' AS Date), 3650000.0000, 46500000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (354, 461, 15, 44000.0000, CAST(N'2022-06-15' AS Date), CAST(N'2025-06-15' AS Date), 3700000.0000, 47000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (355, 462, 15, 45000.0000, CAST(N'2021-11-10' AS Date), CAST(N'2024-11-10' AS Date), 3550000.0000, 45500000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (356, 463, 15, 46000.0000, CAST(N'2021-12-15' AS Date), CAST(N'2024-12-15' AS Date), 3750000.0000, 47500000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (357, 464, 15, 47000.0000, CAST(N'2022-02-28' AS Date), CAST(N'2025-02-28' AS Date), 3700000.0000, 47000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (358, 465, 15, 48000.0000, CAST(N'2022-05-25' AS Date), CAST(N'2025-05-25' AS Date), 3600000.0000, 46000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (359, 466, 15, 49000.0000, CAST(N'2021-09-10' AS Date), CAST(N'2024-09-10' AS Date), 3550000.0000, 45500000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (360, 467, 15, 50000.0000, CAST(N'2022-03-20' AS Date), CAST(N'2025-03-20' AS Date), 3800000.0000, 48000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (361, 468, 15, 51000.0000, CAST(N'2022-08-05' AS Date), CAST(N'2025-08-05' AS Date), 3650000.0000, 46500000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (362, 469, 15, 52000.0000, CAST(N'2021-12-18' AS Date), CAST(N'2024-12-18' AS Date), 3750000.0000, 47500000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (363, 470, 15, 53000.0000, CAST(N'2022-03-10' AS Date), CAST(N'2025-03-10' AS Date), 3600000.0000, 46000000.0000)
GO
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (364, 471, 15, 54000.0000, CAST(N'2022-07-18' AS Date), CAST(N'2025-07-18' AS Date), 3850000.0000, 48500000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (365, 472, 15, 55000.0000, CAST(N'2022-06-25' AS Date), CAST(N'2025-06-25' AS Date), 3700000.0000, 47000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (366, 473, 15, 56000.0000, CAST(N'2022-01-15' AS Date), CAST(N'2025-01-15' AS Date), 3650000.0000, 46500000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (367, 474, 15, 57000.0000, CAST(N'2021-09-28' AS Date), CAST(N'2024-09-28' AS Date), 3600000.0000, 46000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (368, 475, 15, 58000.0000, CAST(N'2022-04-10' AS Date), CAST(N'2025-04-10' AS Date), 3800000.0000, 48000000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (369, 476, 15, 59000.0000, CAST(N'2022-08-15' AS Date), CAST(N'2025-08-15' AS Date), 3750000.0000, 47500000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (370, 477, 15, 60000.0000, CAST(N'2021-05-05' AS Date), CAST(N'2024-05-05' AS Date), 3850000.0000, 48500000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (371, 478, 15, 61000.0000, CAST(N'2022-02-02' AS Date), CAST(N'2023-02-02' AS Date), 3850000.0000, 48500000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (372, 479, 15, 63000.0000, CAST(N'2023-01-15' AS Date), CAST(N'2025-01-15' AS Date), 3850000.0000, 48500000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (373, 480, 15, 64000.0000, CAST(N'2021-03-07' AS Date), CAST(N'2024-03-07' AS Date), 3850000.0000, 48500000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (374, 481, 15, 65000.0000, CAST(N'2022-01-12' AS Date), CAST(N'2024-01-12' AS Date), 3850000.0000, 48500000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (375, 482, 15, 66000.0000, CAST(N'2022-04-04' AS Date), CAST(N'2025-04-04' AS Date), 3850000.0000, 48500000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (376, 483, 15, 68000.0000, CAST(N'2022-08-08' AS Date), CAST(N'2025-08-08' AS Date), 3850000.0000, 48500000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (377, 484, 15, 69000.0000, CAST(N'2022-12-10' AS Date), CAST(N'2024-12-10' AS Date), 3850000.0000, 48500000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (378, 485, 15, 7000.0000, CAST(N'2022-01-01' AS Date), CAST(N'2025-01-01' AS Date), 3850000.0000, 48500000.0000)
INSERT [dbo].[Contratos_Jugadores] ([id_Contrato], [id_Jugador], [IdClub], [Sueldo], [Fechainicio], [fechaFin], [valor], [Clausula]) VALUES (379, 412, 15, 40000.0000, CAST(N'2023-12-11' AS Date), CAST(N'2025-12-12' AS Date), 5500000.0000, NULL)
SET IDENTITY_INSERT [dbo].[Contratos_Jugadores] OFF
SET IDENTITY_INSERT [dbo].[DirectoresTecnicos] ON 

INSERT [dbo].[DirectoresTecnicos] ([id_Director], [idClub], [id_Pais], [Fecha_Nacimiento], [nombre], [Experiencia]) VALUES (1, 1, 1, CAST(N'1980-05-15' AS Date), N'Gustavo Alfaro', N'Seleccion Ecuador')
INSERT [dbo].[DirectoresTecnicos] ([id_Director], [idClub], [id_Pais], [Fecha_Nacimiento], [nombre], [Experiencia]) VALUES (2, 2, 1, CAST(N'1985-11-20' AS Date), N'Ricardo Gareca', N'Seleccion Peru')
INSERT [dbo].[DirectoresTecnicos] ([id_Director], [idClub], [id_Pais], [Fecha_Nacimiento], [nombre], [Experiencia]) VALUES (3, 3, 1, CAST(N'1982-07-03' AS Date), N'Abel Balbo', N'Club Quilmes')
INSERT [dbo].[DirectoresTecnicos] ([id_Director], [idClub], [id_Pais], [Fecha_Nacimiento], [nombre], [Experiencia]) VALUES (4, 4, 1, CAST(N'1978-09-10' AS Date), N'Leandro Stillitano', N'')
INSERT [dbo].[DirectoresTecnicos] ([id_Director], [idClub], [id_Pais], [Fecha_Nacimiento], [nombre], [Experiencia]) VALUES (5, 5, 1, CAST(N'1990-02-28' AS Date), N'Hugo Ibarra', N'Club Boca')
INSERT [dbo].[DirectoresTecnicos] ([id_Director], [idClub], [id_Pais], [Fecha_Nacimiento], [nombre], [Experiencia]) VALUES (6, 6, 1, CAST(N'1980-06-08' AS Date), N'Gustavo Munua', N'')
INSERT [dbo].[DirectoresTecnicos] ([id_Director], [idClub], [id_Pais], [Fecha_Nacimiento], [nombre], [Experiencia]) VALUES (7, 7, 1, CAST(N'1987-04-17' AS Date), N'Diego Flores', N'Club Platense')
INSERT [dbo].[DirectoresTecnicos] ([id_Director], [idClub], [id_Pais], [Fecha_Nacimiento], [nombre], [Experiencia]) VALUES (8, 8, 1, CAST(N'1991-01-25' AS Date), N'Rodolfo de Paoli', N'Club Talleres')
INSERT [dbo].[DirectoresTecnicos] ([id_Director], [idClub], [id_Pais], [Fecha_Nacimiento], [nombre], [Experiencia]) VALUES (9, 9, 1, CAST(N'1976-12-12' AS Date), N'Sebastian Battaglia', N'Club Tigre, Club Arsenal')
INSERT [dbo].[DirectoresTecnicos] ([id_Director], [idClub], [id_Pais], [Fecha_Nacimiento], [nombre], [Experiencia]) VALUES (10, 10, 1, CAST(N'1979-10-05' AS Date), N'Javier Sanguinetti', N'')
INSERT [dbo].[DirectoresTecnicos] ([id_Director], [idClub], [id_Pais], [Fecha_Nacimiento], [nombre], [Experiencia]) VALUES (11, 11, 1, CAST(N'1986-03-22' AS Date), N'Carlos Ruiz', N'Club Colon, Club Belgrano')
INSERT [dbo].[DirectoresTecnicos] ([id_Director], [idClub], [id_Pais], [Fecha_Nacimiento], [nombre], [Experiencia]) VALUES (12, 12, 1, CAST(N'1979-08-27' AS Date), N'Carlos Tevez', N'Club Independiente')
INSERT [dbo].[DirectoresTecnicos] ([id_Director], [idClub], [id_Pais], [Fecha_Nacimiento], [nombre], [Experiencia]) VALUES (13, 13, 1, CAST(N'1991-07-14' AS Date), N'Marcelo Gallardo', N'Club River')
INSERT [dbo].[DirectoresTecnicos] ([id_Director], [idClub], [id_Pais], [Fecha_Nacimiento], [nombre], [Experiencia]) VALUES (14, 14, 1, CAST(N'1986-04-29' AS Date), N'Jorge Almiron', N'Club Boca, Club Palmeiras')
INSERT [dbo].[DirectoresTecnicos] ([id_Director], [idClub], [id_Pais], [Fecha_Nacimiento], [nombre], [Experiencia]) VALUES (15, 15, 1, CAST(N'1977-09-03' AS Date), N'Diego Farre', N'Club River')
INSERT [dbo].[DirectoresTecnicos] ([id_Director], [idClub], [id_Pais], [Fecha_Nacimiento], [nombre], [Experiencia]) VALUES (16, 16, 1, CAST(N'1985-11-09' AS Date), N'Leonardo Madelon', N'Club Boca')
INSERT [dbo].[DirectoresTecnicos] ([id_Director], [idClub], [id_Pais], [Fecha_Nacimiento], [nombre], [Experiencia]) VALUES (17, 17, 1, CAST(N'1983-01-12' AS Date), N'Ricardo Zielinski', N'Club Belgrano, Club Atletico Tucuman')
INSERT [dbo].[DirectoresTecnicos] ([id_Director], [idClub], [id_Pais], [Fecha_Nacimiento], [nombre], [Experiencia]) VALUES (18, 18, 1, CAST(N'1982-06-18' AS Date), N'Guillermo Martinez', N'Club Los Angeles Galaxy')
INSERT [dbo].[DirectoresTecnicos] ([id_Director], [idClub], [id_Pais], [Fecha_Nacimiento], [nombre], [Experiencia]) VALUES (19, 19, 1, CAST(N'1976-03-30' AS Date), N'Diego Maradona', N'Club Dorado, Club Gimnasia Esgrima')
INSERT [dbo].[DirectoresTecnicos] ([id_Director], [idClub], [id_Pais], [Fecha_Nacimiento], [nombre], [Experiencia]) VALUES (20, 20, 1, CAST(N'1971-12-08' AS Date), N'Javier Mascherano', N'Seleecccion Argentina')
SET IDENTITY_INSERT [dbo].[DirectoresTecnicos] OFF
SET IDENTITY_INSERT [dbo].[EstadisticasPartido] ON 

INSERT [dbo].[EstadisticasPartido] ([ID_ESTADISTICA], [IDPartido], [IDJUGADOR], [Goles], [asistencias], [Amarillas], [rojas], [TiempoJugado]) VALUES (1, 1, 22, 2, 0, 0, 0, 90)
INSERT [dbo].[EstadisticasPartido] ([ID_ESTADISTICA], [IDPartido], [IDJUGADOR], [Goles], [asistencias], [Amarillas], [rojas], [TiempoJugado]) VALUES (2, 1, 109, 1, 0, 0, 0, 30)
INSERT [dbo].[EstadisticasPartido] ([ID_ESTADISTICA], [IDPartido], [IDJUGADOR], [Goles], [asistencias], [Amarillas], [rojas], [TiempoJugado]) VALUES (3, 3, 63, 2, 1, 1, 0, 90)
INSERT [dbo].[EstadisticasPartido] ([ID_ESTADISTICA], [IDPartido], [IDJUGADOR], [Goles], [asistencias], [Amarillas], [rojas], [TiempoJugado]) VALUES (4, 3, 66, 1, 2, 0, 0, 90)
INSERT [dbo].[EstadisticasPartido] ([ID_ESTADISTICA], [IDPartido], [IDJUGADOR], [Goles], [asistencias], [Amarillas], [rojas], [TiempoJugado]) VALUES (5, 4, 184, 1, 0, 0, 0, 20)
INSERT [dbo].[EstadisticasPartido] ([ID_ESTADISTICA], [IDPartido], [IDJUGADOR], [Goles], [asistencias], [Amarillas], [rojas], [TiempoJugado]) VALUES (6, 4, 185, 1, 0, 0, 0, 30)
INSERT [dbo].[EstadisticasPartido] ([ID_ESTADISTICA], [IDPartido], [IDJUGADOR], [Goles], [asistencias], [Amarillas], [rojas], [TiempoJugado]) VALUES (8, 4, 312, 1, 0, 1, 0, 30)
INSERT [dbo].[EstadisticasPartido] ([ID_ESTADISTICA], [IDPartido], [IDJUGADOR], [Goles], [asistencias], [Amarillas], [rojas], [TiempoJugado]) VALUES (9, 5, 392, 2, 0, 0, 0, 90)
INSERT [dbo].[EstadisticasPartido] ([ID_ESTADISTICA], [IDPartido], [IDJUGADOR], [Goles], [asistencias], [Amarillas], [rojas], [TiempoJugado]) VALUES (10, 5, 393, 2, 0, 0, 0, 90)
INSERT [dbo].[EstadisticasPartido] ([ID_ESTADISTICA], [IDPartido], [IDJUGADOR], [Goles], [asistencias], [Amarillas], [rojas], [TiempoJugado]) VALUES (11, 6, 412, 1, 0, 0, 0, 90)
INSERT [dbo].[EstadisticasPartido] ([ID_ESTADISTICA], [IDPartido], [IDJUGADOR], [Goles], [asistencias], [Amarillas], [rojas], [TiempoJugado]) VALUES (12, 7, 432, 1, 0, 1, 0, 90)
INSERT [dbo].[EstadisticasPartido] ([ID_ESTADISTICA], [IDPartido], [IDJUGADOR], [Goles], [asistencias], [Amarillas], [rojas], [TiempoJugado]) VALUES (13, 7, 433, 1, 1, 0, 0, 30)
INSERT [dbo].[EstadisticasPartido] ([ID_ESTADISTICA], [IDPartido], [IDJUGADOR], [Goles], [asistencias], [Amarillas], [rojas], [TiempoJugado]) VALUES (14, 7, 492, 1, 0, 1, 0, 90)
INSERT [dbo].[EstadisticasPartido] ([ID_ESTADISTICA], [IDPartido], [IDJUGADOR], [Goles], [asistencias], [Amarillas], [rojas], [TiempoJugado]) VALUES (15, 7, 493, 2, 0, 0, 0, 60)
INSERT [dbo].[EstadisticasPartido] ([ID_ESTADISTICA], [IDPartido], [IDJUGADOR], [Goles], [asistencias], [Amarillas], [rojas], [TiempoJugado]) VALUES (16, 9, 482, 1, 0, 0, 0, 90)
INSERT [dbo].[EstadisticasPartido] ([ID_ESTADISTICA], [IDPartido], [IDJUGADOR], [Goles], [asistencias], [Amarillas], [rojas], [TiempoJugado]) VALUES (17, 9, 531, 1, 0, 0, 0, 90)
INSERT [dbo].[EstadisticasPartido] ([ID_ESTADISTICA], [IDPartido], [IDJUGADOR], [Goles], [asistencias], [Amarillas], [rojas], [TiempoJugado]) VALUES (18, 10, 570, 1, 1, 1, 0, 90)
INSERT [dbo].[EstadisticasPartido] ([ID_ESTADISTICA], [IDPartido], [IDJUGADOR], [Goles], [asistencias], [Amarillas], [rojas], [TiempoJugado]) VALUES (19, 10, 571, 1, 0, 0, 0, 30)
INSERT [dbo].[EstadisticasPartido] ([ID_ESTADISTICA], [IDPartido], [IDJUGADOR], [Goles], [asistencias], [Amarillas], [rojas], [TiempoJugado]) VALUES (20, 11, 107, 1, 0, 0, 0, 90)
INSERT [dbo].[EstadisticasPartido] ([ID_ESTADISTICA], [IDPartido], [IDJUGADOR], [Goles], [asistencias], [Amarillas], [rojas], [TiempoJugado]) VALUES (21, 11, 24, 2, 0, 0, 0, 40)
INSERT [dbo].[EstadisticasPartido] ([ID_ESTADISTICA], [IDPartido], [IDJUGADOR], [Goles], [asistencias], [Amarillas], [rojas], [TiempoJugado]) VALUES (22, 12, 43, 1, 0, 0, 0, 90)
INSERT [dbo].[EstadisticasPartido] ([ID_ESTADISTICA], [IDPartido], [IDJUGADOR], [Goles], [asistencias], [Amarillas], [rojas], [TiempoJugado]) VALUES (23, 13, 62, 1, 0, 0, 0, 80)
INSERT [dbo].[EstadisticasPartido] ([ID_ESTADISTICA], [IDPartido], [IDJUGADOR], [Goles], [asistencias], [Amarillas], [rojas], [TiempoJugado]) VALUES (24, 13, 108, 1, 0, 0, 0, 45)
INSERT [dbo].[EstadisticasPartido] ([ID_ESTADISTICA], [IDPartido], [IDJUGADOR], [Goles], [asistencias], [Amarillas], [rojas], [TiempoJugado]) VALUES (25, 14, 184, 2, 0, 0, 0, 90)
INSERT [dbo].[EstadisticasPartido] ([ID_ESTADISTICA], [IDPartido], [IDJUGADOR], [Goles], [asistencias], [Amarillas], [rojas], [TiempoJugado]) VALUES (26, 14, 186, 1, 2, 0, 0, 90)
INSERT [dbo].[EstadisticasPartido] ([ID_ESTADISTICA], [IDPartido], [IDJUGADOR], [Goles], [asistencias], [Amarillas], [rojas], [TiempoJugado]) VALUES (27, 15, 239, 1, 0, 0, 0, 40)
INSERT [dbo].[EstadisticasPartido] ([ID_ESTADISTICA], [IDPartido], [IDJUGADOR], [Goles], [asistencias], [Amarillas], [rojas], [TiempoJugado]) VALUES (28, 15, 358, 1, 0, 0, 0, 40)
INSERT [dbo].[EstadisticasPartido] ([ID_ESTADISTICA], [IDPartido], [IDJUGADOR], [Goles], [asistencias], [Amarillas], [rojas], [TiempoJugado]) VALUES (29, 16, 413, 1, 0, 1, 0, 90)
INSERT [dbo].[EstadisticasPartido] ([ID_ESTADISTICA], [IDPartido], [IDJUGADOR], [Goles], [asistencias], [Amarillas], [rojas], [TiempoJugado]) VALUES (30, 16, 271, 2, 0, 1, 0, 90)
INSERT [dbo].[EstadisticasPartido] ([ID_ESTADISTICA], [IDPartido], [IDJUGADOR], [Goles], [asistencias], [Amarillas], [rojas], [TiempoJugado]) VALUES (31, 17, 499, 5, 0, 0, 0, 90)
INSERT [dbo].[EstadisticasPartido] ([ID_ESTADISTICA], [IDPartido], [IDJUGADOR], [Goles], [asistencias], [Amarillas], [rojas], [TiempoJugado]) VALUES (32, 17, 435, 1, 0, 0, 0, 80)
INSERT [dbo].[EstadisticasPartido] ([ID_ESTADISTICA], [IDPartido], [IDJUGADOR], [Goles], [asistencias], [Amarillas], [rojas], [TiempoJugado]) VALUES (33, 19, 527, 1, 1, 0, 0, 90)
INSERT [dbo].[EstadisticasPartido] ([ID_ESTADISTICA], [IDPartido], [IDJUGADOR], [Goles], [asistencias], [Amarillas], [rojas], [TiempoJugado]) VALUES (34, 19, 528, 1, 1, 1, 0, 90)
INSERT [dbo].[EstadisticasPartido] ([ID_ESTADISTICA], [IDPartido], [IDJUGADOR], [Goles], [asistencias], [Amarillas], [rojas], [TiempoJugado]) VALUES (35, 20, 548, 2, 0, 0, 0, 90)
INSERT [dbo].[EstadisticasPartido] ([ID_ESTADISTICA], [IDPartido], [IDJUGADOR], [Goles], [asistencias], [Amarillas], [rojas], [TiempoJugado]) VALUES (36, 20, 549, 2, 2, 1, 0, 40)
INSERT [dbo].[EstadisticasPartido] ([ID_ESTADISTICA], [IDPartido], [IDJUGADOR], [Goles], [asistencias], [Amarillas], [rojas], [TiempoJugado]) VALUES (37, 20, 571, 1, 0, 0, 0, 90)
INSERT [dbo].[EstadisticasPartido] ([ID_ESTADISTICA], [IDPartido], [IDJUGADOR], [Goles], [asistencias], [Amarillas], [rojas], [TiempoJugado]) VALUES (38, 1, 28, 0, 1, 1, 0, 90)
INSERT [dbo].[EstadisticasPartido] ([ID_ESTADISTICA], [IDPartido], [IDJUGADOR], [Goles], [asistencias], [Amarillas], [rojas], [TiempoJugado]) VALUES (39, 1, 26, 0, 1, 0, 0, 90)
INSERT [dbo].[EstadisticasPartido] ([ID_ESTADISTICA], [IDPartido], [IDJUGADOR], [Goles], [asistencias], [Amarillas], [rojas], [TiempoJugado]) VALUES (40, 1, 108, 0, 1, 0, 0, 90)
INSERT [dbo].[EstadisticasPartido] ([ID_ESTADISTICA], [IDPartido], [IDJUGADOR], [Goles], [asistencias], [Amarillas], [rojas], [TiempoJugado]) VALUES (44, 4, 313, 1, 1, 0, 0, 90)
INSERT [dbo].[EstadisticasPartido] ([ID_ESTADISTICA], [IDPartido], [IDJUGADOR], [Goles], [asistencias], [Amarillas], [rojas], [TiempoJugado]) VALUES (45, 11, 27, 0, 2, 0, 0, 30)
INSERT [dbo].[EstadisticasPartido] ([ID_ESTADISTICA], [IDPartido], [IDJUGADOR], [Goles], [asistencias], [Amarillas], [rojas], [TiempoJugado]) VALUES (46, 13, 68, 0, 1, 0, 0, 90)
INSERT [dbo].[EstadisticasPartido] ([ID_ESTADISTICA], [IDPartido], [IDJUGADOR], [Goles], [asistencias], [Amarillas], [rojas], [TiempoJugado]) VALUES (47, 15, 240, 0, 1, 0, 0, 90)
INSERT [dbo].[EstadisticasPartido] ([ID_ESTADISTICA], [IDPartido], [IDJUGADOR], [Goles], [asistencias], [Amarillas], [rojas], [TiempoJugado]) VALUES (48, 17, 496, 0, 3, 0, 0, 90)
INSERT [dbo].[EstadisticasPartido] ([ID_ESTADISTICA], [IDPartido], [IDJUGADOR], [Goles], [asistencias], [Amarillas], [rojas], [TiempoJugado]) VALUES (49, 17, 495, 0, 2, 0, 0, 90)
INSERT [dbo].[EstadisticasPartido] ([ID_ESTADISTICA], [IDPartido], [IDJUGADOR], [Goles], [asistencias], [Amarillas], [rojas], [TiempoJugado]) VALUES (50, 17, 436, 0, 1, 0, 0, 30)
INSERT [dbo].[EstadisticasPartido] ([ID_ESTADISTICA], [IDPartido], [IDJUGADOR], [Goles], [asistencias], [Amarillas], [rojas], [TiempoJugado]) VALUES (52, 57, 23, 0, 0, 0, 0, 90)
INSERT [dbo].[EstadisticasPartido] ([ID_ESTADISTICA], [IDPartido], [IDJUGADOR], [Goles], [asistencias], [Amarillas], [rojas], [TiempoJugado]) VALUES (53, 58, 30, 0, 0, 0, 0, 34)
INSERT [dbo].[EstadisticasPartido] ([ID_ESTADISTICA], [IDPartido], [IDJUGADOR], [Goles], [asistencias], [Amarillas], [rojas], [TiempoJugado]) VALUES (54, 59, 29, 0, 0, 0, 0, 65)
INSERT [dbo].[EstadisticasPartido] ([ID_ESTADISTICA], [IDPartido], [IDJUGADOR], [Goles], [asistencias], [Amarillas], [rojas], [TiempoJugado]) VALUES (55, 59, 26, 0, 0, 0, 0, 23)
INSERT [dbo].[EstadisticasPartido] ([ID_ESTADISTICA], [IDPartido], [IDJUGADOR], [Goles], [asistencias], [Amarillas], [rojas], [TiempoJugado]) VALUES (56, 60, 33, 0, 3, 0, 1, 42)
INSERT [dbo].[EstadisticasPartido] ([ID_ESTADISTICA], [IDPartido], [IDJUGADOR], [Goles], [asistencias], [Amarillas], [rojas], [TiempoJugado]) VALUES (57, 60, 46, 0, 2, 0, 0, 32)
INSERT [dbo].[EstadisticasPartido] ([ID_ESTADISTICA], [IDPartido], [IDJUGADOR], [Goles], [asistencias], [Amarillas], [rojas], [TiempoJugado]) VALUES (58, 61, 586, 0, 6, 0, 0, 90)
INSERT [dbo].[EstadisticasPartido] ([ID_ESTADISTICA], [IDPartido], [IDJUGADOR], [Goles], [asistencias], [Amarillas], [rojas], [TiempoJugado]) VALUES (59, 61, 21, 0, 0, 0, 0, 90)
INSERT [dbo].[EstadisticasPartido] ([ID_ESTADISTICA], [IDPartido], [IDJUGADOR], [Goles], [asistencias], [Amarillas], [rojas], [TiempoJugado]) VALUES (60, 61, 52, 0, 0, 0, 0, 90)
SET IDENTITY_INSERT [dbo].[EstadisticasPartido] OFF
SET IDENTITY_INSERT [dbo].[Jugadores] ON 

INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (21, N'Juan', N'Perez', 1, 1, 1, 1, CAST(N'1995-05-15' AS Date), CAST(1.75 AS Decimal(4, 2)), CAST(75.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (22, N'Luis', N'Gonzalez', 1, 2, 2, 2, CAST(N'1994-03-10' AS Date), CAST(1.80 AS Decimal(4, 2)), CAST(80.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (23, N'Carlos', N'Martinez', 1, 3, 3, 3, CAST(N'1996-07-22' AS Date), CAST(1.70 AS Decimal(4, 2)), CAST(70.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (24, N'Diego', N'Lopez', 1, 4, 4, 4, CAST(N'1993-11-05' AS Date), CAST(1.85 AS Decimal(4, 2)), CAST(85.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (25, N'Fernando', N'Ramirez', 1, 5, 5, 5, CAST(N'1998-01-20' AS Date), CAST(1.78 AS Decimal(4, 2)), CAST(72.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (26, N'Pedro', N'Diaz', 1, 6, 6, 6, CAST(N'1997-09-12' AS Date), CAST(1.82 AS Decimal(4, 2)), CAST(78.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (27, N'Raul', N'Sanchez', 1, 7, 7, 7, CAST(N'1992-04-30' AS Date), CAST(1.76 AS Decimal(4, 2)), CAST(71.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (28, N'Andres', N'Fernandez', 1, 8, 8, 8, CAST(N'1990-08-25' AS Date), CAST(1.81 AS Decimal(4, 2)), CAST(76.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (29, N'Hugo', N'Rodriguez', 1, 1, 9, 9, CAST(N'1991-12-03' AS Date), CAST(1.75 AS Decimal(4, 2)), CAST(73.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (30, N'Mario', N'Lopez', 1, 2, 10, 1, CAST(N'1994-06-18' AS Date), CAST(1.80 AS Decimal(4, 2)), CAST(78.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (31, N'Jorge', N'Garcia', 1, 3, 11, 2, CAST(N'1993-02-14' AS Date), CAST(1.70 AS Decimal(4, 2)), CAST(69.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (32, N'Antonio', N'Hernandez', 1, 4, 12, 3, CAST(N'1995-10-08' AS Date), CAST(1.85 AS Decimal(4, 2)), CAST(82.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (33, N'Francisco', N'Gomez', 1, 5, 13, 4, CAST(N'1996-03-25' AS Date), CAST(1.78 AS Decimal(4, 2)), CAST(74.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (34, N'Manuel', N'Perez', 1, 6, 14, 5, CAST(N'1997-08-11' AS Date), CAST(1.82 AS Decimal(4, 2)), CAST(79.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (35, N'Alberto', N'Gonzalez', 1, 7, 15, 6, CAST(N'1998-01-27' AS Date), CAST(1.76 AS Decimal(4, 2)), CAST(72.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (36, N'Ricardo', N'Martinez', 1, 8, 16, 7, CAST(N'1990-11-15' AS Date), CAST(1.81 AS Decimal(4, 2)), CAST(75.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (37, N'Felipe', N'Diaz', 1, 1, 17, 8, CAST(N'1991-05-10' AS Date), CAST(1.75 AS Decimal(4, 2)), CAST(74.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (38, N'Eduardo', N'Sanchez', 1, 2, 18, 9, CAST(N'1992-09-20' AS Date), CAST(1.80 AS Decimal(4, 2)), CAST(79.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (39, N'Miguel', N'Fernandez', 1, 3, 19, 1, CAST(N'1993-03-03' AS Date), CAST(1.70 AS Decimal(4, 2)), CAST(70.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (40, N'Gustavo', N'Rodriguez', 1, 4, 20, 2, CAST(N'1994-07-14' AS Date), CAST(1.85 AS Decimal(4, 2)), CAST(83.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (41, N'Sebastian', N'Gutierrez', 2, 1, 21, 2, CAST(N'1993-07-11' AS Date), CAST(1.76 AS Decimal(4, 2)), CAST(72.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (42, N'Alejandro', N'Perez', 2, 2, 22, 3, CAST(N'1995-08-22' AS Date), CAST(1.81 AS Decimal(4, 2)), CAST(77.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (43, N'Roberto', N'Lopez', 2, 3, 23, 4, CAST(N'1994-12-17' AS Date), CAST(1.78 AS Decimal(4, 2)), CAST(73.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (44, N'Javier', N'Garcia', 2, 4, 24, 5, CAST(N'1996-03-29' AS Date), CAST(1.84 AS Decimal(4, 2)), CAST(79.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (45, N'Lucas', N'Fernandez', 2, 5, 25, 6, CAST(N'1998-05-04' AS Date), CAST(1.77 AS Decimal(4, 2)), CAST(71.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (46, N'Ignacio', N'Rodriguez', 2, 6, 26, 7, CAST(N'1997-02-15' AS Date), CAST(1.80 AS Decimal(4, 2)), CAST(75.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (47, N'Ezequiel', N'Diaz', 2, 7, 27, 8, CAST(N'1992-09-30' AS Date), CAST(1.72 AS Decimal(4, 2)), CAST(68.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (48, N'Marcelo', N'Sanchez', 2, 8, 28, 9, CAST(N'1991-01-08' AS Date), CAST(1.83 AS Decimal(4, 2)), CAST(81.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (49, N'Facundo', N'Gomez', 2, 1, 29, 1, CAST(N'1990-04-25' AS Date), CAST(1.75 AS Decimal(4, 2)), CAST(74.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (50, N'Sergio', N'Martinez', 2, 2, 30, 2, CAST(N'1993-06-20' AS Date), CAST(1.78 AS Decimal(4, 2)), CAST(76.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (51, N'Adrian', N'Perez', 2, 3, 31, 3, CAST(N'1995-11-12' AS Date), CAST(1.82 AS Decimal(4, 2)), CAST(80.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (52, N'Gonzalo', N'Lopez', 2, 4, 32, 4, CAST(N'1996-02-02' AS Date), CAST(1.79 AS Decimal(4, 2)), CAST(73.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (53, N'Martin', N'Garcia', 2, 5, 33, 5, CAST(N'1997-09-09' AS Date), CAST(1.84 AS Decimal(4, 2)), CAST(78.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (54, N'Cristian', N'Fernandez', 2, 6, 34, 6, CAST(N'1998-04-14' AS Date), CAST(1.76 AS Decimal(4, 2)), CAST(70.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (55, N'Pablo', N'Rodriguez', 2, 7, 35, 7, CAST(N'1999-10-01' AS Date), CAST(1.81 AS Decimal(4, 2)), CAST(75.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (56, N'Diego', N'Diaz', 2, 8, 36, 8, CAST(N'1990-08-11' AS Date), CAST(1.77 AS Decimal(4, 2)), CAST(72.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (57, N'Federico', N'Sanchez', 2, 1, 37, 9, CAST(N'1991-03-23' AS Date), CAST(1.82 AS Decimal(4, 2)), CAST(79.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (58, N'Hernan', N'Gomez', 2, 2, 38, 1, CAST(N'1992-06-28' AS Date), CAST(1.76 AS Decimal(4, 2)), CAST(71.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (59, N'Luciano', N'Martinez', 2, 3, 39, 2, CAST(N'1993-11-04' AS Date), CAST(1.80 AS Decimal(4, 2)), CAST(75.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (60, N'Gabriel', N'Perez', 2, 4, 40, 3, CAST(N'1995-12-20' AS Date), CAST(1.77 AS Decimal(4, 2)), CAST(74.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (61, N'Ezequiel', N'Fernández', 3, 1, 1, 1, CAST(N'1995-05-15' AS Date), CAST(1.75 AS Decimal(4, 2)), CAST(75.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (62, N'Matías', N'Gómez', 3, 2, 2, 2, CAST(N'1994-03-10' AS Date), CAST(1.80 AS Decimal(4, 2)), CAST(80.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (63, N'Lucas', N'Martínez', 3, 3, 3, 3, CAST(N'1996-07-22' AS Date), CAST(1.70 AS Decimal(4, 2)), CAST(70.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (64, N'Joaquín', N'Rodríguez', 3, 4, 4, 4, CAST(N'1993-11-05' AS Date), CAST(1.85 AS Decimal(4, 2)), CAST(85.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (65, N'Mariano', N'López', 3, 5, 5, 5, CAST(N'1998-01-20' AS Date), CAST(1.78 AS Decimal(4, 2)), CAST(72.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (66, N'Gastón', N'Díaz', 3, 6, 6, 6, CAST(N'1997-09-12' AS Date), CAST(1.82 AS Decimal(4, 2)), CAST(78.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (67, N'Tomás', N'Sanchez', 3, 7, 7, 7, CAST(N'1992-04-30' AS Date), CAST(1.76 AS Decimal(4, 2)), CAST(71.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (68, N'Federico', N'González', 3, 8, 8, 8, CAST(N'1990-08-25' AS Date), CAST(1.81 AS Decimal(4, 2)), CAST(76.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (69, N'Iván', N'Rodriguez', 3, 1, 9, 9, CAST(N'1991-12-03' AS Date), CAST(1.75 AS Decimal(4, 2)), CAST(73.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (70, N'Alexis', N'Ferrari', 3, 2, 10, 1, CAST(N'1994-06-18' AS Date), CAST(1.80 AS Decimal(4, 2)), CAST(78.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (71, N'Ramiro', N'Peralta', 3, 3, 11, 2, CAST(N'1993-02-14' AS Date), CAST(1.70 AS Decimal(4, 2)), CAST(69.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (72, N'Facundo', N'Fernández', 3, 4, 12, 3, CAST(N'1995-10-08' AS Date), CAST(1.85 AS Decimal(4, 2)), CAST(82.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (73, N'Agustín', N'Luna', 3, 5, 13, 4, CAST(N'1996-03-25' AS Date), CAST(1.78 AS Decimal(4, 2)), CAST(74.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (74, N'Nicolás', N'Sánchez', 3, 6, 14, 5, CAST(N'1997-08-11' AS Date), CAST(1.82 AS Decimal(4, 2)), CAST(79.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (75, N'Pablo', N'Giménez', 3, 7, 15, 6, CAST(N'1998-01-27' AS Date), CAST(1.76 AS Decimal(4, 2)), CAST(72.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (76, N'Gabriel', N'Vera', 3, 8, 16, 7, CAST(N'1990-11-15' AS Date), CAST(1.81 AS Decimal(4, 2)), CAST(75.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (77, N'Diego', N'Latorre', 3, 1, 17, 8, CAST(N'1991-05-10' AS Date), CAST(1.75 AS Decimal(4, 2)), CAST(74.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (78, N'Eduardo', N'Toro', 3, 2, 18, 9, CAST(N'1992-09-20' AS Date), CAST(1.80 AS Decimal(4, 2)), CAST(79.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (79, N'Miguel', N'Fernández', 3, 3, 19, 1, CAST(N'1993-03-03' AS Date), CAST(1.70 AS Decimal(4, 2)), CAST(70.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (80, N'Gustavo', N'Rodriguez', 3, 4, 20, 2, CAST(N'1994-08-15' AS Date), CAST(1.83 AS Decimal(4, 2)), CAST(76.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (101, N'Carlos', N'López', 4, 1, 1, 1, CAST(N'1995-06-15' AS Date), CAST(1.78 AS Decimal(4, 2)), CAST(75.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (102, N'Martín', N'García', 4, 2, 2, 2, CAST(N'1994-04-10' AS Date), CAST(1.81 AS Decimal(4, 2)), CAST(79.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (103, N'Santiago', N'Martínez', 4, 3, 3, 3, CAST(N'1996-08-22' AS Date), CAST(1.76 AS Decimal(4, 2)), CAST(72.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (104, N'Juan', N'Pérez', 4, 4, 4, 4, CAST(N'1993-12-05' AS Date), CAST(1.84 AS Decimal(4, 2)), CAST(83.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (105, N'Luis', N'Gómez', 4, 5, 5, 5, CAST(N'1998-02-20' AS Date), CAST(1.79 AS Decimal(4, 2)), CAST(74.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (106, N'Diego', N'Rodríguez', 4, 6, 6, 6, CAST(N'1997-10-12' AS Date), CAST(1.80 AS Decimal(4, 2)), CAST(76.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (107, N'Ezequiel', N'Fernández', 4, 7, 7, 7, CAST(N'1992-05-30' AS Date), CAST(1.77 AS Decimal(4, 2)), CAST(73.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (108, N'Lucas', N'Peralta', 4, 8, 8, 8, CAST(N'1991-02-08' AS Date), CAST(1.82 AS Decimal(4, 2)), CAST(80.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (109, N'Andrés', N'González', 4, 1, 9, 9, CAST(N'1990-05-25' AS Date), CAST(1.76 AS Decimal(4, 2)), CAST(71.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (110, N'Alejandro', N'Hernández', 4, 2, 10, 1, CAST(N'1993-07-18' AS Date), CAST(1.80 AS Decimal(4, 2)), CAST(78.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (111, N'Rodrigo', N'Pérez', 4, 3, 11, 2, CAST(N'1995-11-25' AS Date), CAST(1.75 AS Decimal(4, 2)), CAST(70.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (112, N'Juan Pablo', N'García', 4, 4, 12, 3, CAST(N'1996-02-08' AS Date), CAST(1.83 AS Decimal(4, 2)), CAST(77.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (113, N'Fernando', N'Gómez', 4, 5, 13, 4, CAST(N'1997-07-15' AS Date), CAST(1.78 AS Decimal(4, 2)), CAST(72.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (114, N'Marcos', N'Ferrari', 4, 6, 14, 5, CAST(N'1998-01-27' AS Date), CAST(1.76 AS Decimal(4, 2)), CAST(75.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (115, N'Gustavo', N'Rodriguez', 4, 7, 15, 6, CAST(N'1999-03-10' AS Date), CAST(1.79 AS Decimal(4, 2)), CAST(74.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (116, N'Javier', N'Luna', 4, 8, 16, 7, CAST(N'1990-10-05' AS Date), CAST(1.82 AS Decimal(4, 2)), CAST(79.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (117, N'Luciano', N'Martínez', 4, 1, 17, 8, CAST(N'1991-02-20' AS Date), CAST(1.77 AS Decimal(4, 2)), CAST(73.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (118, N'Nicolás', N'Sánchez', 4, 2, 18, 9, CAST(N'1992-06-15' AS Date), CAST(1.81 AS Decimal(4, 2)), CAST(78.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (119, N'Manuel', N'Giménez', 4, 3, 19, 1, CAST(N'1993-08-22' AS Date), CAST(1.76 AS Decimal(4, 2)), CAST(70.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (120, N'Joaquín', N'Peralta', 4, 4, 21, 2, CAST(N'1994-08-07' AS Date), CAST(1.83 AS Decimal(4, 2)), CAST(77.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (142, N'Eduardo', N'López', 5, 1, 1, 1, CAST(N'1995-06-15' AS Date), CAST(1.78 AS Decimal(4, 2)), CAST(75.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (143, N'Fernando', N'García', 5, 2, 2, 2, CAST(N'1994-04-10' AS Date), CAST(1.81 AS Decimal(4, 2)), CAST(79.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (144, N'Javier', N'Martínez', 5, 3, 3, 3, CAST(N'1996-08-22' AS Date), CAST(1.76 AS Decimal(4, 2)), CAST(72.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (145, N'Gustavo', N'Pérez', 5, 4, 4, 4, CAST(N'1993-12-05' AS Date), CAST(1.84 AS Decimal(4, 2)), CAST(83.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (146, N'Santiago', N'Gómez', 5, 5, 5, 5, CAST(N'1998-02-20' AS Date), CAST(1.79 AS Decimal(4, 2)), CAST(74.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (147, N'Matías', N'Rodríguez', 5, 6, 6, 6, CAST(N'1997-10-12' AS Date), CAST(1.80 AS Decimal(4, 2)), CAST(76.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (148, N'Lorenzo', N'Fernández', 5, 7, 7, 7, CAST(N'1992-05-30' AS Date), CAST(1.77 AS Decimal(4, 2)), CAST(73.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (149, N'Andrés', N'Martín', 5, 8, 8, 8, CAST(N'1991-02-08' AS Date), CAST(1.82 AS Decimal(4, 2)), CAST(80.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (150, N'Pablo', N'González', 5, 1, 9, 9, CAST(N'1990-05-25' AS Date), CAST(1.76 AS Decimal(4, 2)), CAST(71.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (151, N'Luciano', N'Hernández', 5, 2, 10, 1, CAST(N'1993-07-18' AS Date), CAST(1.80 AS Decimal(4, 2)), CAST(78.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (152, N'Juan', N'Gómez', 5, 3, 11, 2, CAST(N'1995-11-25' AS Date), CAST(1.75 AS Decimal(4, 2)), CAST(70.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (153, N'Felipe', N'Fernández', 5, 4, 12, 3, CAST(N'1996-02-08' AS Date), CAST(1.83 AS Decimal(4, 2)), CAST(77.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (154, N'Nicolás', N'Martínez', 5, 5, 13, 4, CAST(N'1997-07-15' AS Date), CAST(1.78 AS Decimal(4, 2)), CAST(72.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (155, N'Diego', N'Ferrari', 5, 6, 14, 5, CAST(N'1998-01-27' AS Date), CAST(1.76 AS Decimal(4, 2)), CAST(75.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (156, N'Martín', N'Gómez', 5, 7, 15, 6, CAST(N'1999-03-10' AS Date), CAST(1.79 AS Decimal(4, 2)), CAST(74.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (157, N'Sergio', N'Peralta', 5, 8, 16, 7, CAST(N'1990-10-05' AS Date), CAST(1.82 AS Decimal(4, 2)), CAST(79.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (158, N'Ramiro', N'Rodriguez', 5, 1, 17, 8, CAST(N'1991-02-20' AS Date), CAST(1.77 AS Decimal(4, 2)), CAST(73.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (159, N'Ezequiel', N'Sánchez', 5, 2, 18, 9, CAST(N'1992-06-15' AS Date), CAST(1.81 AS Decimal(4, 2)), CAST(78.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (160, N'Manuel', N'Luna', 5, 3, 19, 1, CAST(N'1993-08-22' AS Date), CAST(1.76 AS Decimal(4, 2)), CAST(70.00 AS Decimal(4, 2)))
GO
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (161, N'Lautaro', N'Giménez', 5, 4, 21, 2, CAST(N'1994-08-07' AS Date), CAST(1.83 AS Decimal(4, 2)), CAST(77.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (162, N'Diego', N'Martínez', 6, 1, 1, 1, CAST(N'1995-06-15' AS Date), CAST(1.78 AS Decimal(4, 2)), CAST(75.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (163, N'Federico', N'Gómez', 6, 2, 2, 2, CAST(N'1994-04-10' AS Date), CAST(1.81 AS Decimal(4, 2)), CAST(79.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (164, N'Matías', N'López', 6, 3, 3, 3, CAST(N'1996-08-22' AS Date), CAST(1.76 AS Decimal(4, 2)), CAST(72.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (165, N'Lucas', N'González', 6, 4, 4, 4, CAST(N'1993-12-05' AS Date), CAST(1.84 AS Decimal(4, 2)), CAST(83.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (166, N'Nicolás', N'Hernández', 6, 5, 5, 5, CAST(N'1998-02-20' AS Date), CAST(1.79 AS Decimal(4, 2)), CAST(74.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (167, N'Santiago', N'Pérez', 6, 6, 6, 6, CAST(N'1997-10-12' AS Date), CAST(1.80 AS Decimal(4, 2)), CAST(76.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (168, N'Joaquín', N'Fernández', 6, 7, 7, 7, CAST(N'1992-05-30' AS Date), CAST(1.77 AS Decimal(4, 2)), CAST(73.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (169, N'Alejandro', N'Rodríguez', 6, 8, 8, 8, CAST(N'1991-02-08' AS Date), CAST(1.82 AS Decimal(4, 2)), CAST(80.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (170, N'Ezequiel', N'Luna', 6, 1, 9, 9, CAST(N'1990-05-25' AS Date), CAST(1.76 AS Decimal(4, 2)), CAST(71.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (171, N'Manuel', N'Martín', 6, 2, 10, 1, CAST(N'1993-07-18' AS Date), CAST(1.80 AS Decimal(4, 2)), CAST(78.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (172, N'Gonzalo', N'García', 6, 3, 11, 2, CAST(N'1995-11-25' AS Date), CAST(1.75 AS Decimal(4, 2)), CAST(70.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (173, N'Fernando', N'Fernández', 6, 4, 12, 3, CAST(N'1996-02-08' AS Date), CAST(1.83 AS Decimal(4, 2)), CAST(77.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (174, N'Eduardo', N'Gómez', 6, 5, 13, 4, CAST(N'1997-07-15' AS Date), CAST(1.78 AS Decimal(4, 2)), CAST(72.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (175, N'Gastón', N'Ferrari', 6, 6, 14, 5, CAST(N'1998-01-27' AS Date), CAST(1.76 AS Decimal(4, 2)), CAST(75.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (176, N'Ramiro', N'Sánchez', 6, 7, 15, 6, CAST(N'1999-03-10' AS Date), CAST(1.79 AS Decimal(4, 2)), CAST(74.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (177, N'Gustavo', N'Rodriguez', 6, 8, 16, 7, CAST(N'1990-10-05' AS Date), CAST(1.82 AS Decimal(4, 2)), CAST(79.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (178, N'Luis', N'Martínez', 6, 1, 17, 8, CAST(N'1991-02-20' AS Date), CAST(1.77 AS Decimal(4, 2)), CAST(73.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (179, N'Sergio', N'González', 6, 2, 18, 9, CAST(N'1992-06-15' AS Date), CAST(1.81 AS Decimal(4, 2)), CAST(78.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (180, N'Diego', N'Hernández', 6, 3, 19, 1, CAST(N'1993-08-22' AS Date), CAST(1.76 AS Decimal(4, 2)), CAST(70.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (181, N'Ramon', N'Sosa', 7, 7, 24, 1, CAST(N'1999-08-31' AS Date), CAST(1.78 AS Decimal(4, 2)), CAST(75.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (182, N'Rodrigo', N'Garro', 7, 6, 16, 1, CAST(N'1998-01-04' AS Date), CAST(1.78 AS Decimal(4, 2)), CAST(75.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (183, N'Matías', N'Catalán', 7, 2, 4, 6, CAST(N'1989-05-21' AS Date), CAST(1.80 AS Decimal(4, 2)), CAST(79.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (184, N'Bruno', N'Barticciotto', 7, 8, 14, 1, CAST(N'1994-08-11' AS Date), CAST(1.73 AS Decimal(4, 2)), CAST(65.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (185, N'Nahuel', N'Bustos', 7, 7, 10, 1, CAST(N'1999-04-12' AS Date), CAST(1.75 AS Decimal(4, 2)), CAST(75.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (186, N'Kevin', N'Mantilla', 7, 5, 5, 4, CAST(N'2000-09-03' AS Date), CAST(1.78 AS Decimal(4, 2)), CAST(85.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (187, N'Guido', N'Herrera', 7, 1, 22, 1, CAST(N'2002-08-27' AS Date), CAST(1.94 AS Decimal(4, 2)), CAST(93.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (188, N'Matíaz', N'Galarza', 7, 7, 8, 1, CAST(N'2001-08-11' AS Date), CAST(1.70 AS Decimal(4, 2)), CAST(75.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (189, N'Ulises', N'Ortegoza', 7, 4, 30, 1, CAST(N'1997-08-16' AS Date), CAST(1.66 AS Decimal(4, 2)), CAST(68.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (190, N'Blas', N'riveros', 7, 7, 24, 1, CAST(N'1991-08-23' AS Date), CAST(1.83 AS Decimal(4, 2)), CAST(85.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (191, N'Rodrigo', N'Villagra', 7, 4, 18, 1, CAST(N'1989-08-01' AS Date), CAST(1.88 AS Decimal(4, 2)), CAST(78.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (192, N'Juan', N'Portillo', 7, 4, 28, 1, CAST(N'1997-12-06' AS Date), CAST(1.78 AS Decimal(4, 2)), CAST(70.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (197, N'Santiago', N'Barrionuevo', 7, 3, 13, 1, CAST(N'1996-05-03' AS Date), CAST(1.70 AS Decimal(4, 2)), CAST(78.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (198, N'Galo', N'Pagan', 7, 5, 9, 1, CAST(N'1996-05-03' AS Date), CAST(1.70 AS Decimal(4, 2)), CAST(78.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (199, N'Mateo', N'Munoz', 7, 8, 53, 1, CAST(N'1996-05-03' AS Date), CAST(1.70 AS Decimal(4, 2)), CAST(78.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (200, N'Thomas', N'Mastho', 7, 2, 33, 1, CAST(N'1996-05-03' AS Date), CAST(1.70 AS Decimal(4, 2)), CAST(78.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (201, N'Luis', N'Sequeira', 7, 5, 13, 1, CAST(N'1996-05-03' AS Date), CAST(1.70 AS Decimal(4, 2)), CAST(78.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (202, N'Lucas', N'Suárez', 7, 3, 3, 1, CAST(N'1999-02-15' AS Date), CAST(1.80 AS Decimal(4, 2)), CAST(75.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (203, N'Laureano', N'Martinez', 7, 1, 12, 1, CAST(N'1975-02-21' AS Date), CAST(1.95 AS Decimal(4, 2)), CAST(95.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (206, N'Gastón', N'Benavdez', 7, 3, 29, 1, CAST(N'1995-02-20' AS Date), CAST(1.80 AS Decimal(4, 2)), CAST(75.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (232, N'Lionel', N'Messi', 8, 6, 10, 1, CAST(N'1987-06-24' AS Date), CAST(1.70 AS Decimal(4, 2)), CAST(72.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (233, N'Cristiano', N'Ronaldo', 8, 8, 7, 2, CAST(N'1985-02-05' AS Date), CAST(1.87 AS Decimal(4, 2)), CAST(83.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (234, N'Neymar', N'da Silva', 8, 8, 11, 3, CAST(N'1992-02-05' AS Date), CAST(1.75 AS Decimal(4, 2)), CAST(68.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (235, N'Sergio', N'Ramos', 8, 7, 4, 4, CAST(N'1986-03-30' AS Date), CAST(1.83 AS Decimal(4, 2)), CAST(75.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (236, N'Luis', N'Suarez', 8, 6, 9, 5, CAST(N'1987-01-24' AS Date), CAST(1.82 AS Decimal(4, 2)), CAST(86.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (237, N'Andres', N'Iniesta', 8, 6, 8, 6, CAST(N'1984-05-11' AS Date), CAST(1.70 AS Decimal(4, 2)), CAST(68.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (238, N'Gerard', N'Pique', 8, 5, 3, 7, CAST(N'1987-02-02' AS Date), CAST(1.93 AS Decimal(4, 2)), CAST(85.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (239, N'Eden', N'Hazard', 8, 2, 10, 8, CAST(N'1991-01-07' AS Date), CAST(1.73 AS Decimal(4, 2)), CAST(74.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (240, N'Kylian', N'Mbappe', 8, 7, 7, 9, CAST(N'1998-12-20' AS Date), CAST(1.78 AS Decimal(4, 2)), CAST(73.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (241, N'Robert', N'Lewandowski', 8, 7, 9, 8, CAST(N'1988-08-21' AS Date), CAST(1.85 AS Decimal(4, 2)), CAST(79.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (242, N'Mohamed', N'Salah', 8, 8, 11, 1, CAST(N'1992-06-15' AS Date), CAST(1.75 AS Decimal(4, 2)), CAST(71.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (243, N'Sadio', N'Mane', 8, 3, 10, 1, CAST(N'1992-04-10' AS Date), CAST(1.75 AS Decimal(4, 2)), CAST(69.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (244, N'Antoine', N'Griezmann', 8, 3, 7, 3, CAST(N'1991-03-21' AS Date), CAST(1.76 AS Decimal(4, 2)), CAST(73.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (245, N'Harry', N'Kane', 8, 1, 9, 1, CAST(N'1993-07-28' AS Date), CAST(1.88 AS Decimal(4, 2)), CAST(86.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (246, N'Kevin', N'De Bruyne', 8, 1, 17, 1, CAST(N'1991-06-28' AS Date), CAST(1.81 AS Decimal(4, 2)), CAST(70.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (247, N'NGolo', N'Kante', 8, 1, 7, 1, CAST(N'1991-03-29' AS Date), CAST(1.68 AS Decimal(4, 2)), CAST(68.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (248, N'Paul', N'Pogba', 8, 1, 6, 7, CAST(N'1993-03-15' AS Date), CAST(1.91 AS Decimal(4, 2)), CAST(84.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (249, N'Luka', N'Modric', 8, 4, 10, 8, CAST(N'1985-09-09' AS Date), CAST(1.72 AS Decimal(4, 2)), CAST(66.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (250, N'Virgil', N'van Dijk', 8, 2, 4, 1, CAST(N'1991-07-08' AS Date), CAST(1.93 AS Decimal(4, 2)), CAST(92.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (251, N'Manuel', N'Neuer', 8, 3, 1, 2, CAST(N'1986-03-27' AS Date), CAST(1.93 AS Decimal(4, 2)), CAST(92.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (253, N'Luis', N'Rodríguez', 9, 2, 7, 1, CAST(N'1990-03-12' AS Date), CAST(1.78 AS Decimal(4, 2)), CAST(75.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (254, N'Carlos', N'Martínez', 9, 2, 10, 2, CAST(N'1988-11-28' AS Date), CAST(1.80 AS Decimal(4, 2)), CAST(80.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (255, N'Andrés', N'Gómez', 9, 2, 5, 3, CAST(N'1992-08-03' AS Date), CAST(1.82 AS Decimal(4, 2)), CAST(78.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (256, N'Miguel', N'Hernández', 9, 2, 14, 4, CAST(N'1985-04-20' AS Date), CAST(1.76 AS Decimal(4, 2)), CAST(77.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (257, N'David', N'Fernández', 9, 2, 22, 5, CAST(N'1991-12-01' AS Date), CAST(1.83 AS Decimal(4, 2)), CAST(82.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (258, N'Alejandro', N'Díaz', 9, 2, 8, 6, CAST(N'1987-06-25' AS Date), CAST(1.82 AS Decimal(4, 2)), CAST(83.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (259, N'Fernando', N'Moreno', 9, 2, 19, 7, CAST(N'1989-12-15' AS Date), CAST(1.77 AS Decimal(4, 2)), CAST(81.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (260, N'Adrián', N'Ruíz', 9, 2, 13, 8, CAST(N'1993-02-08' AS Date), CAST(1.79 AS Decimal(4, 2)), CAST(84.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (261, N'Javier', N'Gutiérrez', 9, 4, 3, 9, CAST(N'1986-09-20' AS Date), CAST(1.84 AS Decimal(4, 2)), CAST(86.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (262, N'Roberto', N'Sánchez', 9, 7, 17, 1, CAST(N'1994-07-10' AS Date), CAST(1.81 AS Decimal(4, 2)), CAST(80.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (263, N'José', N'Torres', 9, 1, 9, 2, CAST(N'1988-04-22' AS Date), CAST(1.83 AS Decimal(4, 2)), CAST(85.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (264, N'Antonio', N'Martín', 9, 1, 6, 3, CAST(N'1992-01-25' AS Date), CAST(1.78 AS Decimal(4, 2)), CAST(79.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (265, N'Raúl', N'Reyes', 9, 4, 12, 4, CAST(N'1990-06-10' AS Date), CAST(1.76 AS Decimal(4, 2)), CAST(77.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (266, N'Pedro', N'Cruz', 9, 4, 20, 5, CAST(N'1987-04-01' AS Date), CAST(1.82 AS Decimal(4, 2)), CAST(83.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (267, N'Jorge', N'Herrera', 9, 4, 11, 6, CAST(N'1989-10-14' AS Date), CAST(1.75 AS Decimal(4, 2)), CAST(76.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (268, N'Luis', N'Soto', 9, 4, 15, 7, CAST(N'1993-08-15' AS Date), CAST(1.80 AS Decimal(4, 2)), CAST(81.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (269, N'Mario', N'Moreno', 9, 5, 7, 8, CAST(N'1985-12-11' AS Date), CAST(1.77 AS Decimal(4, 2)), CAST(78.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (270, N'Pablo', N'Rojas', 9, 7, 21, 9, CAST(N'1991-09-18' AS Date), CAST(1.79 AS Decimal(4, 2)), CAST(82.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (271, N'Eduardo', N'Mendoza', 9, 6, 16, 1, CAST(N'1988-08-05' AS Date), CAST(1.81 AS Decimal(4, 2)), CAST(83.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (272, N'Manuel', N'Gutierrez', 9, 6, 4, 2, CAST(N'1992-07-16' AS Date), CAST(1.80 AS Decimal(4, 2)), CAST(79.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (273, N'Carlos', N'Suárez', 9, 7, 18, 3, CAST(N'1987-02-14' AS Date), CAST(1.82 AS Decimal(4, 2)), CAST(84.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (274, N'Diego', N'Romero', 9, 7, 23, 4, CAST(N'1990-03-19' AS Date), CAST(1.78 AS Decimal(4, 2)), CAST(78.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (275, N'Carlos', N'Gómez', 9, 1, 2, 7, CAST(N'1990-03-12' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(75.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (277, N'Andrés', N'Fernández', 9, 1, 1, 5, CAST(N'1992-08-03' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(78.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (280, N'Alejandro', N'Díaz', 9, 2, 1, 8, CAST(N'1987-06-25' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(83.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (283, N'Luis', N'Vargas', 9, 4, 1, 3, CAST(N'1986-09-20' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(86.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (285, N'José', N'Torres', 9, 4, 1, 9, CAST(N'1988-04-22' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(85.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (286, N'Antonio', N'Martín', 9, 4, 1, 6, CAST(N'1992-01-25' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(79.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (291, N'Mario', N'Moreno', 9, 4, 1, 7, CAST(N'1985-12-11' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(78.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (294, N'Manuel', N'Gutierrez', 9, 6, 1, 4, CAST(N'1992-07-16' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(79.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (295, N'Carlos', N'Gómez', 10, 1, 1, 7, CAST(N'1990-03-12' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(75.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (296, N'Javier', N'Martínez', 10, 1, 2, 3, CAST(N'1988-11-28' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(80.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (297, N'Andrés', N'Fernández', 10, 1, 3, 5, CAST(N'1992-08-03' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(78.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (298, N'Miguel', N'Hernández', 10, 2, 4, 4, CAST(N'1985-04-20' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(77.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (299, N'David', N'Rodríguez', 10, 2, 5, 2, CAST(N'1991-12-01' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(82.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (300, N'Alejandro', N'Díaz', 10, 2, 6, 8, CAST(N'1987-06-25' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(83.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (301, N'Fernando', N'Moreno', 10, 2, 7, 1, CAST(N'1989-12-15' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(81.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (302, N'Adrián', N'Ruíz', 10, 2, 8, 3, CAST(N'1993-02-08' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(84.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (303, N'Luis', N'Vargas', 10, 4, 9, 3, CAST(N'1986-09-20' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(86.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (304, N'Roberto', N'Sánchez', 10, 4, 10, 1, CAST(N'1994-07-10' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(80.00 AS Decimal(4, 2)))
GO
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (305, N'José', N'Torres', 10, 4, 11, 9, CAST(N'1988-04-22' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(85.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (306, N'Antonio', N'Martín', 10, 4, 12, 6, CAST(N'1992-01-25' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(79.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (307, N'Raúl', N'Reyes', 10, 4, 13, 2, CAST(N'1990-06-10' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(77.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (308, N'Pedro', N'Cruz', 10, 4, 14, 2, CAST(N'1987-04-01' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(83.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (310, N'Luis', N'Soto', 10, 4, 16, 1, CAST(N'1993-08-15' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(81.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (311, N'Mario', N'Moreno', 10, 4, 18, 7, CAST(N'1985-12-11' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(78.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (312, N'Pablo', N'Rojas', 10, 4, 19, 2, CAST(N'1991-09-18' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(82.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (313, N'Eduardo', N'Mendoza', 10, 6, 20, 1, CAST(N'1988-08-05' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(83.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (314, N'Manuel', N'Gutierrez', 10, 6, 23, 4, CAST(N'1992-07-16' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(79.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (315, N'Jorge', N'Herrera', 10, 4, 1, 1, CAST(N'1989-10-14' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(76.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (336, N'Juan', N'González', 11, 1, 1, 7, CAST(N'1992-05-15' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(75.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (338, N'Carlos', N'Rodríguez', 11, 3, 3, 5, CAST(N'1991-02-20' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(80.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (341, N'Antonio', N'Gómez', 11, 2, 6, 8, CAST(N'1995-01-30' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(79.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (344, N'Pedro', N'Torres', 11, 2, 9, 3, CAST(N'1990-08-10' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(84.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (346, N'Manuel', N'Fernández', 11, 3, 11, 2, CAST(N'1986-11-05' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(80.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (347, N'Jorge', N'Moreno', 11, 4, 12, 4, CAST(N'1988-04-14' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(78.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (348, N'Andrés', N'Martín', 11, 4, 13, 6, CAST(N'1991-10-22' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(79.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (351, N'Luis Antonio', N'Gutierrez', 11, 4, 16, 9, CAST(N'1992-07-08' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(83.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (356, N'Pedro', N'Torres', 11, 4, 9, 3, CAST(N'1990-08-10' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(84.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (357, N'Francisco', N'Díaz', 11, 7, 10, 1, CAST(N'1996-03-18' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(81.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (358, N'Manuel', N'Fernández', 11, 7, 11, 2, CAST(N'1986-11-05' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(80.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (359, N'Jorge', N'Moreno', 11, 2, 12, 4, CAST(N'1988-04-14' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(78.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (360, N'Andrés', N'Martín', 11, 2, 13, 6, CAST(N'1991-10-22' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(79.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (361, N'Gabriel', N'Luna', 11, 3, 14, 2, CAST(N'1994-03-31' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(82.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (362, N'Juan Carlos', N'Rojas', 11, 3, 15, 1, CAST(N'1989-12-15' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(85.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (363, N'Luis Antonio', N'Gutierrez', 11, 5, 16, 9, CAST(N'1992-07-08' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(83.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (364, N'José Luis', N'Vargas', 11, 5, 17, 1, CAST(N'1987-05-19' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(80.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (365, N'Carlos Manuel', N'Mendoza', 11, 8, 18, 1, CAST(N'1993-02-09' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(81.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (366, N'Eduardo', N'Silva', 11, 8, 19, 1, CAST(N'1995-08-28' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(77.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (367, N'Roberto', N'Cruz', 11, 1, 20, 1, CAST(N'1985-09-25' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(82.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (388, N'Luis', N'Gómez', 12, 1, 3, 1, CAST(N'1990-03-12' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(75.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (389, N'Carlos', N'Martínez', 12, 1, 3, 2, CAST(N'1988-11-28' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(80.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (390, N'Andrés', N'Fernández', 12, 1, 3, 3, CAST(N'1992-08-03' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(78.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (391, N'Miguel', N'Hernández', 12, 3, 3, 4, CAST(N'1985-04-20' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(77.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (392, N'David', N'Rodríguez', 12, 3, 3, 5, CAST(N'1991-12-01' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(82.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (393, N'Alejandro', N'Díaz', 12, 4, 3, 6, CAST(N'1987-06-25' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(83.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (394, N'Fernando', N'Moreno', 12, 4, 3, 7, CAST(N'1989-12-15' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(81.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (395, N'Adrián', N'Ruíz', 12, 5, 3, 8, CAST(N'1993-02-08' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(84.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (396, N'Javier', N'Gutiérrez', 12, 5, 3, 9, CAST(N'1986-09-20' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(86.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (408, N'Luis', N'Gómez', 12, 1, 1, 1, CAST(N'1990-03-12' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(75.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (409, N'Carlos', N'Martínez', 12, 1, 2, 2, CAST(N'1988-11-28' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(80.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (410, N'Andrés', N'Fernández', 12, 1, 3, 3, CAST(N'1992-08-03' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(78.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (411, N'Miguel', N'Hernández', 12, 3, 4, 4, CAST(N'1985-04-20' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(77.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (412, N'David', N'Rodríguez', 12, 3, 5, 5, CAST(N'1991-12-01' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(82.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (413, N'Alejandro', N'Díaz', 12, 4, 6, 6, CAST(N'1987-06-25' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(83.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (414, N'Fernando', N'Moreno', 12, 4, 7, 7, CAST(N'1989-12-15' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(81.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (415, N'Adrián', N'Ruíz', 12, 5, 8, 8, CAST(N'1993-02-08' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(84.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (416, N'Javier', N'Gutiérrez', 12, 5, 9, 1, CAST(N'1986-09-20' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(86.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (417, N'Roberto', N'Sánchez', 12, 6, 10, 1, CAST(N'1994-07-10' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(80.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (418, N'José', N'Torres', 12, 6, 11, 1, CAST(N'1988-04-22' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(85.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (419, N'Antonio', N'Martín', 12, 7, 12, 1, CAST(N'1992-01-25' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(79.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (420, N'Raúl', N'Reyes', 12, 7, 13, 3, CAST(N'1990-06-10' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(77.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (421, N'Pedro', N'Cruz', 12, 8, 14, 4, CAST(N'1987-04-01' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(83.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (422, N'Jorge', N'Herrera', 12, 8, 15, 5, CAST(N'1989-10-14' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(76.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (423, N'Luis', N'Soto', 12, 8, 16, 6, CAST(N'1993-08-15' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(81.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (424, N'Mario', N'Moreno', 12, 6, 17, 1, CAST(N'1985-12-11' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(78.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (425, N'Pablo', N'Rojas', 12, 5, 18, 1, CAST(N'1991-09-18' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(82.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (426, N'Eduardo', N'Mendoza', 12, 4, 19, 1, CAST(N'1988-08-05' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(83.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (427, N'Manuel', N'Gutiérrez', 12, 3, 20, 2, CAST(N'1992-07-16' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(79.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (428, N'Luis', N'Gómez', 13, 1, 1, 4, CAST(N'1990-03-12' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(75.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (429, N'Carlos', N'Martínez', 13, 1, 2, 4, CAST(N'1988-11-28' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(80.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (430, N'Andrés', N'Fernández', 13, 1, 3, 4, CAST(N'1992-08-03' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(78.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (431, N'Miguel', N'Hernández', 13, 3, 4, 4, CAST(N'1985-04-20' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(77.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (432, N'David', N'Rodríguez', 13, 3, 5, 4, CAST(N'1991-12-01' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(82.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (433, N'Alejandro', N'Díaz', 13, 4, 6, 4, CAST(N'1987-06-25' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(83.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (434, N'Fernando', N'Moreno', 13, 4, 7, 4, CAST(N'1989-12-15' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(81.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (435, N'Adrián', N'Ruíz', 13, 5, 8, 4, CAST(N'1993-02-08' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(84.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (436, N'Javier', N'Gutiérrez', 13, 5, 9, 4, CAST(N'1986-09-20' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(86.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (437, N'Roberto', N'Sánchez', 13, 6, 10, 4, CAST(N'1994-07-10' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(80.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (438, N'José', N'Torres', 13, 6, 11, 4, CAST(N'1988-04-22' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(85.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (439, N'Antonio', N'Martín', 13, 7, 12, 4, CAST(N'1992-01-25' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(79.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (440, N'Raúl', N'Reyes', 13, 7, 13, 4, CAST(N'1990-06-10' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(77.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (441, N'Pedro', N'Cruz', 13, 8, 14, 4, CAST(N'1987-04-01' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(83.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (442, N'Jorge', N'Herrera', 13, 8, 15, 4, CAST(N'1989-10-14' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(76.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (443, N'Luis', N'Soto', 13, 8, 16, 4, CAST(N'1993-08-15' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(81.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (444, N'Mario', N'Moreno', 13, 6, 17, 4, CAST(N'1985-12-11' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(78.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (445, N'Pablo', N'Rojas', 13, 5, 18, 4, CAST(N'1991-09-18' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(82.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (446, N'Eduardo', N'Mendoza', 13, 4, 19, 4, CAST(N'1988-08-05' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(83.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (447, N'Manuel', N'Gutiérrez', 13, 3, 20, 4, CAST(N'1992-07-16' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(79.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (448, N'Manuel', N'Gómez', 14, 1, 21, 5, CAST(N'1990-04-15' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(72.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (449, N'Andrés', N'Pérez', 14, 2, 22, 5, CAST(N'1987-08-28' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(75.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (450, N'Felipe', N'López', 14, 2, 23, 5, CAST(N'1993-02-01' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(78.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (451, N'Juan', N'García', 14, 3, 24, 5, CAST(N'1989-11-10' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(80.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (452, N'Pedro', N'Santos', 14, 3, 25, 5, CAST(N'1986-03-12' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(82.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (453, N'Matías', N'Fuentes', 14, 4, 26, 5, CAST(N'1991-07-05' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(84.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (454, N'Francisco', N'Jiménez', 14, 4, 27, 5, CAST(N'1992-09-18' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(79.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (455, N'Héctor', N'Rivas', 14, 5, 28, 5, CAST(N'1985-05-20' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(81.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (456, N'Nicolás', N'Ortiz', 14, 5, 29, 5, CAST(N'1988-12-01' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(85.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (457, N'Sebastián', N'Silva', 14, 6, 30, 5, CAST(N'1990-06-25' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(77.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (458, N'Ricardo', N'Castro', 14, 6, 31, 5, CAST(N'1987-04-10' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(79.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (459, N'Marcelo', N'Valenzuela', 14, 7, 32, 5, CAST(N'1993-10-15' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(80.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (460, N'Gonzalo', N'Vargas', 14, 7, 33, 5, CAST(N'1989-03-08' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(83.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (461, N'Felipe', N'Lara', 14, 8, 34, 5, CAST(N'1992-06-30' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(78.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (462, N'Roberto', N'Muñoz', 14, 8, 35, 5, CAST(N'1988-11-25' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(81.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (463, N'Hernán', N'Paredes', 14, 8, 36, 5, CAST(N'1986-12-02' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(82.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (464, N'Fernando', N'Sáez', 14, 8, 37, 5, CAST(N'1985-09-21' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(86.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (465, N'Cristián', N'Molina', 14, 4, 38, 5, CAST(N'1993-07-14' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(75.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (466, N'Mauricio', N'Díaz', 14, 3, 39, 5, CAST(N'1990-08-05' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(84.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (467, N'Sebastián', N'Hernández', 15, 1, 21, 6, CAST(N'1989-04-15' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(76.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (468, N'Diego', N'López', 15, 2, 22, 6, CAST(N'1990-08-28' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(78.00 AS Decimal(4, 2)))
GO
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (469, N'Lucas', N'Fernández', 15, 2, 23, 6, CAST(N'1993-01-15' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(77.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (470, N'Eduardo', N'García', 15, 3, 24, 6, CAST(N'1988-10-10' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(80.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (471, N'Joaquín', N'Santos', 15, 3, 25, 6, CAST(N'1992-03-12' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(82.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (472, N'Maximiliano', N'Fuentes', 15, 4, 26, 6, CAST(N'1987-07-05' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(84.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (473, N'Felipe', N'Jiménez', 15, 4, 27, 6, CAST(N'1986-09-18' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(81.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (474, N'Andrés', N'Ruíz', 15, 5, 28, 6, CAST(N'1990-02-20' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(83.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (475, N'Juan', N'Gutiérrez', 15, 5, 29, 6, CAST(N'1989-11-01' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(79.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (476, N'Martín', N'Silva', 15, 6, 30, 6, CAST(N'1985-06-25' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(85.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (477, N'Cristián', N'Castro', 15, 6, 31, 6, CAST(N'1993-07-10' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(86.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (478, N'Felipe', N'Valenzuela', 15, 7, 32, 6, CAST(N'1986-05-15' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(82.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (479, N'Gonzalo', N'Vargas', 15, 7, 33, 6, CAST(N'1991-12-08' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(88.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (480, N'Roberto', N'Lara', 15, 8, 34, 6, CAST(N'1992-04-30' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(83.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (481, N'Ricardo', N'Muñoz', 15, 8, 35, 6, CAST(N'1988-02-25' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(80.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (482, N'Marcelo', N'Paredes', 15, 8, 36, 6, CAST(N'1987-10-02' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(79.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (483, N'Hernán', N'Sáez', 15, 8, 37, 6, CAST(N'1990-09-21' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(84.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (484, N'Nicolás', N'Molina', 15, 4, 38, 6, CAST(N'1985-07-14' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(76.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (485, N'Sebastián', N'Díaz', 15, 3, 39, 6, CAST(N'1993-08-05' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(77.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (486, N'Gustavo', N'Pérez', 16, 1, 1, 7, CAST(N'1992-03-10' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(83.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (487, N'Hugo', N'Vega', 16, 2, 2, 7, CAST(N'1991-05-20' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(85.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (488, N'Joaquín', N'López', 16, 2, 3, 7, CAST(N'1986-06-02' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(82.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (489, N'Luciano', N'Rojas', 16, 3, 4, 7, CAST(N'1990-12-08' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(78.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (490, N'Mariano', N'Gómez', 16, 3, 5, 7, CAST(N'1989-09-15' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(79.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (491, N'Diego', N'López', 16, 4, 6, 7, CAST(N'1987-04-17' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(81.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (492, N'Federico', N'Silva', 16, 4, 7, 7, CAST(N'1988-01-12' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(84.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (493, N'Germán', N'Santos', 16, 5, 8, 7, CAST(N'1986-03-24' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(76.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (494, N'Ignacio', N'Fuentes', 16, 5, 9, 7, CAST(N'1993-07-22' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(83.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (495, N'Miguel', N'Gutiérrez', 16, 6, 10, 7, CAST(N'1985-06-18' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(82.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (496, N'Nicolás', N'Ruíz', 16, 6, 11, 7, CAST(N'1987-09-04' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(80.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (497, N'Octavio', N'Jiménez', 16, 7, 12, 7, CAST(N'1990-10-15' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(78.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (498, N'Patricio', N'Vega', 16, 7, 13, 7, CAST(N'1992-02-20' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(77.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (499, N'Roberto', N'Valenzuela', 16, 8, 14, 7, CAST(N'1991-08-01' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(85.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (500, N'Sergio', N'Castro', 16, 8, 15, 7, CAST(N'1988-06-28' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(88.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (501, N'Tomás', N'Sáez', 16, 8, 16, 7, CAST(N'1993-04-09' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(79.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (502, N'Vicente', N'Díaz', 16, 8, 17, 7, CAST(N'1985-02-18' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(82.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (503, N'Francisco', N'Pérez', 16, 4, 18, 7, CAST(N'1986-12-30' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(76.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (504, N'Gustavo', N'Araujo', 17, 1, 1, 7, CAST(N'1992-03-10' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(83.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (505, N'Hugo', N'Vargas', 17, 2, 2, 7, CAST(N'1991-05-20' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(85.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (506, N'Joaquín', N'Lópetegui', 17, 2, 3, 7, CAST(N'1986-06-02' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(82.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (507, N'Luciano', N'Romero', 17, 3, 4, 7, CAST(N'1990-12-08' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(78.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (508, N'Mariano', N'Gónsa', 17, 3, 5, 7, CAST(N'1989-09-15' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(79.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (509, N'Diego', N'Lópo', 17, 4, 6, 7, CAST(N'1987-04-17' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(81.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (510, N'Federico', N'Sil', 17, 4, 7, 7, CAST(N'1988-01-12' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(84.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (511, N'Germán', N'Junior', 17, 5, 8, 7, CAST(N'1986-03-24' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(76.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (512, N'Ignacio', N'Fuer', 17, 5, 9, 7, CAST(N'1993-07-22' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(83.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (513, N'Miguel', N'Guti', 17, 6, 10, 7, CAST(N'1985-06-18' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(82.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (514, N'Nicolás', N'Ríz', 17, 6, 11, 7, CAST(N'1987-09-04' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(80.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (515, N'Octavio', N'Jiénez', 17, 7, 12, 7, CAST(N'1990-10-15' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(78.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (516, N'Patricio', N'Ve', 17, 7, 13, 7, CAST(N'1992-02-20' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(77.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (517, N'Roberto', N'Valenzu', 17, 8, 14, 7, CAST(N'1991-08-01' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(85.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (518, N'Sergio', N'Atro', 17, 8, 15, 7, CAST(N'1988-06-28' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(88.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (519, N'Tomás', N'Sáe', 17, 8, 16, 7, CAST(N'1993-04-09' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(79.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (520, N'Vicente', N'Iaaz', 17, 8, 17, 7, CAST(N'1985-02-18' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(82.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (521, N'Franchesco', N'Pérez', 17, 4, 18, 7, CAST(N'1986-12-30' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(76.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (522, N'Gustavo', N'Ara', 18, 1, 1, 7, CAST(N'1992-03-10' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(83.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (523, N'Hugo', N'Voul', 18, 2, 2, 7, CAST(N'1991-05-20' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(85.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (524, N'Joa', N'Lóegui', 18, 2, 3, 7, CAST(N'1986-06-02' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(82.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (525, N'Luano', N'Romero', 18, 3, 4, 7, CAST(N'1990-12-08' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(78.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (526, N'Marano', N'Gónza', 18, 3, 5, 7, CAST(N'1989-09-15' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(79.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (527, N'Diego', N'Lópo', 18, 4, 6, 7, CAST(N'1987-04-17' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(81.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (528, N'Rico', N'Silva', 18, 4, 7, 7, CAST(N'1988-01-12' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(84.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (529, N'Germán', N'Junior', 18, 5, 8, 7, CAST(N'1986-03-24' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(76.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (530, N'Ignacio', N'Fuer', 18, 5, 9, 7, CAST(N'1993-07-22' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(83.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (531, N'Miguel', N'Guti', 18, 6, 10, 7, CAST(N'1985-06-18' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(82.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (532, N'Nicolás', N'Rízo', 18, 6, 11, 7, CAST(N'1987-09-04' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(80.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (533, N'Octavio', N'Jiénez', 18, 7, 12, 7, CAST(N'1990-10-15' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(78.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (534, N'Patricio', N'Ves', 18, 7, 13, 7, CAST(N'1992-02-20' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(77.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (535, N'Roberto', N'Valenzu', 18, 8, 14, 7, CAST(N'1991-08-01' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(85.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (536, N'Sergio', N'Atros', 18, 8, 15, 7, CAST(N'1988-06-28' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(88.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (537, N'Tomás', N'Sáer', 18, 8, 16, 7, CAST(N'1993-04-09' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(79.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (538, N'Vicentini', N'Iaaz', 18, 8, 17, 7, CAST(N'1985-02-18' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(82.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (539, N'Francisco', N'Parma', 18, 4, 18, 7, CAST(N'1986-12-30' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(76.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (540, N'Sebastián', N'Gómez', 19, 1, 1, 7, CAST(N'1992-03-05' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(80.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (541, N'Andrés', N'Páez', 19, 2, 2, 7, CAST(N'1991-06-15' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(83.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (542, N'Federico', N'Zapata', 19, 2, 3, 7, CAST(N'1987-04-12' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(84.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (543, N'Hernán', N'López', 19, 3, 4, 7, CAST(N'1990-12-28' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(82.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (544, N'Maximiliano', N'Santos', 19, 3, 5, 7, CAST(N'1988-02-15' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(85.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (545, N'Eduardo', N'Mora', 19, 4, 6, 7, CAST(N'1987-05-17' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(78.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (546, N'Luciano', N'Peralta', 19, 4, 7, 7, CAST(N'1989-03-22' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(81.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (547, N'Marcelo', N'Ríos', 19, 5, 8, 7, CAST(N'1985-07-04' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(77.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (548, N'José', N'Montes', 19, 5, 9, 7, CAST(N'1993-09-12' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(88.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (549, N'Mauricio', N'Castro', 19, 6, 10, 7, CAST(N'1991-04-18' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(86.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (550, N'Javier', N'Sánchez', 19, 6, 11, 7, CAST(N'1986-08-04' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(79.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (551, N'Alberto', N'Lima', 19, 7, 12, 7, CAST(N'1988-10-20' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(80.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (552, N'Leonardo', N'Ferreyra', 19, 7, 13, 7, CAST(N'1992-02-15' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(83.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (553, N'Ricardo', N'Arango', 19, 8, 14, 7, CAST(N'1989-06-10' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(82.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (554, N'Fernando', N'Correa', 19, 8, 15, 7, CAST(N'1986-03-27' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(75.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (555, N'Gabriel', N'Baez', 19, 8, 16, 7, CAST(N'1993-10-09' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(76.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (556, N'Alejandro', N'Ruiz', 19, 8, 17, 7, CAST(N'1987-08-28' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(84.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (557, N'Daniel', N'Sosa', 19, 4, 18, 7, CAST(N'1985-11-30' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(79.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (558, N'Ezequiel', N'Díaz', 19, 4, 19, 7, CAST(N'1986-09-25' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(80.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (559, N'Pablo', N'Benítez', 19, 4, 20, 7, CAST(N'1989-07-10' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(78.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (560, N'Ronaldo', N'Silveira', 20, 1, 1, 1, CAST(N'1991-02-10' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(79.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (561, N'Lucas', N'Santos', 20, 2, 2, 1, CAST(N'1990-06-20' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(82.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (562, N'Thiago', N'Oliveira', 20, 2, 3, 1, CAST(N'1986-03-12' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(77.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (563, N'Giovanni', N'Ferreira', 20, 3, 4, 1, CAST(N'1992-11-08' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(83.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (564, N'André', N'Machado', 20, 3, 5, 1, CAST(N'1989-04-15' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(84.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (565, N'Renato', N'Sousa', 20, 4, 6, 1, CAST(N'1987-07-17' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(81.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (566, N'Felipe', N'Nunes', 20, 4, 7, 1, CAST(N'1993-01-22' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(80.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (567, N'Bruno', N'Ribeiro', 20, 5, 8, 1, CAST(N'1985-09-10' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(85.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (568, N'Marcelo', N'Barbosa', 20, 5, 9, 1, CAST(N'1988-12-15' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(78.00 AS Decimal(4, 2)))
GO
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (569, N'Eduardo', N'Pereira', 20, 6, 10, 1, CAST(N'1986-05-28' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(82.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (570, N'Leonardo', N'Fernandes', 20, 6, 11, 1, CAST(N'1990-03-04' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(79.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (571, N'Roberto', N'Gomes', 20, 7, 12, 1, CAST(N'1992-10-20' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(76.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (572, N'Carlos', N'Sousa', 20, 7, 13, 1, CAST(N'1987-02-15' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(77.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (573, N'Fernando', N'Lima', 20, 8, 14, 1, CAST(N'1985-08-10' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(88.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (574, N'Rafael', N'Machado', 20, 8, 15, 1, CAST(N'1986-06-25' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(85.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (575, N'Paulo', N'Santos', 20, 8, 16, 1, CAST(N'1993-03-09' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(80.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (576, N'Sergio', N'Oliveira', 20, 8, 17, 1, CAST(N'1988-09-28' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(82.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (577, N'Marcos', N'Ferreira', 20, 4, 18, 1, CAST(N'1987-11-30' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(83.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (578, N'Alex', N'Pereira', 20, 4, 19, 1, CAST(N'1986-10-25' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(84.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (579, N'Ricardo', N'Rodrigues', 20, 4, 20, 1, CAST(N'1989-07-05' AS Date), CAST(1.00 AS Decimal(4, 2)), CAST(81.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (580, N'Santiago', N'Barrionuevo', 2, 3, 8, 1, CAST(N'2000-05-10' AS Date), CAST(1.80 AS Decimal(4, 2)), CAST(82.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (581, N'Jorge', N'Michelin', 8, 1, 88, 10, CAST(N'2020-12-12' AS Date), CAST(1.70 AS Decimal(4, 2)), CAST(70.00 AS Decimal(4, 2)))
INSERT [dbo].[Jugadores] ([IDJugador], [Nombre], [Apellido], [club], [PosicionID], [NumeroCamiseta], [Nacionalidad], [FechaNacimiento], [Altura], [Peso]) VALUES (586, N'Oscar', N'Botta', 1, 1, 0, 1, CAST(N'2021-05-07' AS Date), CAST(0.00 AS Decimal(4, 2)), CAST(0.00 AS Decimal(4, 2)))
SET IDENTITY_INSERT [dbo].[Jugadores] OFF
SET IDENTITY_INSERT [dbo].[paises] ON 

INSERT [dbo].[paises] ([id_pais], [nombrePais]) VALUES (1, N'Argentina')
INSERT [dbo].[paises] ([id_pais], [nombrePais]) VALUES (2, N'Brasil')
INSERT [dbo].[paises] ([id_pais], [nombrePais]) VALUES (3, N'Uruguay')
INSERT [dbo].[paises] ([id_pais], [nombrePais]) VALUES (4, N'Colombia')
INSERT [dbo].[paises] ([id_pais], [nombrePais]) VALUES (5, N'Peru')
INSERT [dbo].[paises] ([id_pais], [nombrePais]) VALUES (6, N'Chile')
INSERT [dbo].[paises] ([id_pais], [nombrePais]) VALUES (7, N'Venezuela')
INSERT [dbo].[paises] ([id_pais], [nombrePais]) VALUES (8, N'Ecuador')
INSERT [dbo].[paises] ([id_pais], [nombrePais]) VALUES (9, N'Bolivia')
INSERT [dbo].[paises] ([id_pais], [nombrePais]) VALUES (10, N'Paraguay')
SET IDENTITY_INSERT [dbo].[paises] OFF
SET IDENTITY_INSERT [dbo].[Partidos] ON 

INSERT [dbo].[Partidos] ([IDPartido], [Fecha], [EquipoLocal], [Adversario], [id_temporada], [Goles_Local], [Goles_Visitante]) VALUES (1, CAST(N'2023-01-08' AS Date), 1, 4, 1, 2, 1)
INSERT [dbo].[Partidos] ([IDPartido], [Fecha], [EquipoLocal], [Adversario], [id_temporada], [Goles_Local], [Goles_Visitante]) VALUES (2, CAST(N'2023-01-15' AS Date), 2, 5, 1, 0, 0)
INSERT [dbo].[Partidos] ([IDPartido], [Fecha], [EquipoLocal], [Adversario], [id_temporada], [Goles_Local], [Goles_Visitante]) VALUES (3, CAST(N'2023-01-22' AS Date), 3, 6, 1, 3, 0)
INSERT [dbo].[Partidos] ([IDPartido], [Fecha], [EquipoLocal], [Adversario], [id_temporada], [Goles_Local], [Goles_Visitante]) VALUES (4, CAST(N'2023-01-08' AS Date), 7, 10, 1, 2, 2)
INSERT [dbo].[Partidos] ([IDPartido], [Fecha], [EquipoLocal], [Adversario], [id_temporada], [Goles_Local], [Goles_Visitante]) VALUES (5, CAST(N'2023-01-15' AS Date), 8, 11, 1, 0, 4)
INSERT [dbo].[Partidos] ([IDPartido], [Fecha], [EquipoLocal], [Adversario], [id_temporada], [Goles_Local], [Goles_Visitante]) VALUES (6, CAST(N'2023-01-22' AS Date), 9, 12, 1, 0, 1)
INSERT [dbo].[Partidos] ([IDPartido], [Fecha], [EquipoLocal], [Adversario], [id_temporada], [Goles_Local], [Goles_Visitante]) VALUES (7, CAST(N'2023-01-08' AS Date), 13, 16, 1, 2, 3)
INSERT [dbo].[Partidos] ([IDPartido], [Fecha], [EquipoLocal], [Adversario], [id_temporada], [Goles_Local], [Goles_Visitante]) VALUES (8, CAST(N'2023-01-15' AS Date), 14, 17, 1, 0, 0)
INSERT [dbo].[Partidos] ([IDPartido], [Fecha], [EquipoLocal], [Adversario], [id_temporada], [Goles_Local], [Goles_Visitante]) VALUES (9, CAST(N'2023-01-22' AS Date), 15, 18, 1, 1, 1)
INSERT [dbo].[Partidos] ([IDPartido], [Fecha], [EquipoLocal], [Adversario], [id_temporada], [Goles_Local], [Goles_Visitante]) VALUES (10, CAST(N'2023-01-29' AS Date), 19, 20, 1, 0, 2)
INSERT [dbo].[Partidos] ([IDPartido], [Fecha], [EquipoLocal], [Adversario], [id_temporada], [Goles_Local], [Goles_Visitante]) VALUES (11, CAST(N'2023-02-05' AS Date), 4, 1, 1, 1, 2)
INSERT [dbo].[Partidos] ([IDPartido], [Fecha], [EquipoLocal], [Adversario], [id_temporada], [Goles_Local], [Goles_Visitante]) VALUES (12, CAST(N'2023-02-12' AS Date), 5, 2, 1, 0, 1)
INSERT [dbo].[Partidos] ([IDPartido], [Fecha], [EquipoLocal], [Adversario], [id_temporada], [Goles_Local], [Goles_Visitante]) VALUES (13, CAST(N'2023-02-19' AS Date), 6, 3, 1, 1, 1)
INSERT [dbo].[Partidos] ([IDPartido], [Fecha], [EquipoLocal], [Adversario], [id_temporada], [Goles_Local], [Goles_Visitante]) VALUES (14, CAST(N'2023-02-05' AS Date), 10, 7, 1, 0, 3)
INSERT [dbo].[Partidos] ([IDPartido], [Fecha], [EquipoLocal], [Adversario], [id_temporada], [Goles_Local], [Goles_Visitante]) VALUES (15, CAST(N'2023-02-12' AS Date), 11, 8, 1, 1, 1)
INSERT [dbo].[Partidos] ([IDPartido], [Fecha], [EquipoLocal], [Adversario], [id_temporada], [Goles_Local], [Goles_Visitante]) VALUES (16, CAST(N'2023-02-19' AS Date), 12, 9, 1, 1, 2)
INSERT [dbo].[Partidos] ([IDPartido], [Fecha], [EquipoLocal], [Adversario], [id_temporada], [Goles_Local], [Goles_Visitante]) VALUES (17, CAST(N'2023-02-05' AS Date), 16, 13, 1, 5, 1)
INSERT [dbo].[Partidos] ([IDPartido], [Fecha], [EquipoLocal], [Adversario], [id_temporada], [Goles_Local], [Goles_Visitante]) VALUES (18, CAST(N'2023-02-12' AS Date), 17, 14, 1, 0, 0)
INSERT [dbo].[Partidos] ([IDPartido], [Fecha], [EquipoLocal], [Adversario], [id_temporada], [Goles_Local], [Goles_Visitante]) VALUES (19, CAST(N'2023-02-19' AS Date), 18, 15, 1, 2, 0)
INSERT [dbo].[Partidos] ([IDPartido], [Fecha], [EquipoLocal], [Adversario], [id_temporada], [Goles_Local], [Goles_Visitante]) VALUES (20, CAST(N'2023-02-26' AS Date), 20, 19, 1, 1, 4)
INSERT [dbo].[Partidos] ([IDPartido], [Fecha], [EquipoLocal], [Adversario], [id_temporada], [Goles_Local], [Goles_Visitante]) VALUES (30, CAST(N'2022-12-12' AS Date), 3, 5, 1, 2, 3)
INSERT [dbo].[Partidos] ([IDPartido], [Fecha], [EquipoLocal], [Adversario], [id_temporada], [Goles_Local], [Goles_Visitante]) VALUES (32, CAST(N'2023-11-16' AS Date), 19, 2, 1, 3, 1)
INSERT [dbo].[Partidos] ([IDPartido], [Fecha], [EquipoLocal], [Adversario], [id_temporada], [Goles_Local], [Goles_Visitante]) VALUES (33, CAST(N'2022-12-12' AS Date), 19, 2, 1, 2, 2)
INSERT [dbo].[Partidos] ([IDPartido], [Fecha], [EquipoLocal], [Adversario], [id_temporada], [Goles_Local], [Goles_Visitante]) VALUES (36, CAST(N'2023-10-12' AS Date), 19, 2, 1, 3, 2)
INSERT [dbo].[Partidos] ([IDPartido], [Fecha], [EquipoLocal], [Adversario], [id_temporada], [Goles_Local], [Goles_Visitante]) VALUES (37, CAST(N'2023-10-12' AS Date), 19, 2, 1, 2, 2)
INSERT [dbo].[Partidos] ([IDPartido], [Fecha], [EquipoLocal], [Adversario], [id_temporada], [Goles_Local], [Goles_Visitante]) VALUES (38, CAST(N'2023-10-12' AS Date), 19, 2, 1, 4, 2)
INSERT [dbo].[Partidos] ([IDPartido], [Fecha], [EquipoLocal], [Adversario], [id_temporada], [Goles_Local], [Goles_Visitante]) VALUES (52, CAST(N'2000-12-12' AS Date), 3, 4, 1, 2, 3)
INSERT [dbo].[Partidos] ([IDPartido], [Fecha], [EquipoLocal], [Adversario], [id_temporada], [Goles_Local], [Goles_Visitante]) VALUES (56, CAST(N'2023-03-21' AS Date), 1, 4, 1, 1, 1)
INSERT [dbo].[Partidos] ([IDPartido], [Fecha], [EquipoLocal], [Adversario], [id_temporada], [Goles_Local], [Goles_Visitante]) VALUES (57, CAST(N'2023-11-21' AS Date), 2, 4, 1, 1, 0)
INSERT [dbo].[Partidos] ([IDPartido], [Fecha], [EquipoLocal], [Adversario], [id_temporada], [Goles_Local], [Goles_Visitante]) VALUES (58, CAST(N'2023-11-21' AS Date), 7, 5, 1, 0, 0)
INSERT [dbo].[Partidos] ([IDPartido], [Fecha], [EquipoLocal], [Adversario], [id_temporada], [Goles_Local], [Goles_Visitante]) VALUES (59, CAST(N'2023-11-18' AS Date), 7, 8, 1, 0, 0)
INSERT [dbo].[Partidos] ([IDPartido], [Fecha], [EquipoLocal], [Adversario], [id_temporada], [Goles_Local], [Goles_Visitante]) VALUES (60, CAST(N'2023-11-21' AS Date), 7, 12, 1, 2, 3)
INSERT [dbo].[Partidos] ([IDPartido], [Fecha], [EquipoLocal], [Adversario], [id_temporada], [Goles_Local], [Goles_Visitante]) VALUES (61, CAST(N'2023-11-15' AS Date), 1, 4, 1, 6, 0)
SET IDENTITY_INSERT [dbo].[Partidos] OFF
SET IDENTITY_INSERT [dbo].[Patrocinadores] ON 

INSERT [dbo].[Patrocinadores] ([IDPatrocinador], [Tipo], [Descripcion], [Contacto]) VALUES (1, 1, N'Nike', N'123-456-7890')
INSERT [dbo].[Patrocinadores] ([IDPatrocinador], [Tipo], [Descripcion], [Contacto]) VALUES (2, 1, N'Adidas', N'987-654-3210')
INSERT [dbo].[Patrocinadores] ([IDPatrocinador], [Tipo], [Descripcion], [Contacto]) VALUES (3, 1, N'Puma', N'555-123-7890')
INSERT [dbo].[Patrocinadores] ([IDPatrocinador], [Tipo], [Descripcion], [Contacto]) VALUES (4, 1, N'Under Armour', N'777-111-3333')
INSERT [dbo].[Patrocinadores] ([IDPatrocinador], [Tipo], [Descripcion], [Contacto]) VALUES (5, 1, N'Reebok', N'444-222-6666')
INSERT [dbo].[Patrocinadores] ([IDPatrocinador], [Tipo], [Descripcion], [Contacto]) VALUES (6, 1, N'New Balance', N'999-888-7777')
INSERT [dbo].[Patrocinadores] ([IDPatrocinador], [Tipo], [Descripcion], [Contacto]) VALUES (7, 1, N'Fila', N'222-777-5555')
INSERT [dbo].[Patrocinadores] ([IDPatrocinador], [Tipo], [Descripcion], [Contacto]) VALUES (8, 1, N'Asics', N'666-333-4444')
INSERT [dbo].[Patrocinadores] ([IDPatrocinador], [Tipo], [Descripcion], [Contacto]) VALUES (9, 1, N'Reebok', N'111-555-8888')
INSERT [dbo].[Patrocinadores] ([IDPatrocinador], [Tipo], [Descripcion], [Contacto]) VALUES (10, 1, N'Mizuno', N'333-666-9999')
INSERT [dbo].[Patrocinadores] ([IDPatrocinador], [Tipo], [Descripcion], [Contacto]) VALUES (11, 1, N'Lululemon', N'888-999-5555')
INSERT [dbo].[Patrocinadores] ([IDPatrocinador], [Tipo], [Descripcion], [Contacto]) VALUES (12, 1, N'Columbia', N'777-888-6666')
INSERT [dbo].[Patrocinadores] ([IDPatrocinador], [Tipo], [Descripcion], [Contacto]) VALUES (13, 1, N'The North Face', N'111-222-4444')
INSERT [dbo].[Patrocinadores] ([IDPatrocinador], [Tipo], [Descripcion], [Contacto]) VALUES (14, 1, N'Perry Ellis', N'555-444-3333')
INSERT [dbo].[Patrocinadores] ([IDPatrocinador], [Tipo], [Descripcion], [Contacto]) VALUES (15, 1, N'Champion', N'999-777-1111')
INSERT [dbo].[Patrocinadores] ([IDPatrocinador], [Tipo], [Descripcion], [Contacto]) VALUES (16, 1, N'Umbro', N'444-666-8888')
INSERT [dbo].[Patrocinadores] ([IDPatrocinador], [Tipo], [Descripcion], [Contacto]) VALUES (17, 1, N'Fubu', N'777-333-5555')
INSERT [dbo].[Patrocinadores] ([IDPatrocinador], [Tipo], [Descripcion], [Contacto]) VALUES (18, 1, N'Starter', N'111-999-2222')
INSERT [dbo].[Patrocinadores] ([IDPatrocinador], [Tipo], [Descripcion], [Contacto]) VALUES (19, 1, N'Russell Athletic', N'555-777-4444')
INSERT [dbo].[Patrocinadores] ([IDPatrocinador], [Tipo], [Descripcion], [Contacto]) VALUES (20, 1, N'Kappa', N'999-111-6666')
SET IDENTITY_INSERT [dbo].[Patrocinadores] OFF
SET IDENTITY_INSERT [dbo].[Patrocinadores_Clubes] ON 

INSERT [dbo].[Patrocinadores_Clubes] ([id_Patocinador_Club], [idClub], [patrocinador]) VALUES (1, 1, 1)
INSERT [dbo].[Patrocinadores_Clubes] ([id_Patocinador_Club], [idClub], [patrocinador]) VALUES (2, 2, 2)
INSERT [dbo].[Patrocinadores_Clubes] ([id_Patocinador_Club], [idClub], [patrocinador]) VALUES (3, 3, 3)
INSERT [dbo].[Patrocinadores_Clubes] ([id_Patocinador_Club], [idClub], [patrocinador]) VALUES (4, 4, 4)
INSERT [dbo].[Patrocinadores_Clubes] ([id_Patocinador_Club], [idClub], [patrocinador]) VALUES (5, 5, 5)
INSERT [dbo].[Patrocinadores_Clubes] ([id_Patocinador_Club], [idClub], [patrocinador]) VALUES (6, 6, 6)
INSERT [dbo].[Patrocinadores_Clubes] ([id_Patocinador_Club], [idClub], [patrocinador]) VALUES (7, 7, 7)
INSERT [dbo].[Patrocinadores_Clubes] ([id_Patocinador_Club], [idClub], [patrocinador]) VALUES (8, 8, 8)
INSERT [dbo].[Patrocinadores_Clubes] ([id_Patocinador_Club], [idClub], [patrocinador]) VALUES (9, 9, 9)
INSERT [dbo].[Patrocinadores_Clubes] ([id_Patocinador_Club], [idClub], [patrocinador]) VALUES (10, 10, 10)
INSERT [dbo].[Patrocinadores_Clubes] ([id_Patocinador_Club], [idClub], [patrocinador]) VALUES (11, 11, 11)
INSERT [dbo].[Patrocinadores_Clubes] ([id_Patocinador_Club], [idClub], [patrocinador]) VALUES (12, 12, 12)
INSERT [dbo].[Patrocinadores_Clubes] ([id_Patocinador_Club], [idClub], [patrocinador]) VALUES (13, 13, 13)
INSERT [dbo].[Patrocinadores_Clubes] ([id_Patocinador_Club], [idClub], [patrocinador]) VALUES (14, 14, 14)
INSERT [dbo].[Patrocinadores_Clubes] ([id_Patocinador_Club], [idClub], [patrocinador]) VALUES (15, 15, 15)
INSERT [dbo].[Patrocinadores_Clubes] ([id_Patocinador_Club], [idClub], [patrocinador]) VALUES (16, 16, 16)
INSERT [dbo].[Patrocinadores_Clubes] ([id_Patocinador_Club], [idClub], [patrocinador]) VALUES (17, 17, 17)
INSERT [dbo].[Patrocinadores_Clubes] ([id_Patocinador_Club], [idClub], [patrocinador]) VALUES (18, 18, 18)
INSERT [dbo].[Patrocinadores_Clubes] ([id_Patocinador_Club], [idClub], [patrocinador]) VALUES (19, 19, 19)
INSERT [dbo].[Patrocinadores_Clubes] ([id_Patocinador_Club], [idClub], [patrocinador]) VALUES (20, 20, 20)
SET IDENTITY_INSERT [dbo].[Patrocinadores_Clubes] OFF
SET IDENTITY_INSERT [dbo].[Posiciones] ON 

INSERT [dbo].[Posiciones] ([IDPosicion], [NombrePosicion]) VALUES (1, N'Arquero')
INSERT [dbo].[Posiciones] ([IDPosicion], [NombrePosicion]) VALUES (2, N'Defensor central')
INSERT [dbo].[Posiciones] ([IDPosicion], [NombrePosicion]) VALUES (3, N'Lateral')
INSERT [dbo].[Posiciones] ([IDPosicion], [NombrePosicion]) VALUES (4, N'Medio Campista')
INSERT [dbo].[Posiciones] ([IDPosicion], [NombrePosicion]) VALUES (5, N'Medio Campista Defensivo')
INSERT [dbo].[Posiciones] ([IDPosicion], [NombrePosicion]) VALUES (6, N'Medio Campista Ofensivo')
INSERT [dbo].[Posiciones] ([IDPosicion], [NombrePosicion]) VALUES (7, N'Delantero centro')
INSERT [dbo].[Posiciones] ([IDPosicion], [NombrePosicion]) VALUES (8, N'Extremo')
SET IDENTITY_INSERT [dbo].[Posiciones] OFF
SET IDENTITY_INSERT [dbo].[Temporadas] ON 

INSERT [dbo].[Temporadas] ([IDTemporada], [IDCategoria], [AnioInicio], [AnioFin], [id_torneo]) VALUES (1, 1, 2023, 2024, 1)
INSERT [dbo].[Temporadas] ([IDTemporada], [IDCategoria], [AnioInicio], [AnioFin], [id_torneo]) VALUES (2, 1, 2023, 2024, 2)
INSERT [dbo].[Temporadas] ([IDTemporada], [IDCategoria], [AnioInicio], [AnioFin], [id_torneo]) VALUES (3, 1, 2023, 2024, 3)
SET IDENTITY_INSERT [dbo].[Temporadas] OFF
SET IDENTITY_INSERT [dbo].[TipoPatrocinador] ON 

INSERT [dbo].[TipoPatrocinador] ([IdTipopatrocinio], [Nombretipo]) VALUES (1, N'Ropa')
SET IDENTITY_INSERT [dbo].[TipoPatrocinador] OFF
SET IDENTITY_INSERT [dbo].[TiposVenta] ON 

INSERT [dbo].[TiposVenta] ([IDTipoVenta], [NombreTipoVenta]) VALUES (1, N'Prestamo')
INSERT [dbo].[TiposVenta] ([IDTipoVenta], [NombreTipoVenta]) VALUES (2, N'Compra')
SET IDENTITY_INSERT [dbo].[TiposVenta] OFF
SET IDENTITY_INSERT [dbo].[torneos] ON 

INSERT [dbo].[torneos] ([id_Torneo], [torneo], [descripcion]) VALUES (1, N'Primera Division LPF', N'Liga Profesional de Futbol Argentina')
INSERT [dbo].[torneos] ([id_Torneo], [torneo], [descripcion]) VALUES (2, N'Libertadores', N'Conmebol Libertadores')
INSERT [dbo].[torneos] ([id_Torneo], [torneo], [descripcion]) VALUES (3, N'Copa LPF', N'Copa de Liga Profesional de Futbol de Argentina')
SET IDENTITY_INSERT [dbo].[torneos] OFF
SET IDENTITY_INSERT [dbo].[Transferencias] ON 

INSERT [dbo].[Transferencias] ([IDTransferencia], [IDJugador], [FechaTransferencia], [MontoTransferencia], [IDTipoVenta], [ClubOrigen], [ClubDestino]) VALUES (1, 21, CAST(N'2022-05-15' AS Date), CAST(1020000.00 AS Decimal(10, 2)), 2, 2, 1)
INSERT [dbo].[Transferencias] ([IDTransferencia], [IDJugador], [FechaTransferencia], [MontoTransferencia], [IDTipoVenta], [ClubOrigen], [ClubDestino]) VALUES (2, 44, CAST(N'2022-06-20' AS Date), CAST(1500000.00 AS Decimal(10, 2)), 2, 3, 2)
INSERT [dbo].[Transferencias] ([IDTransferencia], [IDJugador], [FechaTransferencia], [MontoTransferencia], [IDTipoVenta], [ClubOrigen], [ClubDestino]) VALUES (3, 65, CAST(N'2022-03-10' AS Date), CAST(8000000.00 AS Decimal(10, 2)), 2, 5, 3)
INSERT [dbo].[Transferencias] ([IDTransferencia], [IDJugador], [FechaTransferencia], [MontoTransferencia], [IDTipoVenta], [ClubOrigen], [ClubDestino]) VALUES (4, 109, CAST(N'2022-07-05' AS Date), CAST(17000000.00 AS Decimal(10, 2)), 2, 7, 4)
INSERT [dbo].[Transferencias] ([IDTransferencia], [IDJugador], [FechaTransferencia], [MontoTransferencia], [IDTipoVenta], [ClubOrigen], [ClubDestino]) VALUES (5, 145, CAST(N'2022-09-15' AS Date), CAST(5000000.00 AS Decimal(10, 2)), 2, 9, 5)
INSERT [dbo].[Transferencias] ([IDTransferencia], [IDJugador], [FechaTransferencia], [MontoTransferencia], [IDTipoVenta], [ClubOrigen], [ClubDestino]) VALUES (6, 165, CAST(N'2022-02-10' AS Date), CAST(1100000.00 AS Decimal(10, 2)), 2, 11, 6)
INSERT [dbo].[Transferencias] ([IDTransferencia], [IDJugador], [FechaTransferencia], [MontoTransferencia], [IDTipoVenta], [ClubOrigen], [ClubDestino]) VALUES (7, 187, CAST(N'2022-08-25' AS Date), CAST(9000000.00 AS Decimal(10, 2)), 2, 13, 7)
INSERT [dbo].[Transferencias] ([IDTransferencia], [IDJugador], [FechaTransferencia], [MontoTransferencia], [IDTipoVenta], [ClubOrigen], [ClubDestino]) VALUES (8, 238, CAST(N'2022-12-30' AS Date), CAST(19000000.00 AS Decimal(10, 2)), 2, 15, 8)
INSERT [dbo].[Transferencias] ([IDTransferencia], [IDJugador], [FechaTransferencia], [MontoTransferencia], [IDTipoVenta], [ClubOrigen], [ClubDestino]) VALUES (9, 259, CAST(N'2022-11-10' AS Date), CAST(12000000.00 AS Decimal(10, 2)), 2, 17, 9)
INSERT [dbo].[Transferencias] ([IDTransferencia], [IDJugador], [FechaTransferencia], [MontoTransferencia], [IDTipoVenta], [ClubOrigen], [ClubDestino]) VALUES (10, 299, CAST(N'2022-04-02' AS Date), CAST(16000000.00 AS Decimal(10, 2)), 2, 19, 10)
INSERT [dbo].[Transferencias] ([IDTransferencia], [IDJugador], [FechaTransferencia], [MontoTransferencia], [IDTipoVenta], [ClubOrigen], [ClubDestino]) VALUES (11, 347, CAST(N'2022-06-10' AS Date), CAST(1400000.00 AS Decimal(10, 2)), 2, 1, 11)
INSERT [dbo].[Transferencias] ([IDTransferencia], [IDJugador], [FechaTransferencia], [MontoTransferencia], [IDTipoVenta], [ClubOrigen], [ClubDestino]) VALUES (12, 395, CAST(N'2022-07-15' AS Date), CAST(1200000.00 AS Decimal(10, 2)), 2, 4, 12)
INSERT [dbo].[Transferencias] ([IDTransferencia], [IDJugador], [FechaTransferencia], [MontoTransferencia], [IDTipoVenta], [ClubOrigen], [ClubDestino]) VALUES (13, 437, CAST(N'2022-03-22' AS Date), CAST(7000000.00 AS Decimal(10, 2)), 2, 7, 13)
INSERT [dbo].[Transferencias] ([IDTransferencia], [IDJugador], [FechaTransferencia], [MontoTransferencia], [IDTipoVenta], [ClubOrigen], [ClubDestino]) VALUES (14, 458, CAST(N'2022-01-12' AS Date), CAST(8000000.00 AS Decimal(10, 2)), 2, 10, 14)
INSERT [dbo].[Transferencias] ([IDTransferencia], [IDJugador], [FechaTransferencia], [MontoTransferencia], [IDTipoVenta], [ClubOrigen], [ClubDestino]) VALUES (15, 475, CAST(N'2022-04-08' AS Date), CAST(6000000.00 AS Decimal(10, 2)), 2, 13, 15)
INSERT [dbo].[Transferencias] ([IDTransferencia], [IDJugador], [FechaTransferencia], [MontoTransferencia], [IDTipoVenta], [ClubOrigen], [ClubDestino]) VALUES (16, 492, CAST(N'2022-05-11' AS Date), CAST(11000000.00 AS Decimal(10, 2)), 2, 12, 16)
INSERT [dbo].[Transferencias] ([IDTransferencia], [IDJugador], [FechaTransferencia], [MontoTransferencia], [IDTipoVenta], [ClubOrigen], [ClubDestino]) VALUES (17, 509, CAST(N'2022-10-20' AS Date), CAST(13000000.00 AS Decimal(10, 2)), 2, 19, 17)
INSERT [dbo].[Transferencias] ([IDTransferencia], [IDJugador], [FechaTransferencia], [MontoTransferencia], [IDTipoVenta], [ClubOrigen], [ClubDestino]) VALUES (18, 526, CAST(N'2022-03-15' AS Date), CAST(1500000.00 AS Decimal(10, 2)), 2, 2, 18)
INSERT [dbo].[Transferencias] ([IDTransferencia], [IDJugador], [FechaTransferencia], [MontoTransferencia], [IDTipoVenta], [ClubOrigen], [ClubDestino]) VALUES (19, 554, CAST(N'2022-08-10' AS Date), CAST(9000000.00 AS Decimal(10, 2)), 2, 5, 19)
INSERT [dbo].[Transferencias] ([IDTransferencia], [IDJugador], [FechaTransferencia], [MontoTransferencia], [IDTipoVenta], [ClubOrigen], [ClubDestino]) VALUES (20, 568, CAST(N'2022-11-05' AS Date), CAST(8000000.00 AS Decimal(10, 2)), 2, 8, 20)
SET IDENTITY_INSERT [dbo].[Transferencias] OFF
SET IDENTITY_INSERT [dbo].[UsuarioEPF] ON 

INSERT [dbo].[UsuarioEPF] ([id], [usuario], [pass]) VALUES (1, N'administrador', N'12345678')
INSERT [dbo].[UsuarioEPF] ([id], [usuario], [pass]) VALUES (2, N'sfmin', N'12345678')
SET IDENTITY_INSERT [dbo].[UsuarioEPF] OFF
ALTER TABLE [dbo].[Ciudades]  WITH CHECK ADD FOREIGN KEY([pais])
REFERENCES [dbo].[paises] ([id_pais])
GO
ALTER TABLE [dbo].[Club_temporada]  WITH CHECK ADD FOREIGN KEY([id_temporada])
REFERENCES [dbo].[Temporadas] ([IDTemporada])
GO
ALTER TABLE [dbo].[Club_temporada]  WITH CHECK ADD FOREIGN KEY([idClub])
REFERENCES [dbo].[Clubes] ([IDClub])
GO
ALTER TABLE [dbo].[Clubes]  WITH CHECK ADD FOREIGN KEY([Ciudad])
REFERENCES [dbo].[Ciudades] ([id_ciudad])
GO
ALTER TABLE [dbo].[Contratos_DT]  WITH CHECK ADD FOREIGN KEY([id_Director])
REFERENCES [dbo].[DirectoresTecnicos] ([id_Director])
GO
ALTER TABLE [dbo].[Contratos_Jugadores]  WITH CHECK ADD FOREIGN KEY([id_Jugador])
REFERENCES [dbo].[Jugadores] ([IDJugador])
GO
ALTER TABLE [dbo].[DirectoresTecnicos]  WITH CHECK ADD FOREIGN KEY([id_Pais])
REFERENCES [dbo].[paises] ([id_pais])
GO
ALTER TABLE [dbo].[DirectoresTecnicos]  WITH CHECK ADD FOREIGN KEY([idClub])
REFERENCES [dbo].[Clubes] ([IDClub])
GO
ALTER TABLE [dbo].[EstadisticasPartido]  WITH CHECK ADD FOREIGN KEY([IDPartido])
REFERENCES [dbo].[Partidos] ([IDPartido])
GO
ALTER TABLE [dbo].[Jugadores]  WITH CHECK ADD FOREIGN KEY([club])
REFERENCES [dbo].[Clubes] ([IDClub])
GO
ALTER TABLE [dbo].[Jugadores]  WITH CHECK ADD FOREIGN KEY([Nacionalidad])
REFERENCES [dbo].[paises] ([id_pais])
GO
ALTER TABLE [dbo].[Jugadores]  WITH CHECK ADD FOREIGN KEY([PosicionID])
REFERENCES [dbo].[Posiciones] ([IDPosicion])
GO
ALTER TABLE [dbo].[Partidos]  WITH CHECK ADD FOREIGN KEY([Adversario])
REFERENCES [dbo].[Clubes] ([IDClub])
GO
ALTER TABLE [dbo].[Partidos]  WITH CHECK ADD FOREIGN KEY([EquipoLocal])
REFERENCES [dbo].[Clubes] ([IDClub])
GO
ALTER TABLE [dbo].[Partidos]  WITH CHECK ADD FOREIGN KEY([id_temporada])
REFERENCES [dbo].[Temporadas] ([IDTemporada])
GO
ALTER TABLE [dbo].[Patrocinadores]  WITH CHECK ADD FOREIGN KEY([Tipo])
REFERENCES [dbo].[TipoPatrocinador] ([IdTipopatrocinio])
GO
ALTER TABLE [dbo].[Patrocinadores_Clubes]  WITH CHECK ADD FOREIGN KEY([idClub])
REFERENCES [dbo].[Clubes] ([IDClub])
GO
ALTER TABLE [dbo].[Patrocinadores_Clubes]  WITH CHECK ADD FOREIGN KEY([patrocinador])
REFERENCES [dbo].[Patrocinadores] ([IDPatrocinador])
GO
ALTER TABLE [dbo].[Temporadas]  WITH CHECK ADD FOREIGN KEY([IDCategoria])
REFERENCES [dbo].[Categorias] ([id_Categoria])
GO
ALTER TABLE [dbo].[Temporadas]  WITH CHECK ADD  CONSTRAINT [fk_torneo_temporada] FOREIGN KEY([id_torneo])
REFERENCES [dbo].[torneos] ([id_Torneo])
GO
ALTER TABLE [dbo].[Temporadas] CHECK CONSTRAINT [fk_torneo_temporada]
GO
ALTER TABLE [dbo].[Transferencias]  WITH CHECK ADD FOREIGN KEY([ClubDestino])
REFERENCES [dbo].[Clubes] ([IDClub])
GO
ALTER TABLE [dbo].[Transferencias]  WITH CHECK ADD FOREIGN KEY([ClubOrigen])
REFERENCES [dbo].[Clubes] ([IDClub])
GO
ALTER TABLE [dbo].[Transferencias]  WITH CHECK ADD FOREIGN KEY([IDJugador])
REFERENCES [dbo].[Jugadores] ([IDJugador])
GO
ALTER TABLE [dbo].[Transferencias]  WITH CHECK ADD FOREIGN KEY([IDTipoVenta])
REFERENCES [dbo].[TiposVenta] ([IDTipoVenta])
GO
/****** Object:  StoredProcedure [dbo].[ConsultarJugadores]    Script Date: 21/11/2023 17:17:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[ConsultarJugadores]
as
select * from Jugadores

GO
/****** Object:  StoredProcedure [dbo].[InsertarPartido]    Script Date: 21/11/2023 17:17:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[InsertarPartido] @fecha date, @equipoLocal int, @adversario int, 
@id_temporada int, @goles_local int, @goles_visitantes int, @IDPartido int OUTPUT
as begin
insert into Partidos values(@fecha, @equipoLocal, @adversario, @id_temporada, @goles_local, @goles_visitantes)
Set @IDPartido=SCOPE_IDENTITY()
end
GO
/****** Object:  StoredProcedure [dbo].[SP_ACTUALIZAR_JUGADOR]    Script Date: 21/11/2023 17:17:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SP_ACTUALIZAR_JUGADOR]
    @IDJugador int,
    @Nombre VARCHAR(50),
    @Apellido VARCHAR(50),
    @Club INT,
    @Posicion INT,
    @NumeroCamiseta INT,
    @Nacionalidad INT,
    @FechaNacimiento DATETIME,
    @Altura DECIMAL(5, 2),
    @Peso DECIMAL(5, 2)
AS
BEGIN
UPDATE Jugadores
SET Nombre=@Nombre, Apellido=@Apellido, Club=@Club, PosicionID=@Posicion, NumeroCamiseta=@NumeroCamiseta, Nacionalidad=@Nacionalidad, FechaNacimiento=@FechaNacimiento, Altura=@Altura, Peso=@Peso
WHERE IDJugador=@IDJugador
END
GO
/****** Object:  StoredProcedure [dbo].[SP_BORRAR_JUGADOR]    Script Date: 21/11/2023 17:17:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_BORRAR_JUGADOR]
    @IDJugador INT = NULL
AS
BEGIN
    BEGIN TRY
        BEGIN TRANSACTION;

        -- Eliminar de la tabla "EstadisticasPartido"
        DELETE FROM EstadisticasPartido
        WHERE IDJUGADOR = @IDJugador;

        -- Eliminar de la tabla "Transferencias"
        DELETE FROM Transferencias
        WHERE IDJugador = @IDJugador;

        -- Eliminar de la tabla "Contratos_Jugadores"
        DELETE FROM Contratos_Jugadores
        WHERE id_Jugador = @IDJugador;

        -- Eliminar de la tabla "Jugadores"
        DELETE FROM Jugadores
        WHERE IDJugador = @IDJugador;

        COMMIT;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0
        BEGIN
            ROLLBACK;
        END;
        -- Puedes manejar la excepciÃ³n de alguna manera, por ejemplo, lanzando un error
        THROW;
    END CATCH;
END;
GO
/****** Object:  StoredProcedure [dbo].[SP_CONSULTAR_CLUB]    Script Date: 21/11/2023 17:17:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_CONSULTAR_CLUB]
AS
BEGIN
SELECT IDClub,NombreClub FROM Clubes
END

GO
/****** Object:  StoredProcedure [dbo].[SP_Consultar_ClubesPatrocinadores]    Script Date: 21/11/2023 17:17:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[SP_Consultar_ClubesPatrocinadores]
as
select NombreClub 'Club', Descripcion 'Patrocinador'
from Clubes c join Patrocinadores_Clubes PC on c.IDClub = PC.idClub join Patrocinadores P on P.IDPatrocinador = PC.patrocinador

GO
/****** Object:  StoredProcedure [dbo].[SP_Consultar_DirectoresTecnicos]    Script Date: 21/11/2023 17:17:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[SP_Consultar_DirectoresTecnicos]
as
select nombre 'Nombre Director', Experiencia 'Experiencia Previa', NombreClub 'Club Actual',
Fechainicio 'Fecha Inicio Contrato', fechaFin 'Fecha Fin Contrato'
from DirectoresTecnicos DT join Clubes C on C.IDClub = DT.idClub join Contratos_DT CDT on CDT.id_Director = DT.id_Director

GO
/****** Object:  StoredProcedure [dbo].[SP_CONSULTAR_JUGADOR]    Script Date: 21/11/2023 17:17:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SP_CONSULTAR_JUGADOR]
@IDJugador int
AS
BEGIN
SELECT IDJugador,Nombre,Apellido,Club
FROM Jugadores
WHERE IDJugador=@IDJugador
END
GO
/****** Object:  StoredProcedure [dbo].[SP_CONSULTAR_JUGADOR_NOMBRE]    Script Date: 21/11/2023 17:17:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_CONSULTAR_JUGADOR_NOMBRE]
@Nombre varchar(100)
AS
BEGIN
SELECT IDJugador,Nombre,Apellido
FROM Jugadores
WHERE Nombre=@Nombre
END
GO
/****** Object:  StoredProcedure [dbo].[SP_CONSULTAR_JUGADORCLUB]    Script Date: 21/11/2023 17:17:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_CONSULTAR_JUGADORCLUB]
@club varchar(100)
as
select Nombre, Apellido, NombreClub,
DATEDIFF(YEAR,j.FechaNacimiento,GETDATE())
-(CASE
   WHEN DATEADD(YY,DATEDIFF(YEAR,j.FechaNacimiento,GETDATE()),j.FechaNacimiento)>GETDATE() THEN
      1
   ELSE
      0 
   END) 'Edad',
   NombrePosicion 'posicion'
from Jugadores j join Clubes c on j.club = c.IDClub
				 join Posiciones p on p.IDPosicion = j.PosicionID
where c.NombreClub = @club

GO
/****** Object:  StoredProcedure [dbo].[SP_Consultar_JugadoresPorPais]    Script Date: 21/11/2023 17:17:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[SP_Consultar_JugadoresPorPais]
as
select count(*) 'Cantidad Jugadores del Pais', nombrePais 'Pais'
from Jugadores J join paises p on j.Nacionalidad = p.id_pais
group by id_pais, NombrePais
GO
/****** Object:  StoredProcedure [dbo].[SP_CONSULTAR_PAIS]    Script Date: 21/11/2023 17:17:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_CONSULTAR_PAIS]
as
select * from paises

GO
/****** Object:  StoredProcedure [dbo].[SP_CONSULTAR_POSICION]    Script Date: 21/11/2023 17:17:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_CONSULTAR_POSICION]
as
select * from posiciones

GO
/****** Object:  StoredProcedure [dbo].[SP_CONSULTAR_Temporada]    Script Date: 21/11/2023 17:17:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[SP_CONSULTAR_Temporada]
as
select * from Temporadas

GO
/****** Object:  StoredProcedure [dbo].[SP_CONSULTAR_USUARIO]    Script Date: 21/11/2023 17:17:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_CONSULTAR_USUARIO]
    @usuario varchar(40)
AS
BEGIN
    SELECT * FROM UsuarioEPF WHERE usuario = @usuario
END

GO
/****** Object:  StoredProcedure [dbo].[SP_CREAR_USUARIO]    Script Date: 21/11/2023 17:17:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_CREAR_USUARIO]
    @usuario varchar(40), @pass varchar(20)
AS
BEGIN 
    INSERT INTO UsuarioEPF VALUES(@usuario,@pass)
END

GO
/****** Object:  StoredProcedure [dbo].[SP_CrearClub]    Script Date: 21/11/2023 17:17:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_CrearClub]
     -- Ajusta el tipo y la longitud según tus necesidades
    @IDClub INT OUTPUT  -- Parámetro de salida para el ID del club recién creado
AS
BEGIN
    SET NOCOUNT ON;

    -- Inserta el nuevo club
   select * from Clubes

    -- Obtiene el ID del club recién creado
   
END
GO
/****** Object:  StoredProcedure [dbo].[SP_INSERTAR_CONTRATO]    Script Date: 21/11/2023 17:17:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_INSERTAR_CONTRATO]
	@IDJugador int,
	@IDClub int,
	@Sueldo money,
	@Fechainicio datetime,
	@Fechafin datetime,
	@Valor money,
	@Clausula money
	AS
	BEGIN
	       INSERT INTO Contratos_Jugadores(id_Jugador,IdClub,Sueldo,Fechainicio,fechaFin,valor,Clausula)
		   VALUES(@IDJugador,@IDClub,@Sueldo,@Fechainicio,@Fechafin,@Valor,@Clausula)
    END
GO
/****** Object:  StoredProcedure [dbo].[SP_INSERTAR_ESTADISTICAS]    Script Date: 21/11/2023 17:17:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_INSERTAR_ESTADISTICAS] 
@IDPartido int,
@ID_ESTADISTICA INT,
@IDJUGADOR INT,
@GOLES INT,
@ASISTENCIAS INT,
@AMARILLAS INT, 
@ROJAS INT,
@TIEMPOJUGADO INT
AS BEGIN
INSERT INTO 
EstadisticasPartido
values (@IDPartido ,@IDJUGADOR,@GOLES,@ASISTENCIAS,@AMARILLAS, @ROJAS,@TIEMPOJUGADO)
END



GO
/****** Object:  StoredProcedure [dbo].[SP_INSERTAR_JUGADOR]    Script Date: 21/11/2023 17:17:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[SP_INSERTAR_JUGADOR] 
    @Nombre VARCHAR(50),
    @Apellido VARCHAR(50),
    @Club INT,
    @Posicion INT,
    @NumeroCamiseta INT,
    @Nacionalidad INT,
    @FechaNacimiento DATETIME,
    @Altura DECIMAL(5, 2),
    @Peso DECIMAL(5, 2)
AS
BEGIN
    INSERT INTO jugadores (Nombre, Apellido, Club, PosicionID, NumeroCamiseta, Nacionalidad, FechaNacimiento, Altura, Peso)
    VALUES (@Nombre, @Apellido, @Club, @Posicion, @NumeroCamiseta, @Nacionalidad, @FechaNacimiento, @Altura, @Peso)
	
END
GO
/****** Object:  StoredProcedure [dbo].[SP_InsertarJugador]    Script Date: 21/11/2023 17:17:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_InsertarJugador]
    @Nombre NVARCHAR(50),
    @Apellido NVARCHAR(50),
    @Club INT,
    @PosicionID INT,
    @Nacionalidad INT,
    @NumeroCamiseta INT,
    @FechaNacimiento DATE,
    @Altura INT,
    @Peso INT
AS
BEGIN
    SET NOCOUNT ON;
    
    -- Insertar un nuevo jugador en la tabla Jugadores
    INSERT INTO Jugadores (Nombre, Apellido, Club, PosicionID,  NumeroCamiseta, Nacionalidad,FechaNacimiento, Altura, Peso)
    VALUES (@Nombre, @Apellido, @Club, @PosicionID,  @NumeroCamiseta,@Nacionalidad,@FechaNacimiento, @Altura, @Peso);
    
    -- Devolver un mensaje de éxito
    PRINT 'Jugador insertado con éxito.';
END

GO
/****** Object:  StoredProcedure [dbo].[SP_InsertarPartido]    Script Date: 21/11/2023 17:17:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_InsertarPartido] @fecha date, @equipoLocal int, @adversario int, 
@id_temporada int, @goles_local int, @goles_visitantes int
as begin
insert into Partidos values(@fecha, @equipoLocal, @adversario, @id_temporada, @goles_local, @goles_visitantes)

end
GO
/****** Object:  StoredProcedure [dbo].[SP_PROXIMO_ID]    Script Date: 21/11/2023 17:17:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SP_PROXIMO_ID]
@next int OUTPUT
AS
BEGIN
	SET @next = (SELECT MAX(IDPartido)+1  FROM partidos);
END
GO
/****** Object:  StoredProcedure [dbo].[SP_SiguientePartido]    Script Date: 21/11/2023 17:17:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_SiguientePartido]
    @SiguientePartido INT OUTPUT
AS
BEGIN
    SELECT @SiguientePartido = ISNULL(MAX(IDPartido), 0) + 1
    FROM Partidos;
END
GO
/****** Object:  StoredProcedure [dbo].[SP_TRAER_JUGADORES]    Script Date: 21/11/2023 17:17:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[SP_TRAER_JUGADORES]
as
Select IDJugador, Nombre+ ' ' +Apellido 'Nombre', c.NombreClub 'Nombre Club', p.NombrePosicion 'Posicion', pa.nombrePais 'Nacionalidad'
from jugadores j join clubes c on j.club = c.IDClub
				 join Posiciones p on p.IDPosicion = j.PosicionID
				 join paises pa on pa.id_pais = j.Nacionalidad

GO
/****** Object:  StoredProcedure [dbo].[TablaGoleadores_Torneo_Temporada]    Script Date: 21/11/2023 17:17:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[TablaGoleadores_Torneo_Temporada]
    @NombreTorneo NVARCHAR(255),
    @AnioInicio INT,
    @AnioFin INT
AS
BEGIN
    -- Tu consulta
    SELECT
        C.NombreClub AS 'Club',
        J.Nombre + ',' + J.Apellido AS 'Futbolista',
        PA.nombrePais 'Pais',
        SUM(P.Goles) AS 'Goles',
        TE.torneo AS 'Torneo',
        CONCAT(T.AnioInicio, '/', T.AnioFin) AS 'Temporada'
    FROM
        EstadisticasPartido P
    JOIN
        Jugadores J ON J.IDJugador = P.IDJUGADOR
    JOIN
        Clubes C ON C.IDClub = J.club
    JOIN
        Partidos Part ON Part.IDPartido = P.IDPartido
    JOIN
        Temporadas T ON T.IDTemporada = Part.id_temporada
    JOIN
        Torneos TE ON TE.id_Torneo = T.id_torneo
    JOIN 
        paises PA ON PA.id_pais=J.Nacionalidad
    WHERE
        C.IDClub = J.club AND J.IDJugador = P.IDJUGADOR AND UPPER(@NombreTorneo) = UPPER(TE.torneo) AND @AnioInicio = T.AnioInicio AND @AnioFin = T.AnioFin
    GROUP BY
        C.NombreClub, J.Nombre, J.Apellido,PA.nombrePais, TE.torneo, T.AnioInicio, T.AnioFin
    ORDER BY
        Goles DESC;
END;
GO
/****** Object:  StoredProcedure [dbo].[TablaPosiciones_Torneo_Temporada]    Script Date: 21/11/2023 17:17:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[TablaPosiciones_Torneo_Temporada]
    @NombreTorneo NVARCHAR(255),
    @AnioInicio INT,
    @AnioFin INT
AS
BEGIN
    -- Tu consulta
   SELECT
    C.NombreClub AS 'Club',
    CT.puntos AS 'Puntos',
    COALESCE(SUM(E.Goles), 0) AS 'Goles',  -- Utilizando COALESCE para manejar nulos y mostrar 0 goles
    TE.torneo AS 'Torneo',
    CONCAT(T.AnioInicio, '/', T.AnioFin) AS 'Temporada'
FROM
    Clubes C
JOIN
    Club_temporada CT ON CT.idClub = C.IDClub
JOIN
    Temporadas T ON T.IDTemporada = CT.id_temporada
JOIN
    Partidos P ON P.id_temporada = T.IDTemporada
JOIN
    Torneos TE ON T.id_torneo = TE.id_Torneo
JOIN
    Jugadores J ON J.club = C.IDClub
LEFT JOIN
    EstadisticasPartido E ON E.IDJUGADOR = J.IDJugador AND E.IDPartido = P.IDPartido
WHERE 
     TE.torneo = @NombreTorneo AND T.AnioInicio = @AnioInicio AND T.AnioFin = @AnioFin
GROUP BY
    C.NombreClub, CT.puntos, TE.torneo, T.AnioInicio, T.AnioFin
ORDER BY
    CT.puntos DESC, Goles DESC;
END;
GO
USE [master]
GO
ALTER DATABASE [ClubLaboratorioPresentacion] SET  READ_WRITE 
GO
