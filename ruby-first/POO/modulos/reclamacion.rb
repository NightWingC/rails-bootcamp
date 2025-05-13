module Reclamacion
    def queja
        mensaje( "Nunca vi algo igual" )
    end

    def elogio
        mensaje( "Estoy complacido de las mejoras")
    end

    def mensaje( text ) 
      raise NotImplementedError, "#{ self.class }Incluyo el modulo. Reclamacion pero no se definio el metodo"
    end
end

class MisReclamos
    include Reclamacion

    def mensaje( text )
      puts text
    end
end

MisReclamos.new.queja
MisReclamos.new.elogio