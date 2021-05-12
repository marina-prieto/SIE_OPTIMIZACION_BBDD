USE [SNTBROKER_SIE_MEJORADA]
GO

/****** Object:  Table [dbo].[COTIZACIONES_V2]    Script Date: 26/02/2021 12:11:13 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[COTIZACIONES_V3](
	[FECHA] [smalldatetime] NOT NULL,
	[ID_EMPRESA] [smallint] NOT NULL,
	[ULT] [float](15) NOT NULL,
	[DIF] [float](15) NOT NULL,
	[PDIF] [float](15) NOT NULL,
	[MAX] [float](15) NOT NULL,
	[MIN] [float](15) NOT NULL,
	[VOL] [int] NOT NULL
) ON [PRIMARY]
GO

INSERT INTO [SNTBROKER_SIE_MEJORADA].[dbo].[COTIZACIONES_V3]
select
 convert(smalldatetime, FECHA_MUESTRA) as FECHA,
 convert(smallint, IdEmpresa)  as ID_EMPRESA,
 convert(float(15), ULTIMO) as ULT,
 convert(float(15), DIFERENCIA) as DIF,
 convert(float(15), PORCDIF) as PDIF,
 convert(float(15), MAXIMO)  as MAXIMO,
 convert(float(15), MINIMO)  as MINIMO,
 convert(int, VOLUMEN) as VOL
from [SNTBROKER_SIE].[dbo].[COTIZACIONES_V2]
