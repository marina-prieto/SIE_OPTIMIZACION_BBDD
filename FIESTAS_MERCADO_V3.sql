USE [SNTBROKER_SIE_MEJORADA]
GO

/****** Object:  Table [dbo].[FiestasMercados_v2]    Script Date: 22/02/2021 17:55:38 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FIESTAS_MERCADOS_V3](
	[ID_MERCADO] SMALLint NOT NULL,
	[FECHA] [smalldatetime] NOT NULL
) ON [PRIMARY]
GO

insert into [dbo].[FIESTAS_MERCADOS_V3]
select
	convert(SMALLint,IdMercado) as ID_MERCADO,
	convert(smalldatetime,Fecha) as FECHA
from [SNTBROKER_SIE].[dbo].[FiestasMercados_v2]
