Algoritmo lista
	//Escribir el pseudo-c�digo para determinar de N cantidades 
	//cu�ntas mayores a cero y cu�ntas menores a cero
	
	//Entradas: Lista de N n�meros. 
	//			N entero mayor a cero, le�do
	//          N�meros,num reales le�dos
	//Salidas:  N_pos #positivos
	//			N_neg #negativos
	//Procedimiento: Revisar n�mero a n�mero si son mayores o menores a cero y contar
	
	Definir N,N_pos,N_neg,i Como Entero
	Definir num Como Real
	Escribir "�Cu�ntos n�meros son?"
	Leer N
	
	Si N>0
		N_pos = 0
		N_neg = 0 
		Escribir "Ingrese los n�meros"
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
		Escribir "De ",N,"n�meros ",N_pos,"son positivos"
	SiNo
		Escribir "Error!"
	FinSi
FinAlgoritmo
