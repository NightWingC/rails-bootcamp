# metodo
def metodo
    1 + 1
end

puts metodo

def print_line 
    "_" * 20
end

puts print_line

# argumentos en un metodo
# mas de un parametro es recomendado usar parentesis
# def print_line2 ( length )
def print_line2 length 
    "_" * length
end

puts print_line2( 50 )
puts print_line2 10

# mas de un parametro
def print_line3 ( symbol, length ) 
    symbol * length
end

puts print_line3( '@' , 30 )

# Argumentos por defecto
def print_line4 ( symbol, length = 20 ) 
    symbol * length
end

puts print_line4( "?" )
puts print_line4( "?", 5 )


my_arr = [1,2,3,4,5]

def cambiar_arr ( arr )
    arr << 6
end

# Modifica el arreglo
# puts cambiar_arr( my_arr )

# no modifica el arreglo
puts cambiar_arr Marshal.load( Marshal.dump( my_arr ))

def suma ( a, b )
    suma = a + b 
    # no se usa return , siempre se returna la ultima linea
    # return suma
end

puts suma( 4, 4 )

# uso de return y se puede sin return tambien 
def otro_metodo( name )
    if name.eql?("Jose")
        return "Programador"
    else
        return "contador"
    end
end

puts otro_metodo( "Pepe" )

# keywords arguments
def say_hello ( name: "Pedro", age: 30 )
    "Hola #{ name } tu edad es #{ age }"
end

puts say_hello(  age: "32" , name: "Christian",)
puts say_hello()