-- FUNÇOES DE DATA

-- TIPOS DE DATA E HORAS NO Transact-SQL
-- DateTime		 - A partir de 01/01/1753 - Armazena até centésimos de segundos
-- SmallDateTime - A partir de 01/01/1900 - Armazena até segundos

-- Funções: GetDate, DatePart, DateAdd e DateDiff
-- unidades: year, month, day

-- GETDATE() -> Traz a data atual
SELECT GETDATE()
SELECT CONVERT(char, GETDATE(), 103) --103: Formato dd/mm/aaaa
SELECT DAY(GETDATE()) Dia_Atual
SELECT MONTH(GETDATE()) Dia_Atual
SELECT YEAR(GETDATE()) Dia_Atual

-- DATEPART
SELECT DATEPART(year, GETDATE()) ANO
-- Usando datepart para contar quantas pessoas nasceram em cada mes
SELECT DATEPART(MONTH, a.data_nascimento) Mês, COUNT(DATEPART(MONTH, a.data_nascimento)) Qtd
FROM Alunos a
GROUP BY DATEPART(MONTH, a.data_nascimento)


-- DATEADD
SELECT DATEADD(YEAR, -2, GETDATE()) Data -- Diminui 2 anos na data atual
SELECT CONVERT(date, DATEADD(year, -2, GETDATE())) Data
SELECT CONVERT(smalldatetime, DATEADD(hour, 5, GETDATE())) Data

-- DATEDIFF
SELECT DATEDIFF(YEAR, GETDATE(), '25/07/2024') Diferenca_em_anos
SELECT DATEDIFF(MONTH, GETDATE(), '25/07/2024') Diferenca_em_meses
SELECT DATEDIFF(DAY, GETDATE(), '25/07/2024') Diferenca_em_dias
SELECT DATEDIFF(HOUR, '03/04/2002', GETDATE()) Diferenca_em_horas
SELECT DATEDIFF(MINUTE, '03/04/2002', GETDATE()) Diferenca_em_minutos