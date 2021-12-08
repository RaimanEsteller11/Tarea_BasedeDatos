ALTER PROCEDURE Lista
(
	@pUsuario		varchar(25),
	@pTipoPago		smallint,
	@pTipoPlanilla	smallint
)

AS
BEGIN

SELECT 

em.Nick			as  	Empresa,
us.Nombre		as		Recurso,
tpl.Nick		as		Tipo_Planilla,
tp.Nombre		as		Tipo_Pago,
re.SalarioBase	as		Salario,
re.Activo		as		Estado

FROM Recurso AS re 

Inner Join Empresas as em on

			em.Empresa_Id   =   re.Empresa_Id

Inner Join Usuarios as us on 

			us.Usuario_Id  =  re.Usuario_Id

Inner Join TipoPago as tp on

			tp.TipoPago_Id	 =	 re.TipoPago_Id

Inner Join TipoPlanilla as tpl on

			tpl.TipoPlanilla_Id	 =	 re.TipoPlanilla_Id

WHERE	us.Usuario_Id like '%' + @pUsuario + '%' and 

tp.TipoPago_Id    =  IIF(@pTipoPago = -1, tp.TipoPago_Id, @pTipoPago) and
tpl.TipoPlanilla_Id  =  IIF(@pTipoPlanilla = -1, tpl.TipoPlanilla_Id, @pTipoPlanilla)

END
