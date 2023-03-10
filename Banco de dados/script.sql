USE [calculadora_simuladora]
GO
/****** Object:  Table [dbo].[simulacao_calculadora_juros]    Script Date: 23/02/2023 22:10:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[simulacao_calculadora_juros](
	[id_simulacao] [int] IDENTITY(1,1) NOT NULL,
	[Valor_inicial] [decimal](15, 2) NOT NULL,
	[Valor_aporte_mensal] [decimal](15, 2) NOT NULL,
	[Taxa_juros] [decimal](10, 4) NOT NULL,
	[Quantidade_tempo] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_simulacao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario_Simulacao]    Script Date: 23/02/2023 22:10:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario_Simulacao](
	[id_simulacao] [int] NOT NULL,
	[Nome_pessoa] [varchar](100) NOT NULL,
	[Descricao] [varchar](200) NULL,
	[Data_simulacao] [date] NOT NULL
) ON [PRIMARY]
GO
