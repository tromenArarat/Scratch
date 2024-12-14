Funcion superficie <- CalcularSuperficie ( largo, ancho )
	Definir superficie Como Real
	superficie = ancho * largo
Fin Funcion

Funcion precio_final <- CalcularPrecio ( precio, clasificacion, largo, ancho )
	Definir precio_final como Real
	Segun clasificacion Hacer
		"E":
			precio_final = precio * 1.05
		"B":
			precio_final = precio * 1.02
		De Otro Modo:
			precio_final = precio * 1.15
	Fin Segun
	Definir superficie Como Real
	superficie = CalcularSuperficie(largo,ancho)
	
	Si superficie>2 Entonces
		precio_final = precio_final * 1.10
	SiNo
		precio_final = precio_final * 1.08
	Fin Si
	
Fin Funcion


Algoritmo salaArte
	
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
	
	Definir precio_final Como Real
	precio_final = CalcularPrecio(precio_base, clasificacion, largo, ancho)
	
	Definir superficie Como Real
	superficie = CalcularSuperficie(largo,ancho)
	
	Escribir "La superficie del cuadro es: " superficie
	Escribir "Su precio final: " precio_final
	
	
FinAlgoritmo
