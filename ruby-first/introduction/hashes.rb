# son el mismo principio que los objetos en JS
puts {}.class
{ 'a' => 'b' }

arr = [1,2,3,4]
puts = arr[2]

hash = {
    'a' => 'b',
    'c' => 'd'
}

puts hash['c']

student = Hash.new 
puts student

student['metematicas'] = 50
puts student

student['ciencias'] = 90
student['fisica'] = 80

puts "El estudiante saco  #{ student['ciencias'] } en ciencias "

# valores por default
student_new = Hash.new(0)
student_new['fisica'] = 5

puts student_new['matematicas']

# iterar
alumno = { 'mateticas' => 50, 'fisica' => 70, 'historia' => 90 }
puts alumno

alumno.each do | key, value |
    puts "Key: #{ key }, Value: #{ value }"
end

# sacar el promedio
total = 0 
alumno.each do | key, value |
    total += value
end

puts total / 3

# la forma simplificada 
alumno.each{ | key, value | puts "Key: #{ key }, Value: #{ value }" }

