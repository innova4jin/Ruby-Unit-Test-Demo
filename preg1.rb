def vocalQueMasSeRepite(listado)
	contador = [0,0,0,0,0]

	for nombre in listado

		pos = 0
		while pos < nombre.length()
			# Obtener una letra del nombre
			letra = nombre[pos]
			# Cambiar a minuscula
			#letra = letra.downcase();
			pos = pos + 1
			case letra
			when 'a','A'
				contador[0] = contador[0] + 1
			when 'e', 'E'
				contador[1] = contador[1] + 1
			when 'i', 'I'
				contador[2] = contador[2] + 1
			when 'o', 'O'
				contador[3] = contador[3] + 1
			when 'u', 'U'
				contador[4] = contador[4] + 1
			end
		end # fin del while
	# Fin del for
	end

	mayor = obtenerPosicionDeElementoMayor( contador )

    case mayor
    when 0
    	vocal = 'a'
    when 1
    	vocal = 'e'
    when 2
    	vocal = 'i'
    when 3
    	vocal = 'o'
    when 4
    	vocal = 'u'
	end


	return vocal
end
    
def obtenerPosicionDeElementoMayor( contador )
	mayor = -1
	posicion = -1

	for i in 0...contador.length()
		if contador[i] > mayor
			mayor = contador[i]
			posicion = i
		end
	end
    
	return posicion
end

