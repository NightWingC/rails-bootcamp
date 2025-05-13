# impresion en pantalla
# puts "Hola mundo"

class Saludo 
    def metodo_saludar(nombre)
        "Hola #{ nombre }"
    end
end

=begin
objeto = Saludo.new
puts objeto.metodo_saludar('javier')

puts Saludo.new.metodo_saludar('Christian')
=end
