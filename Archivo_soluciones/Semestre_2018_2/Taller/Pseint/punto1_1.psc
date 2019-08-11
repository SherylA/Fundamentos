Algoritmo punto1_1
	
	Definir total_compra, descuento Como Real
	Escribir "Ingrese el valor total de la compra"
	Leer total_compra
	
	Si total_compra > 0 Entonces
		Si total_compra >= 100000 Entonces
			descuento = total_compra*0.1
		SiNo
			Si total_compra >=50000 Entonces
				descuento = total_compra*0.5
			SiNo
				Si total_compra >=25000 Entonces
					descuento = total_compra*0.025
				SiNo
					descuento = 0.0
				FinSi
			FinSi
		FinSi
		
		Escribir "El total de la compra es: ",total_compra
		Escribir "Es descuento es: ",descuento
		Escribir "El total a pagar es: ", total_compra-descuento	
	SiNo
		Escribir "EL valor de la compra debe ser mayor a cero"
	FinSi
FinAlgoritmo
