Algoritmo areatriangulo
	//Escribir el pseudo-código para obtener el área de un triángulo.
	//Entradas: base, altura [um] --> reales positivos, leídas um --> unidad de medida
	//Salida: area, número real [um^2]
	//Procedimiento: A = (b*h)/2, obtener b,h y calcular A
	
	//**Definir variables**//
	Definir base,altura,area Como Real
	
	//**Entradas**//
	Escribir "Ingrese la base del triángulo [um]: "
	Leer base
	Escribir "Ingrese la altura del triángulo [um]: "
	Leer altura
	
	//**Revisión de los limites del dominio**/
	Si base>0 y altura>0
		area = base*altura*0.5
		//**Salidas**//
		Escribir "El área del triángulo es: ",area," [um^2]"
	SiNo
		Escribir "La base o la altura deben ser positivos"
	FinSi
	
FinAlgoritmo
