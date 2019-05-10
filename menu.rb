#hash with content from a movie  with an a  rating
movies = {
  :pineaple => 5
 }
puts "Elige la opcion de tu menu peliculas ?, para ingresar escribe la opcion a elegir
add:   ---> Agrega una pelicula y un rating
update --> Modifica un registro de pelicula y rating
delete --> Eliminar un registro de pelicula y su rating
display --> Muestra las paliculas y su rating
"
choice = gets.chomp

case choice # switch case  if the choice its add | update | delete | display do function
 when "add"
 puts "Selecciona el titulo de tu pelicula ?"
   title = gets.chomp
 if movies[title.to_sym].nil?
 puts "La pelicula existe..."
 else
    puts "Cual es el rating de la movie ?"
 rating = gets.chomp
 movies[title.to_sym]=rating.to_i
 puts "la pelicula: #{title} ha sido aadida con ranking : #{rating}"
 end

 when "update"
   puts "Cual es el nombre de la pelicula ?"
    title=gets.chomp
 if movies[title.to_sym].nil?
   puts "Error la pelicula no existe"
 else
     puts "Cual es el rating de la movie ?"
 rating = gets.chomp
 movies[title.to_sym]=rating.to_i
 puts "la pelicula: #{title} ha sido actualizada con ranking : #{rating}"

 end

 when "display"
 movies.each {|movie,rating| puts "#{movie}: #{rating}"}

 when "delete"
 puts "Cual pelicula esea eliminar ?"
 title=gets.chomp
 if movies[title.to_sym].nil?
   puts "Error no hay pelicula a eliminar..."
 else
   movies.delete(title.to_sym)
   puts "Pelicula: #{title} eliminada..."
 end 
else
 "Error!"
end