Algoritmo PromedioLimitado
    Definir suma_global, valor_capturado, resultado_medio Como Real
    Definir cantidad_registros Como Entero
    
    suma_global <- 0
    cantidad_registros <- 0
    valor_capturado <- 0
    
    Mientras cantidad_registros < 10 Y valor_capturado >= 0 Hacer
        Escribir "Digite la cifra ", cantidad_registros + 1, " (ingrese un negativo para cortar):"
        Leer valor_capturado
        
        Si valor_capturado >= 0 Entonces
            suma_global <- suma_global + valor_capturado
            cantidad_registros <- cantidad_registros + 1
        FinSi
    FinMientras
    
    Si cantidad_registros > 0 Entonces
        resultado_medio <- suma_global / cantidad_registros
        Escribir "El valor promedio resultante es: ", resultado_medio
    Sino
        Escribir "No se introdujeron cifras válidas para el cálculo."
    FinSi
FinAlgoritmo