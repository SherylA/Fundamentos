#include <stdio.h>
#include <math.h>
#include <stdlib.h>

int main()
{
	float N;
	printf("Ingrese un número para saber si es par o impar \n");
	scanf("%f",&N);
	if(N==floor(N))
	{
		if((N/2)==floor(N/2)) printf("El número %.1f es un entero par\n",N);
		else printf("El número %.1f es un entero impar\n",N);
	}
	else printf("El número %f no es entero por lo tanto no es par o impar\n",N);
	
}
