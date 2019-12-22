password = input("Ingrese la contraseña: ")

other_char = not password.isalnum()
print("¿Tiene espacios u otro carácter? " ,other_char)

is_len_more_8 = len(password)>=8 
print("¿Tiene más de 8 caracteres?", is_len_more_8)		

# 1 --> sea num + letras
# 2 --> no sea sólo num (num no tienen minus)
# 3 --> no todas sean minus
one_uppercase = password.isalnum() and not password.isnumeric() and not password.islower()
print("¿Tiene por lo menos una mayúscula (si es alnum)?",one_uppercase)

# 1 --> sea num + letras
# 2 --> no sea sólo letras 

one_number = password.isalnum() and not password.isalpha()
print("¿Tiene por lo menos un número (si es alnum)?",one_number)
