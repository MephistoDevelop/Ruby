puts "Hello and welcome to the class of 7° degree ..."
puts "My name is Mr. MephistoDevelop,  ¿ what is your name ?"
nombre=gets.chomp # the method gets.chomp active the input from the consol
if nombre== nombre.capitalize #compair if the name it's in a capital letter print  choose your chair
  puts "please choose your chair "+nombre
else
  "¿ "+nombre +"?   do you want to say:   "+ nombre.capitalize #else the professor correct the student name with capital letter and ask to write correctly
  puts "you don't know ho to write your name correctly ?"
  respuesta=gets.chomp #save the answer from the student in a variable respuesta
end

if respuesta == "si"  #if the answer is ' si'  print it's ok
  puts "It's ok sitdown"
else #else the student is fired from the class
puts "Get away from my classrom !!!!  "
end