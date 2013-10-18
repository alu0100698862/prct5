# *** practica 5 ***
# *** Carlota Lazaro Hernandez ***
# *** Lenguajes y paradigmas de programacion ***

require "./racional.rb"
require "test/unit"

class TestFraccion < Test::Unit::TestCase
 
  def setup   # crear elementos
    @fraccion1 = Fraccion.new(1,2)   # primera fraccion
    @fraccion2 = Fraccion.new(3,4)   #segunda fraccion
  end
  
  def tear_down
     # nothing
  end
  
  def test_simple 
    assert_equal("1/2", @fraccion1.to_s)
    assert_equal("3/4", @fraccion2.to_s)
    assert_equal("5/4", @fraccion1.suma(@fraccion2).to_s)
    assert_equal("-1/4", @fraccion1.resta(@fraccion2).to_s)
    assert_equal("3/8", @fraccion1.multiplicacion(@fraccion2).to_s)
    assert_equal("4/6", @fraccion1.division(@fraccion2).to_s)
    
   end
   
  def test_typecheck
    assert_raise(RuntimeError){Fraccion.new(1,"a")}   #para comprobar el error 
  end
   
  def test_failure    
    assert_equal("6/0",@fraccion1.suma(@fraccion2).to_s)    #fallo al dar un resultado incorrecto
  end
  
end
