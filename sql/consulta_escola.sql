-- Consulta 01
SELECT * from Disciplinas;
-- Consulta 02
SELECT a.Nome_Aluno as Alunos, n.Nota as Nota
from Alunos a
join Notas n on n.ID_Aluno = a.ID_Aluno
join Disciplinas d on d.ID_Disciplina = n.ID_Disciplina
where n.nota > 7 and d.Nome_Disciplina = 'Matemática'
GROUP by Alunos
order by Nota DESC;
-- Consulta 03
SELECT t.ID_Turma as Turma, COUNT(td.id_disciplina) as Qtd_Disciplinas
from Turmas t 
join Turma_Disciplinas td on td.ID_Turma = t.ID_Turma
join Disciplinas d on d.ID_Disciplina = td.ID_Disciplina
GROUP by Turma 
Order by Turma, Qtd_Disciplinas desc;