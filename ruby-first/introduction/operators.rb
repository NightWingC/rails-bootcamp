puts 5 + 5
puts 10 - 5
puts 5 * 5
# Potencia
puts  5 ** 2
puts 10 / 2
puts 65 % 5

numero = 9 

# operador de asignacion 
puts numero += 9
puts numero *= 5
puts numero /= 5
puts numero %= 5

#  clase
puts 5.class

# Todo son objetos, todo tiene metodos 
# No hay variables primitivas 

# tipo de dato infinito
puts 54.0 / 0


=begin
  Usos especiales de los números
Usos especiales de los números
Aparte de lo obvio en cuanto a números, ruby tiene algunas peculariedades que pueden ser útiles con el fin de ganar expresividad.

Por ejemplo, podemos expresar miles utilizando el símbolo _ de la siguiente manera:

1_123

Esto sería el equivalente de escribir 1,123 (o 1.123 en España y quizá otros países que ni conozco 🤣).

El número funcionará igual que cualquier otro número (En este caso, igual que 1123). El único propósito de esta sintaxis es que sea más legible a simple vista, lo cuál es más relevante con un número como 123456789123456789 (ciertamente es más legible leer 123_456_789_123_456_789). Por supuesto, esta opción sigue siendo opcional.



También es posible utilizar números a manera de notación científica:



1.2e-3 #Esto sería un tipo Float equivalente al número 0.0012


Hay mucho más que decir de los números en Ruby pero es imposible tratarlo todo en un curso como este.



Para más información, mira este link:

https://www.rubyguides.com/2016/07/numbers-in-ruby/
=end




