Algoritmo eqsegorden
	//Entradas a,b,c (ax^2 + bx +c)
	//Salidas
	//x1,x2 reales--> 
	//a!=0 d = b^2-4ac >= 0 x= (b +- rc(d))/2a
	//x1,x2 ccomplejas --> 
	//a!=0 d = b^2-4ac < 0 x= (b +- rc(abs(d))i)/2a
	//Procedimiento
	//¿a!=0? x1=x2=-c/b b!=0
	//Calculo d 
	//d>=0 --- x1,x2 reales
	//d<0 --- x1,x2 complejas
	
	Definir a,b,c,d,raiz_d Como Real
	Definir x1,x2 Como Caracter
	
	Leer a,b,c
	
	Si a==0 y b<>0
		x1 = "Raiz 1 -->" + ConvertirATexto(-c/b)
		x2 = "Raiz 2 -->" + ConvertirATexto(-c/b)
	SiNo
		Si a==0 y b==0
			x1="¡Error! No raíces"
			x2="¡Error! No raíces"
		SiNo
			d = b^2 - 4*a*c
			Si d >= 0
				raiz_d = rc(d)
				Escribir (-b - raiz_d)/(2*a)
				x1 =  "Raiz 1 -->" + ConvertirATexto((-b + raiz_d)/(2*a))
				x2 =  "Raiz 2 -->" + ConvertirATexto((-b - raiz_d)/(2*a))
			SiNo
				raiz_d = rc(abs(d))
				x1 =  "Raiz 1 -->" + ConvertirATexto(-b/2*a) + "+" + ConvertirATexto(raiz_d/2*a) + 'i'
				x2 =  "Raiz 2 -->" + ConvertirATexto(-b/2*a) + "-" + ConvertirATexto(raiz_d/2*a) + 'i' 
			FinSi
			
		FinSi
	FinSi
	
	Escribir x1
	Escribir x2
	
	
FinAlgoritmo
