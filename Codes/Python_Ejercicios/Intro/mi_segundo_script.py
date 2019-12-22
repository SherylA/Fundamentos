password = input("Ingrese la contraseña: ")
is_len_more_8 = len(password) >= 8
alphanumchar = not password.isalpha() and not password.isalnum()
print("¿La contraseña tiene otros caracteres además de números y letras? ", alphanumchar)
print("¿La contraseña tiene más de 8 caráteres? ",is_len_more_8)
one_number = any([password[i].isnumeric() for i in range(len(password))])
one_uppercase = any([password[i].isupper() for i in range(len(password))])
print("¿La contraseña tiene por lo menos una mayúscula? ",one_uppercase)
print("¿La contraseña tiene por lo menos un número? ",one_number)

