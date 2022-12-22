# 2) Есть массив
# arr = [{a: 1, b: 2, c: 45}, {d: 123, c: 12}, {e: 87}]

# a) напишите выражение, которое получает массив всех ключей
# b) напишите выражение, которое получает массив всех значений
# с) напишите выражение, которое получает сумму всех значений

hash_arr = [{ a: 1, b: 2, c: 45 }, { d: 123, c: 12 }, { e: 87 }]

arr_keys = []
arr_values = []
sum = 0

hash_arr.each do |hash|
  hash.each do |key, value|
    arr_keys << key
    arr_values << value
    sum += value
  end
end

puts "Массив ключей = #{arr_keys}"
puts "Массив значений = #{arr_values}"
puts "Сумма = #{sum}"
