Algoritmo ConteoDeVocales
    Definir oracion, letra_actual Como Cadena
    Definir total_vocales, indice, largo_texto Como Entero
    
    Escribir "Ingrese la palabra o frase para analizar:"
    Leer oracion
    
    total_vocales <- 0
    largo_texto <- Longitud(oracion)
    
    Para indice <- 1 Hasta largo_texto Con Paso 1 Hacer
        letra_actual <- Subcadena(oracion, indice, indice)
        Si letra_actual = "a" O letra_actual = "e" O letra_actual = "i" O letra_actual = "o" O letra_actual = "u" O letra_actual = "A" O letra_actual = "E" O letra_actual = "I" O letra_actual = "O" O letra_actual = "U" Entonces
            total_vocales <- total_vocales + 1
        FinSi
    FinPara
    
    Escribir "El total de vocales en el texto es: ", total_vocales
FinAlgoritmo