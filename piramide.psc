Algoritmo EstructuraPiramide
    Definir altura_total, escalon, num_actual Como Entero
    
    Escribir "Indique la cantidad de niveles para la figura:"
    Leer altura_total
    
    Para escalon <- 1 Hasta altura_total Con Paso 1 Hacer
        Para num_actual <- 1 Hasta escalon Con Paso 1 Hacer
            Escribir Sin Saltar num_actual, " "
        FinPara
        Escribir ""
    FinPara
FinAlgoritmo