# 6) Напишите функцию
# a) которая переводит градусы по Цельсию в градусы по Фаренгейту (формулу нужно найти в интернете)
# b) напишите консольную программу, которая просит юзера ввести число (градусы по Цельсию) и переводит его в Фаренгейты
# с) необязательно, но будет плюсом Напишите обработку ошибок, если юзер ввел неправильные данные (программа должна просить ввести число заново и сообщать об ошибке, но не прерываться)

def far(user_cels)
  user_cels.to_f * 9 / 5 + 32
end

def checker(user_cels)
  if user_cels =~ /\A[-+]?[0-9]*\.?[0-9]+\Z/
    puts "#{user_cels} градусов по цельсию будет равно #{far(user_cels)}"
  else
    puts 'Ошибка, введите число градусов по цельсию'
    user_cels = $stdin.gets
    checker(user_cels)
  end
end

puts 'Введите градусы по цельсию'
user_cels = $stdin.gets
checker(user_cels)
