	Funcion superficie <- CalcularSuperficie ( largo, ancho )
		Definir superficie Como Real
		superficie = ancho * largo
	Fin Funcion
	
	Funcion precio_final <- CalcularPrecio ( precio, clasificacion, superficie )
		Definir promedio Como Real
		Definir precio_final como Real
		Segun clasificacion Hacer
			"E":
				promedio = 5
			"B":
				promedio = 2
			De Otro Modo:
				promedio = 15
		Fin Segun
		
		Si superficie>2 Entonces
			promedio = (promedio + 10) / 100 + 1
		SiNo
			promedio = (promedio + 8) / 100 + 1
		Fin Si
		
		precio_final = precio * promedio 
		
	Fin Funcion
	
	
	Algoritmo sala_de_arte_trazas
		
		Definir clasificacion_a Como Caracter
		clasificacion_a = "M"
		Definir largo_a Como Real
		largo_a = 1
		Definir ancho_a Como Real
		ancho_a = 0.5
		Definir precio_base_a Como Entero
		precio_base_a = 1000
		Definir superficie_a Como Real
		superficie_a = CalcularSuperficie(largo_a,ancho_a)
		Definir precio_final_a Como Real
		precio_final_a = CalcularPrecio(precio_base_a, clasificacion_a, superficie_a)
		
		Definir clasificacion_b Como Caracter
		clasificacion_b = "B"
		Definir largo_b Como Real
		largo_b = 1.5
		Definir ancho_b Como Real
		ancho_b = 1
		Definir precio_base_b Como Entero
		precio_base_b = 1200
		
		Definir superficie_b Como Real
		superficie_b = CalcularSuperficie(largo_b,ancho_b)
		Definir precio_final_b Como Real
		precio_final_b = CalcularPrecio(precio_base_b, clasificacion_b, superficie_b)
		
		Escribir "a) La superficie del cuadro es: " superficie_a " m2"
		Escribir "Su precio final: " precio_final_a
		Escribir ""
		Escribir "b) La superficie del cuadro es: " superficie_b " m2"
		Escribir "Su precio final: " precio_final_b
		
		
FinAlgoritmo
