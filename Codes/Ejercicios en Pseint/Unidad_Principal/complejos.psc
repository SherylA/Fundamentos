Funcion c3 = suma_c(c1,c2)
	Definir c3 Como Real
	Dimension c3[2]
	
	c3[0] = c1[0] + c2[0] 
	c3[1] = c1[1] + c2[1]
	
FinFuncion
Algoritmo complejos 
	
	Definir num_real_1, num_imag_1,num_real_2, num_imag_2 como real
	Definir num_real_3, num_imag_3 como real
	
	Escribir "Ingrese en número complejo"
	Leer num_real_1
	Leer num_imag_1
	
	Escribir "Ingrese en número complejo"
	Leer num_real_2
	Leer num_imag_2
	
	//SUMA --- RESTA
	//num_comp_3 = num_comp_1 + num_comp_2
	
	num_real_3 = num_real_1 + num_real_2
	num_imag_3 = num_imag_1 + num_imag_2
	
	Escribir "La suma es: ",num_real_3,"+",num_imag_3,"i"
	
	Definir num_comp_1, num_comp_2, num_comp_3 Como Real
	Dimension num_comp_1[2], num_comp_2[2], num_comp_3[2]
	
	num_comp_1[0]=num_real_1
	num_comp_1[1]=num_imag_1
	num_comp_2[0]=num_real_2
	num_comp_2[1]=num_imag_2
	
	//num_comp_3 = suma_c(num_comp_1, num_comp_2)
	//Escribir "La suma es: ",num_comp_3[0],"+",num_comp_3[1],"i"
	// 9 + 9j1
	// 9 + 9i + 15 + 9i
	
	//Producto/división 
	num_real_3 = (num_real_1*num_real_2 - num_imag_2*num_imag_1)
	num_imag_3 = (num_real_1*num_imag_2 + num_real_2*num_imag_1)
	
	Escribir "La multiplicación es: ",num_real_3,"+",num_imag_3,"i"
	
	Definir modulo Como Real
	
	modulo = num_imag_2*num_imag_2 + num_real_2*num_real_2
	
	num_real_3 = (num_real_1*num_real_2 + num_imag_2*num_imag_1)/modulo
	num_imag_3 = (-num_real_1*num_imag_2 + num_real_2*num_imag_1)/modulo
	
	Escribir "La división es: ",num_real_3,"+",num_imag_3,"i"
	
FinAlgoritmo

