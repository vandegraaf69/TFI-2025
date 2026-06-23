Algoritmo InvertirCadena
    Definir frase_usuario, texto_al_reves, caracter_temp Como Cadena
    Definir tamanio_frase, pos Como Entero
    
    Escribir "Ingrese la cadena de texto o frase:"
    Leer frase_usuario
    
    tamanio_frase <- Longitud(frase_usuario)
    texto_al_reves <- ""
    
    Para pos <- tamanio_frase Hasta 1 Con Paso -1 Hacer
        caracter_temp <- Subcadena(frase_usuario, pos, pos)
        texto_al_reves <- texto_al_reves + caracter_temp
    FinPara
    
    Escribir "El resultado invertido es: ", texto_al_reves
FinAlgoritmo