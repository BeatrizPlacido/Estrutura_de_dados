
class NumerosPrimos
  def vetor_generate(n)
    vetor = []
    n.times do
      vetor << rand(100)
    end
    return vetor
  end

  def primos(vetor)

  end
end

vetor = NumerosPrimos.new
vetor_uso = vetor.vetor_generate(10)
vetor.primos(vetor_uso)
