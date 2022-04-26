import sys
import socket


objetivo = socket.gethostbyname(input("Inserte la direccion ip: "))

print(f"Escaneando objetivo: {objetivo}")


try:
 for port in range(1,150):
     s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
     socket.setdefaulttimeout(1)
     resultado = s.connect_ex((objetivo, port))
     if resultado == 0:
         print("El puerto {} esta abierto".format(port))
         s.close
except:
    print("\nSaliedno...")
    sys.exit(0)

