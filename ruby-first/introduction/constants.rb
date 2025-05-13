b = 5
puts b 
c = b + b 
puts c

# tipado dinamico 
puts 10.class 
puts b.class

a = "Hola mundo"
puts a.class 


# Variables se declaran en snake_case
# es preferible por la comunidad 
puts saludo_especial = 'snake_case'

# se puede camelCase, pero es mejor en snake_case
puts saludoCamel = "camelCase"

# No se puede empezar con numeros o caracteres especiales 
# ejemplo 56años = 56

# Las constantes empiezan con Mayuscula

# CONSTANTES no existen como tal, pero rubi interpreta como constante a los que empiezan con mayuscula 
# lo unico que va hacer rubi es mandar un warning cuando declaras una constante 
Pi = 3.1416
puts Pi

Pi = 3.141615
puts Pi
=begin
  Warning de consola 
    3.1416
    constants.rb:31: warning: already initialized constant Pi
    constants.rb:28: warning: previous definition of Pi was here
    3.141615
=end

# Congelar un objeto del tipo string
PROFESOR = 'Javier'.freeze
puts PROFESOR

# Concatenacion 
# Solo crea un solo objeto 
puts "Hola " << "mundo"
# Crea objetos por separacion 
puts "Hola  " + "mundo"

=begin 
    Usos especiales de las contantes
    Usos especiales de las constantes
    Hemos hablado ya sobre las constantes en un video pero hay un par de cosas más que decir sobre ellas.

    Las constantes no deben ser definidas dentro de un método

    El siguiente código es inválido

    def method
    ABC = 1
    end
    Ruby detecta que ABC es una constante (recuerda que se definen simplemente por comenzar en mayúsculas) e interpreta que es inadecuado setear su valor en un método.


    El error que recibirás como se muestra en la imagen anterior es dynamic constant assigment.

    Las constantes siempre deben definirse fuera del scope de un método y preferentemente dentro del scope de una clase, por ejemplo:

    class RubyCourse
    SITE = 'udemy.com'
    end


    Acceso a una constante

    En el video vimos que podemos acceder a una constante por medio de su nombre sin mayor complicación. Sin embargo, cuando una constante se declara en el scope de una clase, la sintaxis de acceso es la siguiente:

    RubyCourse::SITE # => udemy.com
    Esto lo practicaremos  con mayor frecuencia cuando nos adentremos más profundamente en el curso.



    Las constantes pueden modificarse

    Esto ya lo mencionamos en el video pero lo ponemos aquí nuevamente para referencia rápida.

    Una constante puede cambiar de valor y simplemente lanzará un pequeño warning de advertencia que desearemos evitar.

    AUTHOR = "Javier Vazquez"
    AUTHOR = "Another name"
    # Warning: already initialized constant AUTHOR
    Lo ideal es congelar el objeto al que apunta la constante para que no pueda ser modificado

    AUTHOR = "Javier Vazquez".freeze
    AUTHOR << " + Another Name"
    # RuntimeError: can't modify frozen String
    Desafortunadamente, incluso congelando el objeto al que apunta la constante, aún es posible asignar un nuevo objeto a esa constante.

    AUTHOR = "Javier Vazquez".freeze
    AUTHOR = "Another Name"
    # Warning: already initialized constant AUTHOR


    Existen algunas gemas (librerías) en Ruby que nos ayudan analizando nuestro código en búsqueda de estos posibles warnings para que los evitemos.


=end