
import random

def jugar():

    usuario = input("Escoge una opcion: 'pi' para piedra 'pa' para papel y 'ti' para tijerapi\n ").lower()
    computadora = random.choice(['pi', 'pa', 'ti'])

    if usuario == computadora:
        return '¡Empate!'

    if Player_Wins(usuario, computadora):
        return '¡Ganaste!'

    return '¡Perdiste!'


def Player_Wins(jugador, oponente):
    #Retornar valor True Sí gana o ganó el jugador
    #Piedra oponente tijera el jugador ganará 
    #Tijera gana a papel
    #Papel gana a piedra
    if ((jugador== 'pi' and oponente== 'ti')
    or (jugador== 'ti' and oponente == 'pa')
    or (jugador == 'pa' and oponente == 'pi')):
     return True
    else:
        return False


print(jugar())


    






