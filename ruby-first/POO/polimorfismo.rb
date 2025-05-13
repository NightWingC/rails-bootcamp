# Polimorfismo
class Figure
    def draw
        raise NotImplementedError
    end 
end

class Circle < Figure
    attr_reader :radius

    def raw
        puts "Dibujar circulo"
    end
end

class Square < Figure
    attr_accessor :base, :height
    def draw
        puts "Dibujar un cuadrado"
    end
end

class Triangule < Figure
    attr_accessor :base, :height
    def draw 
        puts "Dibujar un triangulo"
    end
end

# metodo 
def draw_figures( figura, x, y )
    set_coordinates( x, y )
    figure.draw
end

draw_figures( Circle.new, 12, 12 )

# Ejemplo de pilimorfismo
[ Circle.new, Circle.new, Circle.new, Sqare.new, Triangule.new ].each do | figure |
    draw_figures( x, y. figure )
end