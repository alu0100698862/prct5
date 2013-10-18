#  ***Practica 5*** 
# ***Carlota Lazaro Hernandez***
# ***Lenguajes y paradigmas de programacion***

# Fichero en el que se implementa la clase para crear objetos racionales

require "gcd"
require "mcm"

class Fraccion
   attr_reader :p, :q

  
  def initialize(p, q)   #Metodo que llama al contructor. Si el denominador es 0 se generara una excepcion
    raise RuntimeError unless p.is_a? Numeric and q.is_a? Numeric
    @p = p
    if q == 0
      raise 'El denominador no puede ser 0'
      @q = 1
    else
      @q = q
    end                
  end
  
  
  def to_s  #Pasa a string
    
    "#{@p}/#{@q}"
    
  end
  
  
  def suma(other)     #metodo para sumar las fracciones
    
    denominador=mcm(@q, other.q)  #el denominador comun

    p1 = (denominador/@q)*@p
    p2 = (denominador/other.q)*other.p

    Fraccion.new(p1+p2,denominador)
    
  end
  
 
  def resta(other)     #metodo para sumar las fracciones
    
    denominador = mcm(@q, other.q)

    p1 =(denominador/@q)*@p
    p2 = (denominador/other.q)*other.p

    Fraccion.new(p1-p2, denominador)                                       
    
  end
  
  
  def multiplicacion(other) #metodo que multiplica las fracciones
    
    Fraccion.new(@p*other.p, @q*other.q)
    
  end

  # Division de fracciones
  def division(other)
    
    Fraccion.new(@p*other.q, @q*other.p)
    
  end
  
end