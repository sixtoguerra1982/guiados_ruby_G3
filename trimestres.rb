=begin
Crear el programa trimestres.rb donde se pide generar un hash llamado quarters con las
ventas de cada trimestre a partir del hash de ventas de los enunciados anteriores. Las
claves del hash tienen que ser 'Q1', 'Q2', 'Q3', 'Q4'


 {'Q1' => suma del primer trimestre , 'Q2' => suma segundo trimestre, 'Q3', 'Q4'}

=end

def suma(array,desde,hasta)
    array[desde -1..hasta - 1].sum
end

def quarters(hash)
    q = {}
    values = hash.values
    # q['Q1'] = values[0..2].sum
    # q['Q2'] = values[3..5].sum
    # q['Q3'] = values[6..8].sum
    # q['Q4'] = values[9..11].sum
    q['Q1'] = suma(values,1,3)
    q['Q2'] = suma(values,4,6)
    q['Q3'] = suma(values,7,9)
    q['Q4'] = suma(values,10,12)
    q
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

print "#{quarters(ventas)}\n"