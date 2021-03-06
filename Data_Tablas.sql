USE [Tarea_DBA]
GO
INSERT [dbo].[Empresas] ([Empresa_Id], [Nombre], [Nick], [Ubicacion], [Telefono]) VALUES (1, N'Scotiabank', N'SBK', N'Costa Rica', 278984165)
INSERT [dbo].[Empresas] ([Empresa_Id], [Nombre], [Nick], [Ubicacion], [Telefono]) VALUES (2, N'INS Servicios', N'INS', N'Costa Rica', 276842356)
INSERT [dbo].[Empresas] ([Empresa_Id], [Nombre], [Nick], [Ubicacion], [Telefono]) VALUES (3, N'Caja Costarricense de Seguro Social', N'CCSS', N'Costa Rica', 271959563)
GO
INSERT [dbo].[Usuarios] ([Usuario_Id], [Nombre], [Contrasena]) VALUES (N'ccastillo', N'Carlos Castillo', N'654321')
INSERT [dbo].[Usuarios] ([Usuario_Id], [Nombre], [Contrasena]) VALUES (N'hwalker', N'Hugo Walker', N'987654')
INSERT [dbo].[Usuarios] ([Usuario_Id], [Nombre], [Contrasena]) VALUES (N'jmora', N'Juan Mora', N'123456')
INSERT [dbo].[Usuarios] ([Usuario_Id], [Nombre], [Contrasena]) VALUES (N'llopez', N'Luis Lopez', N'654987')
GO
INSERT [dbo].[TipoPago] ([TipoPago_Id], [Nombre], [Porcentaje]) VALUES (1, N'Mensual', CAST(100.00 AS Numeric(5, 2)))
INSERT [dbo].[TipoPago] ([TipoPago_Id], [Nombre], [Porcentaje]) VALUES (2, N'Quincenal', CAST(50.00 AS Numeric(5, 2)))
INSERT [dbo].[TipoPago] ([TipoPago_Id], [Nombre], [Porcentaje]) VALUES (3, N'Semanal', CAST(25.00 AS Numeric(5, 2)))
GO
INSERT [dbo].[TipoPlanilla] ([TipoPlanilla_Id], [Nombre], [Nick], [Arimetica], [Porcentaje]) VALUES (1, N'Scotiabank', N'SBK', N'+', CAST(13.00 AS Numeric(5, 2)))
INSERT [dbo].[TipoPlanilla] ([TipoPlanilla_Id], [Nombre], [Nick], [Arimetica], [Porcentaje]) VALUES (2, N'INS Servicios', N'INS', N'+', CAST(13.00 AS Numeric(5, 2)))
INSERT [dbo].[TipoPlanilla] ([TipoPlanilla_Id], [Nombre], [Nick], [Arimetica], [Porcentaje]) VALUES (3, N'Caja Costarricense de Seguro Social', N'CCSS', N'-', CAST(10.50 AS Numeric(5, 2)))
GO
INSERT [dbo].[Recurso] ([Empresa_Id], [Usuario_Id], [TipoPlanilla_Id], [TipoPago_Id], [SalarioBase], [Activo]) VALUES (1, N'ccastillo', 2, 1, CAST(1000000.00 AS Numeric(9, 2)), 1)
INSERT [dbo].[Recurso] ([Empresa_Id], [Usuario_Id], [TipoPlanilla_Id], [TipoPago_Id], [SalarioBase], [Activo]) VALUES (2, N'hwalker', 2, 1, CAST(900000.00 AS Numeric(9, 2)), 1)
INSERT [dbo].[Recurso] ([Empresa_Id], [Usuario_Id], [TipoPlanilla_Id], [TipoPago_Id], [SalarioBase], [Activo]) VALUES (2, N'jmora', 1, 3, CAST(150000.00 AS Numeric(9, 2)), 1)
INSERT [dbo].[Recurso] ([Empresa_Id], [Usuario_Id], [TipoPlanilla_Id], [TipoPago_Id], [SalarioBase], [Activo]) VALUES (3, N'ccastillo', 3, 2, CAST(700000.00 AS Numeric(9, 2)), 1)
INSERT [dbo].[Recurso] ([Empresa_Id], [Usuario_Id], [TipoPlanilla_Id], [TipoPago_Id], [SalarioBase], [Activo]) VALUES (3, N'llopez', 3, 2, CAST(500000.00 AS Numeric(9, 2)), 1)
GO
