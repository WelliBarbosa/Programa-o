import ctypes

atribruto_ocultar = 0x02

retorno = ctypes.windll.kernel32.SetFileAttributesW('a.txt', atribruto_ocultar)

if retorno:
    print("arquivo ocultado")
else:
    print("não foi")