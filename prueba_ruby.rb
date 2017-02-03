require 'pp'

puts ""
puts "ingresa una opcion"
puts "1) promedio alumnos"
puts "2) inasistencia"	
puts "3) alumnos aprobados"
puts "4) exit"
puts "opcion invalida"

option = 0

while option

	opciones = gets.chomp.to_i
	case opciones
		when 1
			file = File.open("pruebaru.csv", "r")
			data = file.read.split
			suma = 0
			data.each{|e| (suma+=e.to_i)/data.length}
			file.close
			puts suma
			end
		end
		when 2
			file = File.open("pruebaru.csv", "r")
			inasistencias = file.readlines
			puts "inasistencias"
			inasistencias.each {|e| puts e if e.include?"A"}
			file.close
			end
		end
		when 3	
			file = File.open("pruebaru.csv", "r")
			prom = file.readlines
			puts "promedio"
			suma = 0
			promedio = 0
			prom.each do |e|
			suma.to_i += e
			promedio = suma.to_i/prom.length-1
			puts "aprobado" if promedio >= 5 
				else
					puts "reprobado"
			end
		when "4"	
			exit

		
			


