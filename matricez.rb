def foreach()
lenguajes = ['Inglés', 'Alemán', 'Ruby']

lenguajes.each do |item|
  puts '¡Me gusta ' + item + '!'
  puts '¿A ti?'
end

puts '¡Y vamos a escuchar esto para C++!'
puts '...'

end

def do_method
  5.times do
    puts 'Hip-Hip-Hooray!'
  end
end

def array
  alimentos = ["pizza" , "palomitas","hamburguesa"]
  puts alimentos.sort
end

def array_join
  alimentos = ['artichoke', 'brioche', 'caramel']

  puts alimentos
  puts
  puts alimentos.to_s
  puts
  puts alimentos.join(',') # this joins function return and array with the separator ' , '
  puts
  puts alimentos.join('  :)  ') + '  8)'

  200.times do
    puts []
  end
end

def push_pop
  arreglo=[]
  arreglo.push "cosas en arreglo"   #push method add and item at the tail of the array
  arreglo.push "nuevas palabras"

 # arreglo.pop  # pop quit the last element of the array and he tells who is called

  puts arreglo[0].to_s + arreglo[1].to_s + "Este es el contendido del arreglo"
  puts arreglo.last #this method are similar to pop because this method indicated what is the final of the tail
puts arreglo.length

puts arreglo.pop
puts arreglo
puts arreglo.length

end


push_pop

