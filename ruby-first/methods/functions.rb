# functions en version 3
# def double ( num ) = num * 2

# double(9)

# reenviar argumentos 
def print_s( value )
    puts value
end

def decorate( value )
    puts "#" * 50
    print_s( value )
    puts "#" * 50
end

decorate("Hola mundo")


# 
def resto_argumentos( *args )
    puts "Dentro de resto de argumentos"
    puts args
end

def primer_argumento( a, *others )
    puts "Primer argumento y reenviar el resto"
    puts a
    puts resto_argumentos( others )
end
primer_argumento( 1, 2, 3, 4, 5 )

=begin
Más sobre el reenvío de argumentos
Mas sobre el reenvío de argumentos
Como vimos en el video anterior, es muy sencillo reenviar argumentos en Ruby utilizando el operador spread ... . Este artículo solamente pretende poner algunos otros ejemplos que van más acordes con su uso en la vida real. Toma en cuenta que estos ejemplos pueden contener algunos temas que no hemos visto hasta ahora, pero me pareció importante incluirlos para que el tema sea más relevante.



Es muy común en Ruby (y en otros lenguajes) delegar acciones a diferentes capas. Por ejemplo, en un controlador podemos recibir parámetros pero delegamos esos parámetros a una capa de servicio que en efecto haga las funciones requeridas por el cliente.

Veamos un ejemplo:



class Exporter
  def self.run(*args, **kwargs, &blk)
    new(*args, **kwargs, &blk).execute
  end
 
  def initialize(*args, **kwargs, &blk)
  end
 
  def execute
  end
 
  private_class_method :new
end
 
Exporter.run(1, 2, 3, foo: :bar)


En la siguiente sección veremos más sobre clases y POO en general en Ruby pero por ahora basta saber que initialize es el método constructor de la clase y que es llamado cada ocasión que se crea un objeto. En el patrón que aquí se usa, se evita la creación directa de un objeto desde fuera de la clase, por ello usamos private_class_method :new

Tomando esto en cuenta, vemos que la línea Exporter.run(1, 2, 3, foo: :bar) pasa una serie de argumentos al método run que a su vez se los pasa a initialize (por medio de new(*args, **kwargs, &blk) ) lo que hace que este reenvío sea redundante e impacte en la legibilidad y lectura del código. De hecho, en algunos patrones de arquitectura, incluso se requerirá un tercer reenvío de argumentos y la cosa se pondría peor.

Aquí es donde el operador épsilon entra en juego. Reescribamos la clase anterior:

class Exporter
  def self.run(...)
    new(...).execute
  end
 
  def initialize(*args, **kwargs, &blk)
    p args, kwargs
  end
 
  def execute
  end
 
  private_class_method :new
end
 
Exporter.run(1, 2, 3, foo: :bar) # => args = [1,2,3], kwargs = {foo: :bar}


En este nuevo ejemplo, todos los argumentos pasados a run, son reenviados new. Como new llama a initialize, entonces initialize recibe todos los argumentos pasados en la llamada al método Exporter.run



Ampliemos ligeramente el ejemplo:



class Exporter
  def self.run(type, ...)
    CSVExporter.new(...).execute if type == :csv
    PDFExporter.new(...).execute if type == :pdf
    SomethingElseExporter.new(...).execute if type == :something_else
  end
 
  def initialize(*args, **kwargs, &blk)
    p args, kwargs
  end
 
  def execute
  end
 
  private_class_method :new
end
 
class CSVExporter
  def execute
    # CSV export implementation
  end
end
 
class PDFExporter
  def execute
    # PDF export implementation
  end
end
 
class SomethingElseExporter
  def execute
    # something_else export implementation
  end
end
 
Exporter.run(:csv, foo: :bar) # Exporta { foo: :bar } a formato csv
Exporter.run(:pdf, foo: :bar) # Exporta { foo: :bar } a formato pdf
Exporter.run(:something_else, foo: :bar) # Exporta { foo: :bar } a formato something_else
Podemos reenvíar el resto de los argumentos utilizando el operador épsilon (...) justo como lo hicimos en el video anterior. De manera que es posible pasar un primer argumento (en este caso type) o incluso más de uno, y reenviar el resto. En nuestro ejemplo, utilizamos el primer argumento para determinar si el tipo es :csv, :pdf o :something_else y el resto de los argumentos, los reenviamos a CSVExporter.new, PDFExporter.new o SomethingElseExporter.new



¿Qué hubiéramos tenido que hacer para pasar los argumentos si no contábamos con el operador épsilo? ¿Ves entonces la ventaja de utilizarlo?



Espero que este artículo haya ampliado tu perspectiva para ver el potencial del reenvío de argumentos en Ruby pero si no fue así, y te causa confusión, continúa adelante en el curso para ganar más entendimiento en el funcionamiento de la POO en Ruby.



Saludos! 
=end