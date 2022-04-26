
import random

def juego():
 Jugador = input("\nEscoge una opcion: ma para manita arriba o mb para manita abajo")
 pc= random.choice(['ma','mb'])

 if Jugador == pc:
     return '¡Empates!'
     
 if Ganador_Player(Jugador,pc):
     return '¡Ganaste la partida!'

 return '¡Perdiste!'


def Ganador_Player(usuario,oponente):
    if ((usuario== 'ma' and oponente== 'mb')
    or (usuario== 'mb' and oponente == 'ma')):
     return True
    else:
        return False
    

print(juego())




