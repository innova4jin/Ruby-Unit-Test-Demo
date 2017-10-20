require_relative "preg2"
require "test/unit"
 
#----------Zona de Test------------------
class TestPreg2 < Test::Unit::TestCase


#--- zona de test ----
@@pesos1 = [12.12,13.29,10.21,11.23]
@@pesos2 = [12.36,11.50,14.11,13.73]
@@pesos3 = [12.82,11.87,15.22,8.33]

@@sexos1 = ['H','H','H','H']
@@sexos2 = ['M','M','M','H']
@@sexos3 = ['H','H','H','M']

@@nombres1 = ["Mario","Jarvis","Luis","Carlos"]
@@nombres2 = ["Roxana","Genoveva","Itziar","Tony"]
@@nombres3 = ["Howard","Paco","Victor","Peggy"]
  

def test_calcularMediaPeso
  puts @@pesos1
  assert_equal(11.71, calcularMediaPeso(@@pesos1)) 
  assert_equal(12.93, calcularMediaPeso(@@pesos2)) 
  assert_equal(12.06, calcularMediaPeso(@@pesos3)) 
end

def test_cantNinasSobrepeso
  assert_equal(0, cantNinasSobrepeso(@@pesos1, @@sexos1)) 
  assert_equal(3, cantNinasSobrepeso(@@pesos2, @@sexos2)) 
  assert_equal(0, cantNinasSobrepeso(@@pesos3, @@sexos3)) 
end

def test_nombresNinosBajoPeso
  assert_equal(["Mario","Luis","Carlos"], nombresNinosBajoPeso(@@pesos1, @@sexos1, @@nombres1))
  assert_equal([], nombresNinosBajoPeso(@@pesos2, @@sexos2, @@nombres2))
  assert_equal(["Howard","Paco"], nombresNinosBajoPeso(@@pesos3, @@sexos3, @@nombres3))
end

end