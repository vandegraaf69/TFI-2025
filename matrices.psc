Algoritmo SumaDeMatrices
    Definir filas_tot, cols_tot, idx_f, idx_c Como Entero
    
    Escribir "Ingrese la cantidad de filas para las matrices:"
    Leer filas_tot
    Escribir "Ingrese la cantidad de columnas para las matrices:"
    Leer cols_tot
    
    Definir grilla_uno, grilla_dos, grilla_suma Como Real
    Dimension grilla_uno[filas_tot, cols_tot]
    Dimension grilla_dos[filas_tot, cols_tot]
    Dimension grilla_suma[filas_tot, cols_tot]
    
    Escribir "Carga de la primera matriz:"
    Para idx_f <- 1 Hasta filas_tot Con Paso 1 Hacer
        Para idx_c <- 1 Hasta cols_tot Con Paso 1 Hacer
            Escribir "Ingrese el valor para la fila ", idx_f, " y columna ", idx_c, ":"
            Leer grilla_uno[idx_f, idx_c]
        FinPara
    FinPara
    
    Escribir "Carga de la segunda matriz:"
    Para idx_f <- 1 Hasta filas_tot Con Paso 1 Hacer
        Para idx_c <- 1 Hasta cols_tot Con Paso 1 Hacer
            Escribir "Ingrese el valor para la fila ", idx_f, " y columna ", idx_c, ":"
            Leer grilla_dos[idx_f, idx_c]
        FinPara
    FinPara
    
    Para idx_f <- 1 Hasta filas_tot Con Paso 1 Hacer
        Para idx_c <- 1 Hasta cols_tot Con Paso 1 Hacer
            grilla_suma[idx_f, idx_c] <- grilla_uno[idx_f, idx_c] + grilla_dos[idx_f, idx_c]
        FinPara
    FinPara
    
    Escribir "El resultado de la suma de las matrices es:"
    Para idx_f <- 1 Hasta filas_tot Con Paso 1 Hacer
        Para idx_c <- 1 Hasta cols_tot Con Paso 1 Hacer
            Escribir Sin Saltar grilla_suma[idx_f, idx_c], "   "
        FinPara
        Escribir ""
    FinPara
FinAlgoritmo