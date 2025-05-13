=begin 
Simple mode
Havet the function simple_mode(arr) take the array of number stored in arr and return the number that appears most frequently(the mode). For example: if arr contains [10,4,24] the output be 4. If there is more than one mode return the one that appeared in the array (ie. [5,10,10,6,5] should return 5 because it appeared first). If there is return -1. The array will not be empty
=end

def simple_mode( arr )
    # [5,10,10,6,5] 
    frecuencia = Hash.new( 0 )
    arr.each do | num |
        frecuencia[ num ] += 1
        # puts frecuencia
    end
    # frecuencia[ 5 ] = 0 + 1
    # { 5: 1 }
    # frecuencia[ 10 ] = 0 + 1
    # { 5: 1, 10: 1 }
    # frecuencia[ 10 ] = 1 + 1
    # { 5: 1, 10: 2 }

    valores_frecuencia = frecuencia.values
    # [2,2,1]
    max_values = valores_frecuencia.max
    # 2
    return -1 if max_values.eql? valores_frecuencia.min

    mas_frecuente = frecuencia.select{ | key, value | value.eql? max_values }.keys
    # { 5: 2, 10: 2 } [5 , 10]

    mas_frecuente.first

end


p "La moda es: #{simple_mode([ 10,4,5,2,4 ])}"
p "La moda es: #{simple_mode([ 5,10,10,6,5 ])}"
p " La moda es: #{simple_mode([ 5,10,10,6,5,6 ])}"
p " La moda es: #{simple_mode([ 5,10,12,6,7 ])}"






# class Invoice < ActiveRecord::Base
#     private
        
# end
