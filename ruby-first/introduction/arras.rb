array = []
puts array;
puts array.class

# se puede agregar cualquier tipo de datao
array = [1,2,3,4, 'hola', 'mundo', Time.new]
# array.clear ( limbiar array)
# array.push("Hola")
# array << Time.now
# array.push(5,6,7)

# iteracion
i = array.length
i.times do | num |
    p array[ num ] 
end

# metodp each
array.each do | elem |
    p elem
end

# with index
array.each_with_index do | elem, index |
    p "#{ index } , #{ elem }"
end

# loop for
for element in array
    puts element
end

arr = ["Hola", "mundo"]
arr .join("")
arr.join(" ")
arr.join(" \n")

nombres = ["pepe", "pedro", "san", "moni"]
nombres.join(", ")
nombres.join(", ").class

# Pilas y colas
puts nombres.push("Oyuki")

# Sacar el ultimo elemento
nombre_extraido = nombres.pop
puts nombre_extraido

puts nombres[1]

# metodo pop saca el ultimo elemento o los que le indiques 
nombres.pop(2)

# operaciones
nums = [1,2,3,4,5,6,7,8,9]

# numero maximo, funciona con fechas y letas
puts nums.max

# numero minimo, funciona con fechas y letas 
puts nums.min


# Extraer de array de arrays
doble = ["Javier", [7,8,9, ["Ruby", "Python"]]]
puts doble.dig(1,3,0)

# concatenar arreglos
puts [1,2,3,4,5] + [6,7,8]

# quitar elementos donde hay concidencia 
puts [1,2,3,4,5] - [3, 4]

# operacion de elementos
cricket = ["Budha", "Karma", "Tian", "Karsman"]
beisball = ["Lopez", "Samarogo", "Holyday", "Hesse", "Budha", "Karma",]

# Verifica y muestra las coincidencias de elementos
puts cricket & beisball 

puts beisball | cricket

nombres2 = ["pepe", "pedro", "san", "moni", "Samarogo", "Holyday", "Hesse",]
puts nombres2.empty?
puts nombres2.include?("pepe")
puts nombres2.include?("jose")
puts nombres2.first
puts nombres2.first(2)
puts nombres2.last
puts nombres2.last(3)


# ---------------------------------------------
# ---------------------------------------------
# ---------------------------------------------

# null es nil
a = [ 1,2,3,4, "Hola", "mundo", nil, nil, nil, nil, nil, "hola", 5, 6, 7 ]
# Quita los elementos que sean nullos, hace copia sin nil 
puts a.compact 

# metodos ban
# metodos no modifican el arreglo a menos que el metodo tenga ! 
a.compact!

# collect y map
x = [1,2,3]
multi = x.collect{ |elemt| elemt * 2 }
puts multi
puts x

# bloques pueden ser usados con llaves 
# {} (normalmente se usa para una sola linea) o con 
# do end ( normalmente se usa en varias lineas )

multi_map = x.map{ |elemt| elemt * 2 }
puts multi_map

puts "----"
# SELECT 
z = [1,2,3,4,5 ]
pares = a.select do | elem |
    elem % 2 == 0
end

puts pares 

puts "---"
puts z.select{ | elem | elem.even? }
impares = z.select{ | elem | elem.odd? }
puts impares

# Si modifica el array  keep_if
z.keep_if{ | num | num.odd? }
puts z

# 
r = ['laura', 'nora', 'micky', 'ruby']
result = r.reject { | name | name.start_with?("r")}
puts result

result = r.delete_if { | name | name.start_with?("r")}
puts result
puts r



