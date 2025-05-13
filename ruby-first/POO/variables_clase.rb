class Box 

    #Constante de clase
    BOX_COMPANY = 'Miguel'
    #Crear variable de clase 
    @@count = 0

    def initialize
        @@count += 1
    end

    #Metodos de clase
    def self.printCount
        puts  "Count: #{ @@count }"
    end

    #Otra forma de declarar metodo de clase
    class << self
        def printCount2
            puts "Otro medodo de clase"
        end
    end
end

Box.new
Box.new
Box.new

Box.printCount

puts Box::BOX_COMPANY

Box.printCount2