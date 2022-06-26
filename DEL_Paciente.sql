

/*
select * from paciente

*/


CREATE PROC DEL_Paciente(
				@idpaciente paciente)

AS
set nocount on


if exists(SELECT * from Paciente
			WHERE idpaciente = @idpaciente)
	DELETE FROM Paciente WHERE idpaciente = @idpaciente
ELSE
	SELECT 0 as resultado

