
from palabras import palabras
import random
import string
from Ahorcado_Diagramas import vidas_diccionario_visual

def obtener_palabra_valida(palabras):
    palabra = random.choice(palabras)  # seleccionar una palabra al azar de la lista

    # Si la palabra contiene un guión o un espacio,
    # seguir seleccionando una palabra al azar.
    while '-' in palabra or ' ' in palabra:
        palabra = random.choice(palabras)

    return palabra.upper()






def ahorcado ():
    print("===============================")
    print("Bienvenido al juego del ahorcado")
    print("===============================")

    palabra = obtener_palabra_valida(palabras)

    letras_por_adivinar = set(palabra)
    abecedario = set(string.ascii_uppercase)
    letras_adivinadas = set()
    vidas = 7

    while len(letras_por_adivinar) > 0 and vidas > 0:
        print(f"Tus vidas faltantes son:  {vidas} y has usado estas letras: {' '.join(letras_adivinadas)}")
        #Mostrar el estado actual de las palabras
        palabra_lista = [letra if letra in letras_adivinadas else '-' for letra in palabra] #LIST COMPRENHESHION
        #Mostrar el estado visual del ahorcado
        print(vidas_diccionario_visual[vidas])
        #Mostrar las letras separadas
        print(f"Palabra: {' ' .join(palabra_lista)}")

        letra_usuario = input("Escoge una letra: ").upper()
    #Si la letra del usuario esta en el abecedario y esta no se encuentra en las letras adivinadas
    #agrega la letra adivinada en el conjunto de letras ingresadas
        if letra_usuario in abecedario - letras_adivinadas:
            letras_adivinadas.add(letra_usuario)

            #Si la letra esta en la palabra, Quitar el conjunto de letras por adivinar
            #Si no esta en la palabra quitar vida
            if letra_usuario in letras_por_adivinar:
                letras_por_adivinar.remove(letra_usuario)
                print('')
            else:
                    vidas -= 1
                    print(f"\nTu letra: {letra_usuario}no se encuentra en la palabra" )
        #Si la letra ya fue ingresada 
        elif letra_usuario in letras_adivinadas:
             print("\n Ya escogiste esa palabra elige una nueva") 
        else: 
                 print("\nEsta letra no es valida")

#El juego llega a esta linea cuando se adivinan todas las letras de la palabra o cuando se agotan las vidas del jugador
    if vidas == 0:
     print(vidas_diccionario_visual[vidas])

     print(f"Ahorcado!!!! Perdiste  la palabra era: {palabra}")
    else: 
         print(f"Felicidades has ganado la partida {palabra}")

if __name__ == '__main__':
    ahorcado()
