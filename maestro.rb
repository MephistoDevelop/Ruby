puts "Hello and welcome to the class of 7° degree ..."
puts "My name is Mr. MephistoDevelop,  ¿ what is your name ?"
nombre=gets.chomp
if nombre== nombre.capitalize
  puts "please choose your chair "+nombre
else
  "¿ "+nombre +"?   do you want to say:   "+ nombre.capitalize
  puts "you don't know ho to write your name correctly ?"
  respuesta=gets.chomp
end

if respuesta == "si"
  puts "It's ok sitdown"
else
puts "Get away from my classrom !!!!  "
end