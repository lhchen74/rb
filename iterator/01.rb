#Ruby each 迭代器
array =[1,2,3,4,5]
array.each  do |i|
    puts i
end

#Ruby collect 迭代器
a =[6,7,8,9]
b =Array.new
b =a.collect{|x|x}
puts b

b =a.collect{|x| 10*x}
puts b