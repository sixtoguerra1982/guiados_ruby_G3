=begin
    iter3.rb
    Crear un programa llamado iter3.rb que tenga un método llamado filter que reciba un hash y
    devuelva un hash nuevo con los valores superior a un parámetro que será ingresado al
    momento de llamar al programa
=end
require 'byebug'

def filter(hash,num_filter)
    hash_filter = {}
    hash.each do |key,value|
        hash_filter[key] = value if value > num_filter  # si esto es verdadero, vamos a crear la llave y el valor en el hash_filter
    end
    return hash_filter
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


puts filter(ventas,ARGV[0].to_i)

