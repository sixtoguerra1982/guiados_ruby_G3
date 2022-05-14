=begin
    Crear un programa llamado busqueda.rb que pueda buscar a que mes pertenece una o más
    cifras específicas. En caso de no encontrarlo mostrar el mensaje "no encontrado"
    ruby busqueda.rb 15000 13000 27000

    ruby busqueda.rb [15000 13000 27000]
    

    ruby busqueda.rb 15000 31000 27000
    [Enero,
    Junio,
    No encontrado]

=end

def retorno_final(hash, list_search)
    new_array = []
    arreglo_valores = hash.values
    list_search.each do |elemt|
        if arreglo_valores.include?(elemt)
            #existe, tenemos que buscar su mes
            new_array.push hash.invert[elemt]
        else
            new_array.push "No Encontrado"
        end
    end
    new_array
end

def retorno_final_two(hash, list_search)
    new_array = []
    arreglo_valores = hash.values # -> [15000,22000,12000...]
    arreglo_keys = hash.keys #-> [:Enero, :Febrero....]
    list_search.each_with_index do |elemt,index|
        if arreglo_valores.include?(elemt)
            #existe, tenemos que buscar su mes
            new_array.push arreglo_keys[arreglo_valores.index(elemt)]
        else
            new_array.push "No Encontrado"
        end
    end
    new_array
end

ventas = {
    Enero: 15000,
    Febrero: 22000,
    Marzo: 12000,
    Abril: 17000,
    Mayo: 81000,
    Junio: 13000,
    Julio: 21000,
    Agosto: 41200,
    Septiembre: 25000,
    Octubre: 21500,
    Noviembre: 91000,
    Diciembre: 21000
    }

array_search = ARGV.map {|x| x.to_i}

puts "forma 1"
puts retorno_final(ventas,array_search)
puts "forma 2"
puts retorno_final_two(ventas,array_search)

# print "#{busqueda(ventas,array)} \n"
# puts retorno_final(busqueda(ventas,array_search),array_search)
# print "#{array} \n"


