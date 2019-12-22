Algoritmo lista
	//Escribir el pseudo-código para determinar de N cantidades 
	//cuántas mayores a cero y cuántas menores a cero
	
	//Entradas: Lista de N números. 
	//			N entero mayor a cero, leído
	//          Números,num reales leídos
	//Salidas:  N_pos #positivos
	//			N_neg #negativos
	//Procedimiento: Revisar número a número si son mayores o menores a cero y contar
	
	Definir N,N_pos,N_neg,i Como Entero
	Definir num Como Real
	Escribir "¿Cuántos números son?"
	Leer N
	
	Si N>0
		N_pos = 0
		N_neg = 0 
		Escribir "Ingrese los números"
		Para i=1 hasta N
			Leer num 
			Si num>0
				N_pos = N_pos + 1
			SiNo
				Si num<0
					N_neg = N_neg + 1
				FinSi
			FinSi
		FinPara
		Escribir "De ",N,"números ",N_pos,"son positivos"
	SiNo
		Escribir "Error!"
	FinSi
FinAlgoritmo
