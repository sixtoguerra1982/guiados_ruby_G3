=begin
    Crear el programa iter2.rb que itere el hash ventas y muestre en pantalla todos los meses
    cuyas ventas sean superiores a 45000
=end


def filter(hash,num_filter) #SIEMPRE 
 puts "Proceso Iniciado" 
 array = []
 sleep 1 
 hash.each do |key,value|
    # puts value if value > num_filter
    array.push(key) if value > num_filter
 end
 array
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

puts filter(ventas,45000)    




