# metodo que se llama a si mismo 

# Sacar el factorial del un numero
def factorial( number )
    return 1 if number == 1
    return number * factorial( number - 1 )
end

puts factorial( 1 ) # print 1
puts factorial( 4 ) # print 24

=begin
    2 * factorial( 1 )
    dado que factorial de 1 = 1 , ebntonces esto
    quedari en: 
    2 * 1 = 1
=end

=begin
    3 * factorial ( 2 )
        factorial( 2 )
            2 * factorial( 1 )
                2 * 1
            devuelve 2
        3 * 2 = 6   
=end
