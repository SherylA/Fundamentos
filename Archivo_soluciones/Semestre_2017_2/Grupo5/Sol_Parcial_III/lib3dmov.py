#!/usr/bin/env python
# -*- coding: utf-8 -*-

import math 
import numpy as np

def reglineal(x,y,n):
	A=0.0
	B=0.0
	C=0.0
	D=0.0
	
	for i in range(0,n):
		A=A+x[i]
		B=B+y[i]
		C=C+x[i]*y[i]
		D=D+x[i]*x[i]
	
	if(A*A-n*D)==0:
		print("La pendiente es indeterminada. Los datos se ajustan a una recta de la familia x=a")
		sys.exit()
	else:
		m=(A*B-n*C)/(A*A-n*D)
		b=(B-m*A)/n		
	sol=[m,b]
	return sol


