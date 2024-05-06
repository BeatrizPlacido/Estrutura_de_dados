vetor = [50, 54, 80, 62, 74, 99, 61, 52, 64, 89, 58]

def encontrar_maior(vetor)
  return nil if vetor.empty?

  maior = vetor[0]
  i = 0

  vetor.each_with_index do |item, index|
    if item > maior
      maior = vetor[index]
      i = index
      puts 
    end
  end

  return i
end


def ordenar_selecao(vetor)
  aux = 0
  ultimo = -1

  for item in vetor
    print "#{vetor} \n"

    posicao_maior = encontrar_maior(vetor)
    puts posicao_maior

    if vetor[posicao_maior] == vetor[ultimo]
      puts "posicao_maior: #{posicao_maior} \n ultimo: #{vetor[ultimo]}"
      next
    end

    aux = vetor[ultimo]
    vetor[ultimo] = vetor[posicao_maior]

    vetor[posicao_maior] = aux

    ultimo -= 1
  end
end


ordenar_selecao(vetor)
