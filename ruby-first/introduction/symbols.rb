# objeto string
puts 'hola mundo'
puts "hola mundo"

# Hora y fecha de este momento
time_now = Time.new
puts time_now

# interpolacion con comillas dobles 
puts "Hola mundo, la hora es #{ time_now }"

# string de cadena sencilla, no es permitido interpolar
puts 'Hola mundo, la hora es  #{ time_now }'

# resultado: Hola mundo, la hora es  #{ time_now }

# Medir la cadena
puts "nombre del profesor".length

nombre_profesor = "nombre del profesor"
puts nombre_profesor.length

# Metodo reverse
puts nombre_profesor.reverse

# Capitalize, primera en mayuscula
puts nombre_profesor.capitalize

# upcase ( todos a mayusculas ) y downcase ( todo minuscula )
puts nombre_profesor.upcase
puts nombre_profesor.downcase

# Podemos usar next para cambiar a la letra siguiente
puts nombre_profesor.next
# resultado: nombre del profesos
puts "a".next.next
# resultado: c

# metodo empty, devuelve booleans
puts nombre_profesor.empty?
puts "".empty?

# multiplicar un string
puts "cinco " * 5
# Resultado: cinco cinco cinco cinco cinco 


=begin 
--------
Simbolos
-------
=end

# datos similares a string, son mas ligeros y mantienen su origen 
"Javier"
:Javier

nombre = :Javier

# obtener el numero en memoria RAM
puts "Javier".object_id
# Crea valores diferentes en la memoria RAM
puts "Javier".object_id

# con los simbolos no es lo mismo, conserva su valor en memoria RAM
puts :Javier.object_id
puts :Javier.object_id

# Suelen usarse como hashes 