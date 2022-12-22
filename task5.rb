# 5) Найдите вхождения каждого элемента в массив
# [nil, 2, :foo, “bar”, “foo”, “apple”, “orange”, :orange, 45,  nil, :foo, :bar, 25, 45, :apple, “bar”, nil]
# чтобы на выходе получился Hash по типу { элемент => количество вхождений в массив}

arr = [nil, 2, :foo, 'bar', 'foo', 'apple', 'orange', :orange, 45, nil, :foo, :bar, 25, 45, :apple, 'bar', nil]
hash = {}

arr.each do |i|
  hash[i] = arr.count(i)
end

puts hash.to_s
