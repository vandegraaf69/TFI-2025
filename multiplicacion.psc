Algoritmo TablaMultiplicarVeinte
    Definir numero_base, iterador, producto_parcial Como Entero
    
    Escribir "Digite el valor numérico para generar su tabla:"
    Leer numero_base
    
    Para iterador <- 1 Hasta 20 Con Paso 1 Hacer
        producto_parcial <- numero_base * iterador
        Escribir numero_base, " X ", iterador, " = ", producto_parcial
    FinPara
FinAlgoritmo