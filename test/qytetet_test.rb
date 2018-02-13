# encoding: utf-8
#Autor: juan Anaya Ortiz.

module ModeloQytetet
  require_relative '../tipo_sorpresa'
  require_relative '../sorpresa'
  require_relative '../tipo_casilla'
  require_relative '../tablero'
  require_relative '../jugador'
  require_relative '../qytetet'
  require_relative '../titulo_propiedad'
  require_relative '../casilla'

  class QytetetTest
    
    SEPARADOR = "\n_______________________________________________________" <<
                "_________________________________________________________\n\n\n\n\n"
              
    puts "\t\t\t\t" << "[RUBY]unittest de la clase Qytetet" << 
         "\n\n\n\n\n\n" 
       
    juego = Qytetet.instance
    
    jugadores = Array.new
    jugadores << "Jugador1"
    jugadores << "Jugador4"
    jugadores << "Jugador2"
    jugadores << "Juan"
    jugadores << "Jugador3"
    
    puts juego.inspect
       
       
  end
end