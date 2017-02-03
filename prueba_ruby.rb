puts ""
puts "ingresa una opcion"
puts "1) promedio alumnos"
puts "2) inasistencia"	
puts "3) alumnos aprobados"
puts "4) exit"
puts "opcion invalida"

option = 0

while option

	opciones = gets.chomp
	case opciones
		when "1"
			file = File.open("pruebaru.csv", "r")
			data=file.read.split
			file.close
			suma=0
			data.each{|e| (suma+=e.to_i)/data.length}
			puts suma
			end
		when "2"
			
