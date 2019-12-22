Algoritmo areatriangulo
	//Escribir el pseudo-c�digo para obtener el �rea de un tri�ngulo.
	//Entradas: base, altura [um] --> reales positivos, le�das um --> unidad de medida
	//Salida: area, n�mero real [um^2]
	//Procedimiento: A = (b*h)/2, obtener b,h y calcular A
	
	//**Definir variables**//
	Definir base,altura,area Como Real
	
	//**Entradas**//
	Escribir "Ingrese la base del tri�ngulo [um]: "
	Leer base
	Escribir "Ingrese la altura del tri�ngulo [um]: "
	Leer altura
	
	//**Revisi�n de los limites del dominio**/
	Si base>0 y altura>0
		area = base*altura*0.5
		//**Salidas**//
		Escribir "El �rea del tri�ngulo es: ",area," [um^2]"
	SiNo
		Escribir "La base o la altura deben ser positivos"
	FinSi
	
FinAlgoritmo
