puts :simbolo.class

# diferentes object id y se guardan en diferente cantidad de memoria
puts "hola".object_id
puts "hola".object_id
puts "hola".object_id

# hash, a pesar de ser lo mismo ocupan cantidad de memoria diferente
{ 'Hola' => 'Adios'}
{ 'Hola' => 'Adios'}
{ 'Hola' => 'Adios'}
{ 'Hola' => 'Adios'}

# los simbolos, solo genera una sola cantidad de memoria sin importar cuantas veces lo llames
puts :hola.object_id
puts :hola.object_id
puts :hola.object_id

hash = { 'Hola' => 'Adios' }
puts hash['hola']

hash_symbol = { :hola => 'adios' }
puts hash_symbol[ :hola ]

hash2_symbol = { :hola => 'lo que sea' }
puts hash2_symbol[ :hola ]

# nomenglatura nueva

hash_symbol_new = { hola: "nueva nomenglatura"}
# puts hash_symbol_new[ hola: ]

# otros metodos
{ a: 1, b: 2, c: 3, d: nil, h: nil }

# quitar los nulos, no modifica el hash hace una copia
{ a: 1, b: 2, c: 3, d: nil, h: nil }.compact

# return arreglo con los valores
{ a: 1, b: 2, c: 3, d: nil, h: nil }.values

# Devuelve las claves
{ a: 1, b: 2, c: 3, d: nil, h: nil }.keys

# 
puts { a: 1, b: 2, c: 3 }.transform_values{ | value | value * value }
