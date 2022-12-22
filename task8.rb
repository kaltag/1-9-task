Есть таблица students с колонками
- id int
- name varchar 
- created_at datetime 
- parent_id int

  a) посчитайте количество всех студентов
  b) посчитайте количество студентов с именем Иван
  c) посчитайте количество студентов созданных после 1 сентября 2020 года

  1)  ActiveRecord: Students.all.count
      SQL: SELECT COUNT(*) FROM students

  2)  ActiveRecord: Students.where(name: "Иван").count
      SQL: SELECT COUNT(*) FROM students WHERE name = "Иван" 
      
  3)  ActiveRecord: Students.where("created_at > ?", DateTime.parse('2020-09-01')).count                                                                  
      SQL: SELECT COUNT(*) FROM students WHERE created_at > '2020-09-01'
