#1 - Faça um programa que imprima todas as letras do alfabeto (Sem digitar todas as letras)
alfabeto =  [
  'a', 
  'b', 
  'c',
  'd',
  'e',
  'f',
  'g',
  'h',
  'i',
  'j',
  'k',
  'l', 
  'm', 
  'n',
  'o', 
  'p',
  'q',
  'r',
  's', 
  't', 
  'u', 
  'v', 
  'w',
  'x',
  'y',
  'z'
]

def print_alfabeto(alfabeto)
  alfabeto.each do |letra|
    puts letra
  end
end

print_alfabeto(alfabeto)