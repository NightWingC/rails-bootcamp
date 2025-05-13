# También son coleccion de datos 
puts (1..10).class
puts ( 1..10 ).each{ | numero | puts numero }

# convertir en arreglo
( 1..10 ).to_a

# puts ("a".."z").to_a

puts ("bad".."bag").to_a
rango = -1..4
puts rango.class 
puts rango.to_a
puts rango.min
puts rango.max

puntuacion = 78
calificacion = case puntuacion 
    when 80..100 
        'A'
    when 60..79
        'B'
    when 40..59
        'C'
    when 0..39
        'D'
    else 
        'No esta en el rango'
    end

puts calificacion

# otra manera de declarar los rangos
( 1..10 ).to_a
# del 1 al 9
( 1...10 ).to_a

edad = 20
madurez = case edad 
when (0..18)
    'Eres menos de edad'
when (19..)
    'Eres mayor de edad'
end
puts madurez

# metodo in en la version 3 
puts 4 in ( ..10 )

edad = 27 
if edad in ..17 
    'You are a child'
end
