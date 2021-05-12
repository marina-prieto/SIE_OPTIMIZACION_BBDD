USE [SNTBROKER_SIE_MEJORADA]
GO

/** Object:  Table [dbo].[ULTDIF_ARBOLDECISION_TEMP_v2]    Script Date: 24/02/2021 21:40:18 **/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ULTDIF_ARBOLDECISION_TEMP_V3](
    [ID_EMPRESA] [SMALLINT] NOT NULL,
    [CLAVE] [VARCHAR] (10) NOT NULL,
    [ID_PATRON] [VARCHAR] (50) NOT NULL,
    [NUMERO] [smallint] NOT NULL
) ON [PRIMARY]
GO

INSERT INTO [dbo].[ULTDIF_ARBOLDECISION_TEMP_V3]
SELECT
    CONVERT(SMALLINT, IDEMPRESA) AS ID_EMPRESA,
    CONVERT(VARCHAR(10), CLAVE) AS CLAVE,
    CONVERT(VARCHAR(50), IDPATRON) AS ID_PATRON,
    CONVERT(SMALLINT, CONVERT(REAL, NUMERO)) AS NUMERO
FROM [SNTBROKER_SIE].[dbo].[ULTDIF_ARBOLDECISION_TEMP_v2];

UPDATE ULTDIF_ARBOLDECISION_TEMP_V3
SET ULTDIF_ARBOLDECISION_TEMP_V3.ID_PATRON = PATRONES_V3.ID_PATRON
FROM ULTDIF_ARBOLDECISION_TEMP_V3
JOIN PATRONES_V3 ON (ULTDIF_ARBOLDECISION_TEMP_V3.ID_PATRON = PATRONES_V3.PATRON)

ALTER TABLE ULTDIF_ARBOLDECISION_TEMP_V3 ALTER COLUMN ID_PATRON SMALLINT;