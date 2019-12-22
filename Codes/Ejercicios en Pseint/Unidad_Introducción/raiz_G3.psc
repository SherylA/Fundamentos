Algoritmo raizreal
	
	Definir num, raiz_num Como Real
	Leer num
	Definir resultado Como Caracter
	Si num >= 0
		raiz_num = rc(num)
		resultado = "Real --> " + ConvertirATexto(raiz_num)
	SiNo
		raiz_num = rc(abs(num))
		resultado = "Complejo --> " + ConvertirATexto(raiz_num)+'i'
	FinSi
	Escribir resultado
FinAlgoritmo
