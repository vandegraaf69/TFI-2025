Algoritmo RendimientoSimple
    Definir monto_inversor, lapso_temporal, cuota_fija, beneficio_total Como Real
    
    cuota_fija <- 0.05
    
    Escribir "La tasa de interés establecida es del: ", cuota_fija
    
    Escribir "Digite el monto del capital:"
    Leer monto_inversor
    
    Escribir "Digite el periodo de tiempo:"
    Leer lapso_temporal
    
    beneficio_total <- monto_inversor * cuota_fija * lapso_temporal
    
    Escribir "El interés generado es de: ", beneficio_total
FinAlgoritmo