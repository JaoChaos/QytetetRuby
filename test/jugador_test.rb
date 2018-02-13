# encoding: utf-8
#Autor: Juan Anaya Ortiz.

module ModeloQytetet
  require_relative '../tipo_sorpresa'
  require_relative '../tablero'
  require_relative '../jugador'
  require_relative '../sorpresa'
  require_relative '../tipo_casilla'
  require_relative '../titulo_propiedad'
  require_relative '../casilla'

  
  class JugadorTest
    j = Jugador.new()
    puts j.obtenerCapital
   
    puts "Hello!!"
    
    
  end
end