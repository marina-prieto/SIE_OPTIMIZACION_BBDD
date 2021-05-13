USE [SNTBROKER_SIE_MEJORADA]
GO

/****** Object:  Table [dbo].[ACCIONESEEUU_V2]    Script Date: 22/02/2021 17:57:16 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ACCIONES_EEUU_V3](
	[ID_SECTOR] [SMALLINT] NOT NULL,
	[ID_EMPRESA] [SMALLINT] NOT NULL,
	[NOMBRE] [VARCHAR] (20) NOT NULL

) ON [PRIMARY]
GO

INSERT INTO [dbo].[ACCIONES_EEUU_V3]
SELECT
	CONVERT(SMALLINT, B.IdSector) as ID_SECTOR,
	CONVERT(SMALLINT, C.IdEmpresa) as ID_EMPRESA,
	CONVERT (VARCHAR(20), A.Nombre) as NOMBRE
FROM [SNTBROKER_SIE].[dbo].[ACCIONESEEUU_V2] A, [SNTBROKER_SIE].[dbo].[SECTORES_V2] B, [SNTBROKER_SIE].[dbo].[EMPRESAS_V2] C
WHERE B.Sector = A.Sector AND C.Clave = A.Simbolo;
