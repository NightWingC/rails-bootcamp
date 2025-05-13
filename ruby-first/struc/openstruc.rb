require 'ostruc'

p = OpenStruct.new
p.nombre = "Milo"
p.edad = 4

puts "Hola, soy #{ p.nombre }, tengo #{ p.edad }"

hash = {
    nombre: "Tita",
    edad: 8,
    prefesion: "Ingeniero"
}

persona2 = OpenStruct.new( hash )
puts "Hola, soy #{ persona2.nombre }, tengo #{ persona2.edad }"