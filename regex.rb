puts("Enter email")
email=gets.chomp
puts("Enter phone number")
phone=gets.chomp
puts("Enter file name")
filename=gets.chomp
if email.match?('[_a-z0-9\.-]+@[a-z]+(\.[a-z]+)')
    puts 'Valid Email'
else
    puts 'Invalid Email'
end
if phone.match?('[0]?(91)?[789]\d{9}$')
    puts "Valid phone number"
else
puts "Invalid phone number"
end
if filename.match?('^.*\.(jpg|JPG|gif|GIF|doc|DOC|pdf|PDF|txt)$')
    puts "Valid file name"
else
puts "Invalid file name"
end