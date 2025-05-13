saludo = "Hola mundo"

char = saludo.each_char do |char| 
    p char 
end

puts char

index = saludo.each_char.with_index do |char, indice| 
    p "#{ indice } - #{ char }" 
end

puts index

# iterar representacion en byte, imprime en formato byte 
byte = saludo.each_byte do |byte|
    p byte
end

puts byte

# Metodo chats, divide el string total y transforma en un arreglo
puts saludo.chars
puts saludo.length
puts saludo.size

# metodo count, cantidad de incidencias. Contar cuantas "o " hay
puts saludo.count("o")

# metodo reverse, invierte el orden del string
puts saludo.reverse

# Revisar si es lo mismo que el string, retorna un boolean 
puts saludo.eql?( saludo.reverse )

# metodo include, retorna un boolean
puts saludo.include?("Hola")
puts saludo.include?("perro")

# metodo remplazar caracteres 
colors = "Red, Red and Blue"
puts colors.gsub("Red", "Orange")

# Metodo sub, solo remplaza la primera  
puts colors.sub("Red", "Orange")

# Metodo split
puts saludo.split(",")

# Metodo strip, elimina espacios en blanco al principio y final 
puts "     Hola mundo   ".strip

# Metodo prepend
mundo = "Wordl"
puts mundo.prepend("Hello ")

# Metodo insert
puts mundo.insert( mundo.length, " inserted" )

# metodo concatenar
str1 = "Hello"
str2 = "Wordl"
puts str1 + str2
puts str1 << str2

str3 = "Hello wordl"

# Metodo slice
str3.slice(0, 2)

# Strings puede manejarse como un arreglo 
puts str3[2]
puts str3[6]

# Metdo para verificar si empieza con una letra o palabra, returna un booleam
puts saludo.start_with?("Hola")

# Metodo si es vacio
puts "".empty?
puts " ".empty?



