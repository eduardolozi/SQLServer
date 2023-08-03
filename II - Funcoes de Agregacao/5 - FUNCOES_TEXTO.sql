-- FUNÇÕES DE TEXTO

-- CHARINDEX (pesquisa um caractere ou string em uma sequencia de ate 8000 caracteres)
SELECT a.nome
FROM Alunos a
WHERE CONVERT(int, CHARINDEX('lozano', a.nome)) > 0

SELECT a.nome
FROM Alunos a
WHERE CHARINDEX('lozano', a.nome) <> '0'

-- CONCAT_WS (tem como primeiro parametro qual vai ser o separador das strings)
SELECT CONCAT_WS(' ', 'Eduardo', 'Lozano', 'Azevedo')

-- FORMAT (Server como um CONVERT OU UM CAST)
SELECT FORMAT(at.valor, 'C', 'PT-BR') Valor_Monetario_BR 
FROM AlunosxTurmas at

SELECT FORMAT(GETDATE(), 'd', 'PT-BR') Formato_Data_BR
SELECT FORMAT(GETDATE(), 'D', 'PT-BR') Formato_Data_BR

-- LEN (Retorna o tamanho do campo)
SELECT LEN('Eduardo Lozano')

-- UPPER (Converte os caracteres para MAIUSCULO)
-- LOWER (Converte os caracteres para MINUSCULO)
SELECT UPPER('Eduardo') + ' ' + LOWER('LOZANO')

-- LTRIM (Remove espaços à esquerda) 
-- RTRIM (Remove espaços à direita)
SELECT LTRIM('           OI')
SELECT LTRIM('X      OI') -- Aqui a funcao LTRIM nao vai funcionar

-- PATINDEX (Retonra a posicao inicial da primeira ocorrencia do padrao)
SELECT A.nome
FROM Alunos A
WHERE PATINDEX('%A%', a.nome) <> '0' --Retorna todos que tiverem A no nome
SELECT A.nome
FROM Alunos A
WHERE PATINDEX('%s', a.nome) <> '0' --Retorna todos que acabarem com s
SELECT A.nome
FROM Alunos A
WHERE PATINDEX('J%', a.nome) <> '0' --Retorna todos que começarem com j

-- REPLACE
SELECT REPLACE('Eduardo Lozano', 'a', 'x')

DECLARE @cpf varchar(15)
	SET @cpf = '111.222.333-44'
SELECT REPLACE(REPLACE(@cpf, '.', ''), '-', '')

--TRANSLATE (Funciona como o REPLACE, mas ele pode mudar mais de um caracter por vez)
SELECT TRANSLATE('2*[3+4]/{7-2}', '[]{}', '()()')

-- SPACE (Adiciona espaços à direita)
SELECT 'Eduardo Lozano' + SPACE(50 - LEN('Eduardo Lozano'))

-- WHILE 
-- Podemos usar o While para remover espa~ços desnecessários
DECLARE @string varchar(100)
	SET @string = '    Oi, eu    sou      o Edu  '
WHILE CHARINDEX('  ', @string) > 0
BEGIN
	SET @string = REPLACE(@string, '  ', ' ')
END
select @string