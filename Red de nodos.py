import networkx as red_nx
import matplotlib.pyplot as graficador

enlaces_equipos = {
    1: (2, 3),
    2: (3, 4),
    3: (4, 5),
    4: (5, 6),
    5: (6, 7),
    6: (7, 8),
    7: (8, 1),
    8: (1, 2)
}

while True:
    print("\n--- GESTIÓN DE RED (8 NODOS) ---")
    print("1 - Listar rutas de red")
    print("2 - Detalle de un nodo específico")
    print("3 - Renderizar esquema visual")
    print("4 - Salir del sistema")
    
    eleccion = input("Ingrese una alternativa: ")
    
    if eleccion == "1":
        print("\n[Rutas activas en el sistema]")
        for equipo, conexiones in enlaces_equipos.items():
            print(f"Equipo {equipo} transmite a -> Equipo {conexiones[0]} y Equipo {conexiones[1]}")
            
    elif eleccion == "2":
        nodo_req = int(input("Ingrese el ID del equipo (1 al 8): "))
        if nodo_req in enlaces_equipos:
            saltos = enlaces_equipos[nodo_req]
            print(f"\nEl Equipo {nodo_req} se enlaza directamente con:")
            print(f" -> Salida A: Equipo {saltos[0]}")
            print(f" -> Salida B: Equipo {saltos[1]}")
        else:
            print("\nError: El equipo indicado no existe en la topología.")
            
    elif eleccion == "3":
        print("\nGenerando el diagrama de la red...")
        try:
            esquema = red_nx.DiGraph()
            
            for equipo, conexiones in enlaces_equipos.items():
                esquema.add_edge(f"Eq_{equipo}", f"Eq_{conexiones[0]}")
                esquema.add_edge(f"Eq_{equipo}", f"Eq_{conexiones[1]}")
            
            posiciones = red_nx.circular_layout(esquema)
            
            graficador.figure(figsize=(7, 7))
            
            red_nx.draw(
                esquema, 
                posiciones, 
                with_labels=True, 
                node_size=950, 
                node_color='coral', 
                font_color='black', 
                font_weight='bold',
                arrows=True,
                arrowsize=16,
                edge_color='navy'
            )
            
            graficador.title("Esquema de Comunicación - 2 Saltos por Nodo")
            graficador.axis('off')
            graficador.show()
            
        except Exception as error_visual:
            print(f"\nFallo al inicializar la interfaz gráfica: {error_visual}")
            
    elif eleccion == "4":
        break