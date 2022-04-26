import socket

hostname = socket.gethostname()
ip = socket.gethostbyname(hostname)

print (f"El nombre de tu ordenador es: {hostname} ")
print (f"El nombre de tu IP es: {ip} ")
