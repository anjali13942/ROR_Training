puts " Enter a number: "
number = gets.to_i
count = 0
while count < number - 2
  print "*" * count
  print "*"
  print " " * (number - 2)
  puts "$"
  count += 1
end
puts "*" * number