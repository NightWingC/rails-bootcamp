# ciclo 
x, y = 1, 11
while x < y do 
    puts "x: #{ x }"
    x += 1
end 

z = 1
z += 1 while z < y 
puts "z vale: z"

until x > y do
    puts  "x: #{ x }"
    x += 1
end

#break y next
while  true do
    break if x > 30
    x += 1
    p x
end

a = 1
while a < y 
    p x
    a += 1 
    next if a < 2
end

# For, itera en colecciones 
arr = [1, 2, 3, 4, 5]
for number in arr do
    puts "El doble de #{ number} es: #{ number * number }"
end

# Loop 
# loop do
#     puts "Hola mundo"
# end

e = 1
loop do
    p e 
    e += 1
    break if e === 20
end

# Metodo integre

100.times do |number|
    puts "times: #{ number }"
end



