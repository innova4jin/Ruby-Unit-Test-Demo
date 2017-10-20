def calcularMediaPeso(pesos)

  suma = 0.0
  for i in 0..pesos.size-1
    peso = pesos[i]
    suma = suma + peso
  end
  media = suma/pesos.size
  return media.round(2)
end

def cantNinasSobrepeso(pesos, sexos)
  cont = 0.0
  for i in 0..pesos.size-1
    peso = pesos[i]
    if(peso>10&&sexos[i]=='M')
      cont = cont + 1
    end
  end
  return cont
end

def nombresNinosBajoPeso(pesos, sexos, nombres)
  rpta = []
  for i in 0..pesos.size-1
    peso = pesos[i]
    if(peso<13&&sexos[i]=='H')
      rpta.push(nombres[i])
    end
  end
  return rpta
end
