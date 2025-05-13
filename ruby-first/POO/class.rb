#Creacion en una clase en Ruby
class NombreClase

    def initialize( nombre )
        puts "Dentro del metodo constructor"
        # variables instancia
        @nombre = nombre
    end

    # metodos de instancia
    def saludo
        puts "hola mundo #{ @nombre }"
    end
end

# instanciar una clase
objecto = NombreClase.new("Sardina")

# Invocar metodo de un clase
objecto.saludo

# instanciar e invocar metodo
# NombreClase.new.saludo
