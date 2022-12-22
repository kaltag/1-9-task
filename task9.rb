Есть таблица students с колонками

- id int
- name varchar 
- created_at datetime 
- parent_id int

Так же есть таблица parents 
- id int
- name varchar 
- created_at datetime

a) посчитайте количество студентов с родителями
b) посчитайте количество студентов с родителями при том что имя родителя Марина
c) посчитайте количество студентов без родителя

1)  ActiveRecord: Student.where.not(parent_id: nil).count
    SQL: SELECT COUNT(*) FROM students WHERE parent_id IS NOT NULL

2)  ActiveRecord: Student.joins(:parent).where(parents: {name: "Марина"})
    SQL: SELECT COUNT(*) FROM students JOIN parents on on parent.id = students.parent_id where parents.name = "Марина"

3)  ActiveRecord: Student.where(parent_id: nil).count
    SQL: SELECT COUNT(*) FROM students WHERE parent_id IS NULL
    