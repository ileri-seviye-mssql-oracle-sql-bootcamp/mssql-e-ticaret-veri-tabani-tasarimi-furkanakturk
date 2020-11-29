USE [Futbol]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Takim](
	[takimID] [int] NOT NULL,
	[takimAdi] [nvarchar](50) NULL,
	[stadID] [int] NULL,
	[kurulusYili] [date] NULL,
	[baskan] [nvarchar](50) NULL,
 CONSTRAINT [PK_Takim] PRIMARY KEY CLUSTERED 
(
	[takimID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Takim]  WITH CHECK ADD  CONSTRAINT [FK_Takim_Stad] FOREIGN KEY([stadID])
REFERENCES [dbo].[Stad] ([stadID])
GO

ALTER TABLE [dbo].[Takim] CHECK CONSTRAINT [FK_Takim_Stad]
GO

