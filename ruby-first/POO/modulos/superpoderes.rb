module SuperPoderes

    def volar
      "volando.."
    end

    def saltar( objeto )
      "Saltando #{ objeto } de un brinco"
    end

    def superheroe
        true
    end

    def nombre_superheroe
      "Superman"
    end
end

class Persona 
    # Incluirlos como metodos de clase
    # extend SuperPoderes
    attr_reader :nombre, :edad, :ocupacion

    def initialize( nombre, edad, ocupacion )
      @nombre, @edad, @ocupacion = nombre, edad, ocupacion
    end

    def superheroe?
      false
    end
end


# Otra manera de icluirlo
Persona.extend( SuperPoderes )
puts Persona.volar

# Aplicar super poderes a la persona comun
clark = Persona.new("Clark Ken", 30, "Reportero")
clark.extend( SuperPoderes )
puts clark.nombre_superheroe
puts clark.volar
puts clark.superheroe?
