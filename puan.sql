USE [Futbol]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PuanCetveli](
	[puan] [nvarchar](50) NULL,
	[Sira] [nvarchar](50) NULL,
	[takimID] [int] NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PuanCetveli]  WITH CHECK ADD  CONSTRAINT [FK_PuanCetveli_Takim] FOREIGN KEY([takimID])
REFERENCES [dbo].[Takim] ([takimID])
GO

ALTER TABLE [dbo].[PuanCetveli] CHECK CONSTRAINT [FK_PuanCetveli_Takim]
GO

