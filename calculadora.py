"""LIBRERIAS"""
from ast import Expression
from re import I
from tkinter import *
from tkinter.tix import COLUMN
import parser


"""FUNCIONES"""
root = Tk()
root.title("CALCULADORA EN PYTHON")

display = Entry(root)
display.grid(row=1, columnspan=6,sticky=W+E)

i=0
"""FUNCION DE OBTENER NUMEROS"""
def get_numbers(n):
    global i 
    display.insert(i,n)
    i+=1

"""FUNCION DE OBETER OPERADORS"""
def get_operations (operator):
    global i
    operator_lenght = len(operator)
    display.insert(i, operator)
    i+=operator_lenght
"""LIMPIAR"""
def clear_display():
    display.delete(0, END)

"""BORRAR UNA EXPRESION"""
def undo():
    display_state = display.get()
    if len(display_state):
        display_new_state = display_state[: -1]
        clear_display()
        display.insert(0, display_new_state)
    else:
         clear_display()
         display.insert(0, "ERROR")

"""CALCULAR EXPRESIONES """
def calculate():
    display_state = display.get()
    try:
        math_expression = parser.expr(display_state).compile()
        result = eval(math_expression)
        clear_display()
        display.insert(0 , result)
    except math_expression as identifer:
            clear_display()
            display.insert(0 , "EXPRECION INVALIDA")





"""BOTONES NUMEROS"""
Button(root, text="1", command= lambda:get_numbers(1)).grid(row=2,column=0,sticky=W+E)
Button(root, text="2", command= lambda:get_numbers(2)).grid(row=2,column=1,sticky=W+E)
Button(root, text="3", command= lambda:get_numbers(3)).grid(row=2,column=2,sticky=W+E)

Button(root, text="4", command= lambda:get_numbers(4)).grid(row=3,column=0,sticky=W+E)
Button(root, text="5", command= lambda:get_numbers(5)).grid(row=3,column=1,sticky=W+E)
Button(root, text="6", command= lambda:get_numbers(6)).grid(row=3,column=2,sticky=W+E)

Button(root, text="7", command= lambda:get_numbers(7)).grid(row=4,column=0,sticky=W+E)
Button(root, text="8", command= lambda:get_numbers(8)).grid(row=4,column=1,sticky=W+E)
Button(root, text="9", command= lambda:get_numbers(9)).grid(row=4,column=2,sticky=W+E)

"""BOTONES OPERADORES"""
Button(root, text="AC",command= lambda:clear_display()).grid(row=5,column=0,sticky=W+E)
Button(root, text="0", command= lambda:get_numbers(0)).grid(row=5,column=1,sticky=W+E)
Button(root, text="%",command= lambda:get_operations("%")).grid(row=5,column=2,sticky=W+E)


Button(root, text="+",command= lambda:get_operations("+")).grid(row=2,column=3,sticky=W+E)
Button(root, text="-",command= lambda:get_operations("-")).grid(row=3,column=3,sticky=W+E)
Button(root, text="*",command= lambda:get_operations("*")).grid(row=4,column=3,sticky=W+E)
Button(root, text="/",command= lambda:get_operations("/")).grid(row=5,column=3,sticky=W+E)

"""BOTONES DE AGRUPACION NUMERICA"""
Button(root, text="🡠", command = lambda:undo()).grid(row=2,column=4,sticky=W+E, columnspan=2)
Button(root, text="EXP",command= lambda:get_operations("**")).grid(row=3,column=4,sticky=W+E)
Button(root, text="^2",command= lambda:get_operations("^2")).grid(row=3,column=5,sticky=W+E)
Button(root, text="(",command= lambda:get_operations("(")).grid(row=4,column=4,sticky=W+E)
Button(root, text=")",command= lambda:get_operations(")")).grid(row=4,column=5,sticky=W+E)
Button(root, text="=",command= lambda: calculate()).grid(row=5,column=4,sticky=W+E, columnspan=3)

root.mainloop()