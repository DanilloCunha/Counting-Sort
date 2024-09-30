def counting_sort(arr)
  # Passo 1: Encontra o valor máximo na lista
  max_val = arr.max
  
  # Passo 2: Cria um array de contagem e inicializa com zeros
  count = Array.new(max_val + 1, 0)

  # Passo 3: Conta a ocorrência de cada número na lista
  arr.each do |num|
    count[num] += 1
  end

  # Passo 4: Usa o array de contagem para ordenar a lista
  sorted_arr = []
  count.each_with_index do |freq, num|
    freq.times { sorted_arr << num }
  end

  sorted_arr
end

# Testa o algoritmo
lista = [4, 2, 2, 8, 3, 3, 1]
puts "Lista original: #{lista}"
puts "Lista ordenada: #{counting_sort(lista)}"
