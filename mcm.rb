#Método que computa el mínimo común múltiplo 

require "gcd"

def mcm(u, v)
   u,v = u.abs, v.abs  #abs es el valor absoluto, es decir, que son positivos
   val = gcd(u,v)
   u*v / val
end
