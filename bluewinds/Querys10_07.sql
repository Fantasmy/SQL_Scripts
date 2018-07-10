-- Obtener todos los estudiantes que estan en mas de 3 cursos

select student_id, count(Course_Id) 
from StudentCourses
group by Student_Id
having count(Course_Id) > 3

-- Obtener todos los profesores que esten en mas de 2 cursos
select c.TeacherId
from Teachers t
inner join Courses c on c.TeacherId = t.Id
group by c.TeacherId
having count(c.Id) > 2

