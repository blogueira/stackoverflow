from collections import Counter

# def frequencia(x):
#    palavras = []
#    freq_palavras = []
#    for p in x:
#        if p in palavras:
#            indice = palavras.index(p)
#            freq_palavras[indice] += 1
#        else:
#            palavras.append(p)              
#        return palavras, freq_palavras


def imprimeIndice(lista):
    for indice, palavra in enumerate(lista):
        print(indice, palavra)



# listaP = [word.split(' ') for word in open("test", 'r').readlines()]

texto = ((open("test", 'r').readlines())[0]).replace('.', '').replace(',', '')
lista = texto.split(' ')

#imprimeIndice(sorted(lista))

contagem = Counter(lista)
print(contagem)


print(lista)
print("bacana e triste ao mesmo tempo")
print(lista[0])
