USE [SNTBROKER_SIE_MEJORADA]
GO

/****** Object:  Table [dbo].[MERCADOS_V2]    Script Date: 22/02/2021 17:55:56 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[MERCADOS_V3](
	[ID_MERCADO] [varchar](6) NOT NULL,
	[MERCADO] [nvarchar](40) NOT NULL,
	[HORA_LOCAL_INICIO] [varchar](5) NOT NULL,
	[HORA_LOCAL_CIERRE] [varchar](5) NOT NULL,
	[HORA_ESP_INICIO] [varchar](5) NOT NULL,
	[HORA_ESP_CIERRE] [varchar](5) NOT NULL,
	[HORA_LIMITE] [varchar](5) NOT NULL,
	[HORA_INICIO_EJEC] [varchar](5) NOT NULL,
	[HORA_FIN_EJEC] [varchar](5) NOT NULL,
	[INTERVALO_EJEC] [int] NOT NULL
) ON [PRIMARY]
GO

insert into [dbo].[MERCADOS_V3]
select
	convert(varchar(6),IdMercado) as ID_MERCADO,
	convert(nvarchar(40),Mercado) as MERCADO,
	convert(varchar(5),HoraLocalInicio) as HORA_LOCAL_INICIO,
	convert(varchar(5),HoraLocalCierre) as HORA_LOCAL_CIERRE,
	convert(varchar(5),HoraEspInicio) as HORA_ESP_INICIO,
	convert(varchar(5),HoraEspCierre) as HORA_ESP_CIERRE,
	convert(varchar(5),HoraLimite) as HORA_LIMITE,
	convert(varchar(5),HoraInicioEjec) as HORA_INICIO_EJEC,
	convert(varchar(5),HoraFinEjec) as HORA_FIN_EJEC,
	convert(int,IntervaloEjec) as INTERVALO_EJEC
from [SNTBROKER_SIE].[dbo].[MERCADOS_V2];
