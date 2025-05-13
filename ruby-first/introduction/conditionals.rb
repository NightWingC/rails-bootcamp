if true
    puts "hola mundo"
end

if true 
    puts "hola mundo"
else 
    puts "No, hola mundo"
end

if false 
    puts "hola mundo"
else 
    puts "No, hola mundo"
end

a,b,c = 3,6,7

# And puede ser declarado and o &&
if a < b and c <= b
    puts "a es menor que b"
else 
    puts "b es mayor que a"
end 

lenguaje = "ruby"
puts "Me encanta programar" if lenguaje == "ruby"

class MiClase 
    def metodo( nombre )
        puts "Esta en la lista" if ["Joaquin", "Perez", "Artes"].include?( nombre )
    end
end

objeto = MiClase.new
objeto.metodo( "Perez" )

nombre = "Pepe"
if nombre === "Ignacio"
    puts "Ignacio"
elsif nombre == "Arturo"
    puts "Arturo"
else 
    puts nombre 
end

# unless, si no se cumple la condición
unless nombre == "Jose"
    puts "El nombre es #{ nombre }"
end

a = 5
case a
when 1
    puts "cuando el valor es 1"
when 2
    puts "cuando el valor es 2"
when 3 
    puts "cuando el valor es 3"
when 4
    puts "cuando el valor es 4"
when 5
    puts "cuando el valor es 5"
else 
    puts "ninguna condicion se cumple"
end

# 
a, b = 3, 5
max = a > b ? a : b
puts max

max = a < b ? a : b
puts max


