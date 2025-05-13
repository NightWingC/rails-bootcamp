# Crear un struc
Persona = Struc.new :nombre, :edad 

persona1 = Persona.new
persona1.nombre = "Milo"
persona1.edad = 4

puts "Hola, soy #{ persona1.nombre }, tengo #{ persona1.edad }"

# Inicializando atributos con el constructor del Struc
persona2 = Persona.new("Tita", 8)
puts "Hola, soy #{ persona2.nombre }, tengo #{ persona2.edad }"

Person Struc.new :nombre, :edad do
    # Crear metodo dentro de struc
    def sobre_mi
        puts "Hola, soy #{ self.nombre }, tengo #{ self.edad }"
    end
end

persona3 = Person.new("Nara", 7)
persona3.sobre_mi

# no se permiten crear atributos 
Persona4 = Struc.new :nombre, :edad 
persona4 = Persona4.new("Tita", 8)
persona4.profesion = "Ingeniero"