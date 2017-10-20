require_relative "preg1"
require "test/unit"
 
#----------Zona de Test------------------
class TestPreg1 < Test::Unit::TestCase

def test_vocalQueMasSeRepite
  assert_equal("a", vocalQueMasSeRepite( ["Teresa","Yessenia","Veronica","Evangelina","Alonso","Martin"]))
  assert_equal("e", vocalQueMasSeRepite( ["Edelmira","Edgard","Ernesto","Eustaquio","Elena"]))
  assert_equal("i", vocalQueMasSeRepite( ["Iago","Ian","Icaro","Idoia","Ifigenio"]))
  assert_equal("o", vocalQueMasSeRepite( ["Obdulio","Obadias","Octavio","Octaviano","Odeberto"]))
  assert_equal("u", vocalQueMasSeRepite( ["Ubaldo","Uldarico","Ulfrido","Ulises","Ursula"]))

end

def test_obtenerPosicionDeElementoMayor    
  assert_equal(4, obtenerPosicionDeElementoMayor( [0,1,2,3,4] ) ) 
  assert_equal(3, obtenerPosicionDeElementoMayor( [9,8,7,10,1] ) ) 
  assert_equal(5, obtenerPosicionDeElementoMayor( [2,4,6,8,11,20,3,5,7,9] ) ) 
end


end
