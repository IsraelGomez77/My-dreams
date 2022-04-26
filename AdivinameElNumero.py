
import random


def adivinaPC (x):
    print("=======================")
    print ("BIENVENIDO AL JUEGO")
    print("=======================")
    print ("ADIVINA EL NUMERO GENERADO POR LA COMPUTADORA")
    print(f"Selecciona un numero entre 1 y {x} Para que la computadora intente adivinarlo: ")


    li=1 #[1, x]
    ls=x
    res= "" #Se ingresa la cadena de caracteres
    while res != "c":

        #generar una prediccion
        if li != ls:
            precition= random.randint(li, ls)
        else:
                precition = ls 

           #obtener una respuesta del usuario
        res=input(f"mi prediccion es {precition} Si es muy alta ingresa (A) Si es muy baja ingresa (B),si es correcto ingresa (C)").lower()
        if res == "a":
            ls = precition -1
        elif res == "b":
            li = precition + 1

    print(f"Felicidades la computadora adivino tu numero correctamente {precition} !")


    adivinaPC(50)



    


