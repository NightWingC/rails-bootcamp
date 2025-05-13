
# Saber si es par
# puts 120.even?

# Saber si es impar 
# puts 3.odd?

# Arreglos, seleccionar solo los pares
# puts [1,2,3,4].select{ |num| num.even? }

# Arreglos, seleccionar solo los pares
# puts [1,2,3,4].select{ |num| num.odd? }

# Valor mas proximo hacia arriba y floor es haci abajo
puts 8.3.ceil
puts 8.3.floor

# Siguente numero 
puts 15.next
# secuencia
puts 15.next.next

# numero anterior 
puts 15.pred

# Uso de simbolos 
puts -16.pred
puts -16.next

# conversion en string 
puts 16.to_s.class

# Conversion a valor flotante 
puts 16.to_f

# comparación 
puts 1 == 1
# Objeto del boolean
puts (1 == 1).class

# diferencia
puts 1 != 2
puts 1 != 1

# operadores logicos
puts 2 > 3
puts 2 < 3
puts 2 <= 3
puts 2 >= 3

# comparar igual en su valor y su tipo 
puts 2 === 3

puts String === "Hola mundo"
