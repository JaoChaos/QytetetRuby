#encoding: utf-8
#
# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.
# Autor: Juan Anaya Ortiz.

require_relative 'tipo_sorpresa'
require_relative 'sorpresa'
require_relative 'tipo_casilla'
require_relative 'titulo_propiedad'
require_relative 'casilla'
require_relative 'tablero'

module ModeloQytetet
  class PruebaQytetet
    
    def PruebaQytetet.inicializar_sorpresas()
      @@mazo = Array.new # Atributo de clase
      @@mazo << Sorpresa.new("Texto1", TipoSorpresa::IRACASILLA, 1)
      @@mazo << Sorpresa.new("Texto2", TipoSorpresa::PAGARCOBRAR, 2)
      @@mazo << Sorpresa.new("Texto3", TipoSorpresa::PORCASAHOTEL, 3)
      @@mazo << Sorpresa.new("Texto4", TipoSorpresa::PORJUGADOR, 4)
      @@mazo << Sorpresa.new("Texto5", TipoSorpresa::SALIRCARCEL, 5)
      @@mazo << Sorpresa.new("Texto6", TipoSorpresa::IRACASILLA, 6)
      @@mazo << Sorpresa.new("Texto7", TipoSorpresa::PAGARCOBRAR, 7)
      @@mazo << Sorpresa.new("Texto8", TipoSorpresa::PORCASAHOTEL, 8)
      @@mazo << Sorpresa.new("Texto9", TipoSorpresa::PORJUGADOR, 9)
      @@mazo << Sorpresa.new("Texto10", TipoSorpresa::SALIRCARCEL, 10)
    end
    
    def PruebaQytetet.devolverMayorCero()
      vector = Array.new
      @@mazo.each do |carta|
        if carta.valor > 0
          vector << carta
        end
      end
      return vector
    end
    
    def PruebaQytetet.devolverIrACasilla()
      vector = Array.new
      @@mazo.each do |carta|  
        if carta.tipo == TipoSorpresa::IRACASILLA
          vector << carta
        end
      end
      return vector
    end
    
    def PruebaQytetet.devolverTipo(tipo)
      vector = Array.new
      @@mazo.each do |carta|
        if carta.tipo == tipo
          vector << carta
        end
      end
      return vector
    end
    
    def self.metodo_1
      surprise_mayor_cero = Array.new
      for i in 0..@@mazo.length do
        a = @@mazo[i]
        puts a
        if @@mazo[i]. > 0
          surprise_mayor_cero.push(a) 
        end
      end
        puts "Sacamos" << surprise_mayor_cero
        return surprise_mayor_cero
    end
    
    
    def PruebaQytetet.main
      inicializar_sorpresas()
      puts "Cartas del mazo que son mayores que cero: "
      puts devolverMayorCero() << "\n"
 
      puts "Cartas del tipo Ir a Casilla: "
      puts devolverIrACasilla() << "\n"
  
      puts "Cartas del tipo Cárcel: "
      puts devolverTipo(TipoSorpresa::SALIRCARCEL)
      

      b = TituloPropiedad.new("Calle Periodistas", 50,0.2, 200, 250)
      puts  b.to_s + "\n\n"
      
      c = Casilla.new(0, 100, nil, b)
      d = Casilla.new(1, 100, TipoCasilla::CALLE, nil)
      
      puts "Casilla  " + c.to_s
      puts "Casilla 2  " + d.to_s
      
      t = Tablero.new
      puts t.to_s
    end
  end
  
  PruebaQytetet.main
  
  
  
  
    
end