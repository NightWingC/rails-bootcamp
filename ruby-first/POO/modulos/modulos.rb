# Creacion de un modulo en ruby
module ModuleDeEjemplo 
    # Constante
    PI = 3.1416

    # Clases
    class ClaseDeModulo
    end

    # Métodos
    def metodo_en_modulo
    end

    # Otros modulos
    module OtroModulo
    end
end

module Matematicas
    PI = 3.1416
    
    def self.calcule_area( *values )
    end

    def otro_metodo
    end

    module Algebra
        class Baldor
        end
    end
end

Matematicas::PI
Matematicas.calcule_area([])
Matematicas::Algebra::Baldor.new