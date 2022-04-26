"""Variables y numeros con operaciones matematicas en PYTHON"""
a = 4+4 -2 * 23 /12
b= 3.7+4.2-11.3/2.1+5.32
c= 42 % 10
d= 13**3
e = "Hola Mundo" 

"""PROPIEDADES Y METODOS"""
f='z'
f= f*10
g="Hola Como Estas"
g = g.split('o')
lista= [1,2,3,4,5]
lista2 = ["one","two","trhee"]
lista.pop(2)
lista3 = [6,4,8,10,6,11]

lista3.sort()
lista3.reverse()

print(a)
print(b)
print(c)
print(d)
print(e)
print(f)
print(g)
print(lista)
print(lista + lista2)
print(lista3)

"""EJEMPLO DE SLICING"""
ultilet= e[0:5]
print ( ultilet +"Israel")



"""INDEXADO"""
print ((e[-1]))
"""SLICING POR STEPS"""
print ((e[5:10:2])) 
"""SLICING SIN STEPS"""
print ((e[5:10]))

"""DICCIONARIO"""
dictionary = {'llave1':'valor1','llave2':'valor2'}
print(dictionary['llave1'])

"""TUPLAS"""

l= ('a','a','b')
lis1=[1,2,3]
lis1[0]

print(l[0:4])

"""SETS"""
takeset = set()
takeset.add(34-1)
takeset.add(40-1)
print(takeset)

"""BOOLEANOS"""
print(type(True))
print(4>4)

"""CONDICIONAL IF ELSE"""
Condi=True
condi1=True

if Condi and not condi1:
    print("ESTO ES UNA CONDICIONAL")

elif Condi==True and condi1==True:

    print('EJEMPLO DE CONDICIONALES')

else:
    print("ESTO ES ELSE")

"""CICLOS FOR"""
ciclos = [1,2,3,4,5,6,7,8,9,10]

for num in ciclos:
    if num % 2 ==0:
        print(num)
    else:
      print( f'NUMERO INVALIDO{num}')

 
listas= [(1,2),(3,4),(5,6),(7,8)]
print(len(listas))

for item in  listas:
    print (item)

    """CICLOS WHILE"""

cic= 0
cic1 = [1,2,3,4,5]
cic2= "PRESAGIO"

while cic < 5:
    print(f'EL VALOR ACTUAL DE X ES {cic}')
    cic = cic + 1
else:
    print('X NO ES MAYOR a 5')

for item in cic1:
    pass
print('FIN DEL LIBRETO')


for letter in cic2:
    if letter == 'I':
        continue
    print(letter)

"""OPERADORES UTILES"""
 
ei = [1,2,3,4,5]

for num1 in range(10):
    print(num1)


contadorindice=0
word='hola'

for item in enumerate (word):
    print(item)

mli = [1,2,3]
mli1= ['a','b','c' ]
for item1 in zip(mli,mli1):
    print(item1)

    