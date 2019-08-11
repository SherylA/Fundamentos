Algoritmo p1_5
	//Un restaurante que se está sistematizando completamente quiere que se le elabore un algoritmo
	//que le imprima una factura de cobro para sus clientes teniendo en cuenta que por compras iguales o
	//mayores a $100000 se le otorgara un descuento del 10%, por compras iguales o superiores a $50000
	//será un descuento del 5%, por compras iguale o superiores a $25000 un descuento del 2.5% y por
	//compras inferiores no habrá descuento, la factura debe llevar el valor del bono de descuento el total a
	//pagar.
	Imprimir "Este programa imprime la factura de cobro de un restaurante con el precio y su respectivo descuento "
	Imprimir "Por favor introduzca el valor de la compra en pesos"
	Leer Vcompra
	//Primero debemos asegurarnos que el valor de compra sea positivo, no tiene sentido un valor de compra negativo
	Si Vcompra<0 
		Imprimir "El valor de la compra debe ser positvo"
	Sino
		//Ahora comprobamos de arriba hacia abajo primero los mayores de 100000 y así. 
		//Asignamos a vporc el porcentaje de descuento
		Si Vcompra>=100000
			Vporc=0.1
		Sino
			Si Vcompra>=50000
				Vporc=0.05
			Sino
				Si Vcompra>=25000
					Vporc=0.025
				Sino
					Vporc=0.0
				FinSi
			FinSi
		FinSi
		//Luego de elegir el vporc correcto imprimimos la factura. No se olviden de la unidades!!
		Imprimir "El valor de su compra fue: ",Vcompra," pesos"
		Imprimir "El valor de su descuento fue: ",Vporc*100," % y el valor en pesos es de: ",Vporc*Vcompra
		Imprimir "El valor a pagar es ",Vcompra-Vporc*Vcompra," pesos"
	FinSi 
FinAlgoritmo
