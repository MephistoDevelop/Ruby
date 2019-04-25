class Anfitrion
  attr_accessor :nombres
   def initialize(nombre ="ines",nombres = ["Alberto", "Beatriz", "Carlos",
    "David", "Ernesto"])
           @nombre=nombre
           @nombres = nombres
   end

   def decir_hola
    if @nombres.nil?
      puts "..."
    elsif @nombres.respond_to?("each")
      # @nombres es una lista de algún tipo,
      # ¡así que podemos iterar!
      @nombres.each do |nombre|
        puts "Hola #{nombre}"
      end
    else
      puts "Hola #{@nombres}"
    end
  end

  def metodo_for
    @nombres.each do |nombre|
      puts "Hola #{nombre}"
    end
  end

   def decir_adios
  puts "Adios #{@nombre},  vuelve pronto."
  end

end
a = Anfitrion.new("juan")
a.decir_hola
a.decir_adios
a.metodo_for