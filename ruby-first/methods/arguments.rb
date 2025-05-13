# Argumentos de longitud variable

def some_func ( a, *others )
    puts "Valor de variable a es #{ a }"
    puts "Valor de otros es #{ others }"
    puts "Tipo de dato es #{ others.class }"
end

puts some_func( 1, "a", "b", "c" )

def other_func( first, second )
    puts "Tu primer argumento es: #{ first }"
    puts "Tu segundo argumento es: #{ second }"
    puts second.class
end

hash = { a: 1, b: 2, c: 3}
puts other_func( 30, hash )

puts other_func( 30, { a: 1, b: 2, c: 3} )
puts other_func( 30, a: 1, b: 2, c: 3 )

# El segundo argumento se declara como Hash
def other_func2( first, **second )
    puts "Tu primer argumento es: #{ first }"
    puts "Tu segundo argumento es: #{ second }"
    puts second.class
end

puts other_func2( 30, hash ) 
puts other_func2( 30, "hola" ) 
# wrong number of arguments (given 2, expected 1) (ArgumentError)