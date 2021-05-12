USE [SNTBROKER_SIE_MEJORADA]
GO

/****** Object:  Table [dbo].[ACCIONESEEUU_V2]    Script Date: 22/02/2021 17:57:16 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ACCIONESEEUU_V3](
	[ID_SECTOR] [SMALLINT] NOT NULL,
	[CLAVE] [VARCHAR](10) NOT NULL,
	[NOMBRE] [VARCHAR] (20) NOT NULL

) ON [PRIMARY]
GO

INSERT INTO [dbo].[ACCIONESEEUU_V3]
SELECT
	CONVERT(SMALLINT, IdSector) as ID_SECTOR,
	CONVERT(VARCHAR(10), Simbolo) as CLAVE,
	CONVERT (VARCHAR(20), Nombre) as NOMBRE
FROM [SNTBROKER_SIE].[dbo].[ACCIONESEEUU_V2] A, [SNTBROKER_SIE].[dbo].[SECTORES_V2] B 
WHERE B.Sector = A.Sector;
