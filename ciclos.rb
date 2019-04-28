def cuestionario
puts "¿Cual es tu Nombre ?"
nombre=gets.chomp
if nombre=="ines"
  puts "Veo grandes cosas en tu Futuro: "+ nombre
else
  puts "Diablos que horrible nombre !! ..."
end
end

def loop_while
  puts "Ingresa cualquier cosa , o tipea adios para salir.."
comando=gets.chomp
while comando != 'adios'
  puts comando
  comando=gets.chomp
end
puts "vuelve pronto"
end

def if_with_and
  puts 'Hola, ¿cuál es tu nombre?'
  nombre = gets.chomp
  puts 'Hola, ' + nombre + '.'
  if (nombre ==  'sandra ' or nombre == 'monica')
    puts '¡Qué nombre tan hermoso!'
  end
end

def menu()
puts "Seleciona la opcion del menu: 1 , 2 o 3"
menu=gets.chomp #select the option from menu if menu == 1 do the while loop

if menu== '1'  # repeat the word
  loop_while
  puts "Do you want to repeat the menu ?  type 1 for 'YES' or 2 for 'No' "
  answer=gets.chomp
end
  if answer == '1'
    menu
  end
end
if menu=='2' # else if menu == 2 run the name program
  cuestionario

end
if menu == '3' # beautifull name program
if_with_and
end

end

menu()