# 1) Есть массив
#   [1, 2, 12, 34, 35, 6, 0, 34, 122, 124, 789, 999, 33, 54, 763, 893 ]

#  a) напишите функцию, которая получает на вход исходный массив и возвращает 2 максимальных значения
#  b) напишите функцию, которая получает на вход исходный массив и возвращает 2 минимальных значения

def max(arr)
  puts arr.max(2)
end

def min(arr)
  puts arr.min(2)
end

arr = [1, 2, 12, 34, 35, 6, 0, 34, 122, 124, 789, 999, 33, 54, 763, 893]

max(arr)
min(arr)
