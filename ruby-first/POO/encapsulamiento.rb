#Encapsulamiento
class Perro
    def initialize( nombre, peso, edad )
        @nombre = nombre
        @peso = peso
        @edad = edad
    end

    #Leer el valor de la instancia nombre
    def nombre
        @nombre
    end

    #metodo para modificar variable de instancia 
    def nombre=( nombre_nuevo )
        @nombre = nombre_nuevo
    end

    #lectura de una variable de instancia
    def revisar_peso
        @peso
    end

    #Declaracion metodos privados
    private
     def peso
        @peso
     end

end

perro = Perro.new( "Kyon", 9, 7 )
puts perro.nombre

perro.nombre = "Milo"
puts perro.nombre

#valor privado 
#puts perro.peso

puts perro.revisar_peso


puts "---------------------------"


class PerroOtro 
    #crea metodof cambiar y leer variable
    attr_accessor :nombre # :edad, :peso  se pueden declarar mas
    #crea metodo para leer y no cambiar
    attr_reader :peso
    #crea metodo para cambiar pero no para leer
    attr_writer :edad

    def initialize( nombre, peso, edad )
        @nombre = nombre
        @peso = peso
        @edad = edad
    end
end


perroOther = PerroOtro.new( "Tita", 5, 8 )

puts perroOther.nombre
perroOther.nombre = "Braulia"
puts perroOther.nombre

# Leyendo con el metodo generado attr_reader
puts perroOther.peso

# Seteando el metodo edad por medio del metodo attr_writer
perroOther.edad = 6
p perroOther.inspect