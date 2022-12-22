# 4) Покажите пример удаления nil значений в Ruby массиве
# [nil, 1, :foo]

arr = [nil, 1, :foo]
puts arr.compact.to_s
