USE [SNTBROKER_SIE_MEJORADA]
GO

/****** Object:  Table [dbo].[SECTORES_v2]    Script Date: 22/02/2021 17:57:16 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SECTORES_v3](
	[ID_SECTOR] [int] NOT NULL,
	[SECTOR] [nvarchar](40) NOT NULL
) ON [PRIMARY]
GO

INSERT INTO SECTORES_V3 VALUES (0, 'No definido')

insert into [dbo].[SECTORES_v3]
select
	convert(int,IdSector) as ID_SECTOR,
	convert(nvarchar(40),Sector) as SECTOR
from [SNTBROKER_SIE].[dbo].[SECTORES_v2];
