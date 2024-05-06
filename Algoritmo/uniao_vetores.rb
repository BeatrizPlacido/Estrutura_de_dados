#3 - Faça uma função que receba 2 vetores ordenados, denominados A e B. Esta função deve retornar em A a união ordenada dos dois vetores
a = [2,5,6,7,9]
b = [1,3,4,8,10]

a.each do |item|
  cont = 0
  if item < b.index[cont]
