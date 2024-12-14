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
	
	
Algoritmo sala_de_arte_cambios
		
	Definir precio_base Como Entero
	Escribir "Indique precio base:"
	Leer precio_base
		
	Definir largo Como Real
	Escribir "Indique largo del cuadro"
	Leer largo
		
	Definir ancho Como Real
	Escribir "Indique ancho del cuadro"
	Leer ancho
		
	Definir clasificacion Como Caracter
	Escribir "Indique valoración del cuadro"
	Escribir "P (premium)"
	Escribir "M (master)"
	Escribir "E (estándar)"
	Escribir "B (básico)"
	Leer clasificacion
		
	Definir superficie Como Real
	superficie = CalcularSuperficie(largo,ancho)
		
	Definir precio_final Como Real
	precio_final = CalcularPrecio(precio_base, clasificacion, superficie)
		
	Escribir "La superficie del cuadro es: " superficie "m2"
	Escribir "Su precio final: " precio_final
		
FinAlgoritmo
