for i in 1..100
result = ""
if i == 1 || i < 9 && i < 20
    result << "Bang"
end
if i % 3 == 0
    result << "Fizz"
end
if i % 5 == 0
	result << "Buzz"
end
if (i % 3 != 0) && (i % 5 !=0) && (i >= 20)
    print "#{i}"
end
    puts "#{result}"
end