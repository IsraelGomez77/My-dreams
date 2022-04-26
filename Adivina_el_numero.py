import random


def adivina (x):
    print("=======================")
    print ("BIENVENIDO AL JUEGO")
    print("=======================")
    print ("ADIVINA EL NUMERO GENERADO POR LA COMPUTADORA")


    num_aleatorio  = random.randint(1, x) #numero aleatorio
    predic=0
       
       #El usuario agrega un numero
    while predic != num_aleatorio:
        predic = int(input(f"Adivina un numero entre 1 y {x} :"))
        if predic < num_aleatorio:
            print("intente nuevamente NUMERO PEQUEÑO")
        elif predic > num_aleatorio:
                print("INTENTA OTRA VEZ NUMERO GRANDE")
    print(f"FELICITACIONES COMPLETASTE EL NUMERO {num_aleatorio} correctamente!")


adivina(50)


    




   






