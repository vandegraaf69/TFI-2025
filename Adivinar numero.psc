Algoritmo DescubrirValor
    Definir valor_incognito, valor_ingresado, brecha Como Entero
    
    valor_incognito <- Azar(25) + 1
    
    Repetir
        Escribir "Digite su propuesta numérica (1 al 25):"
        Leer valor_ingresado
        
        brecha <- abs(valor_incognito - valor_ingresado)
        
        Si brecha = 0 Entonces
            Escribir "¡El número es correcto!"
        Sino
            Si brecha <= 3 Entonces
                Escribir "El número está cercano."
            Sino
                Escribir "El número está alejado."
            FinSi
        FinSi
        
    Hasta Que valor_ingresado = valor_incognito
FinAlgoritmo