# encoding :UTF-8
# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.
#Autor: juan Anaya Ortiz.

require "singleton"

module ModeloQytetet
  class Dado
    include Singleton
    
    def initialize
      
    end
    
    def tirar
      valor = rand(6) + 1
      puts "Sacaste un #{valor}!"
      return valor
    end
    
    def to_s
      "Dado"
    end
  end
end