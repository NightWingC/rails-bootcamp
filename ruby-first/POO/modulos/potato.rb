module Ayto
    def potato
        "Potato"
    end
end

module Ahto
    def potato
        "Hoal mundo"
    end
end

class Potato
    include Ayto
    include Ahto
end

# ejecutara el ultimo modulo 
Potato.new.potato
