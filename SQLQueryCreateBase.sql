CREATE DATABASE Tarea_DBA

GO

USE Tarea_DBA

GO

CREATE TABLE Empresas
(
	Empresa_Id	SMALLINT		NOT NULL,
	Nombre		VARCHAR(50)		NOT NULL,
	Nick		VARCHAR(10)		NOT NULL,
	Ubicacion	VARCHAR(MAX)	NOT NULL,
	Telefono	INT				NOT NULL

	PRIMARY KEY (Empresa_Id)
);
GO
CREATE TABLE Usuarios
(
	Usuario_Id		VARCHAR(10)		NOT NULL,
	Nombre			VARCHAR(50)		NOT NULL,
	Contrasena		VARCHAR(MAX)	NOT NULL,

	PRIMARY KEY (Usuario_Id)
);
GO
CREATE TABLE TipoPago
(
	TipoPago_Id		SMALLINT		NOT NULL,
	Nombre			VARCHAR(50)		NOT NULL,
	Porcentaje		NUMERIC(5,2)	NOT NULL,

	PRIMARY KEY (TipoPago_Id)
);
GO
CREATE TABLE TipoPlanilla
(
	TipoPlanilla_Id		SMALLINT		NOT NULL,
	Nombre				VARCHAR(50)		NOT NULL,
	Nick				VARCHAR(10)		NOT NULL,
	Arimetica			VARCHAR(1)		NOT NULL,
	Porcentaje			NUMERIC(5,2)	NOT NULL

	PRIMARY KEY (TipoPlanilla_Id)
);
GO
CREATE TABLE Recurso
(
	Empresa_Id			SMALLINT		NOT NULL,
	Usuario_Id			VARCHAR(10)		NOT NULL,
	TipoPlanilla_Id		SMALLINT		NOT NULL,
	TipoPago_Id			SMALLINT		NOT NULL,
	SalarioBase			NUMERIC(9,2)	NOT NULL,
	Activo				BIT				NOT NULL

	FOREIGN KEY (Empresa_Id) REFERENCES Empresas(Empresa_Id),
	FOREIGN KEY (Usuario_Id) REFERENCES Usuarios(Usuario_Id),
	FOREIGN KEY (TipoPlanilla_Id) REFERENCES TipoPlanilla(TipoPlanilla_Id),
	FOREIGN KEY (TipoPago_Id) REFERENCES TipoPago(TipoPago_Id),
	PRIMARY KEY (Empresa_Id, Usuario_Id, TipoPlanilla_Id)
);

GO