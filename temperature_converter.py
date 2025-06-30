temperatura = float(input("Informe a temperatura: "))
origem = input("Unidade de origem (C/F/K): ").upper()
destino = input("Unidade de destino (C/F/K): ").upper()

def converter_temp(temp, de, para):
    if de == para:
        return temp
    # Converte tudo para Celsius primeiro
    if de == "F":
        temp = (temp - 32) * 5/9
    elif de == "K":
        temp = temp - 273.15
    
    # Agora de Celsius para destino
    if para == "F":
        return temp * 9/5 + 32
    elif para == "K":
        return temp + 273.15
    else:
        return temp

resultado = converter_temp(temperatura, origem, destino)
print(f"{temperatura}°{origem} = {resultado:.2f}°{destino}")