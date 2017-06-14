class Animal
    # _cor 'colorida' # sou local a um metodo
    # @variavel = 'hah' # posso ser lida por varios metodos, sou local a um objeto
    @@cor = 'azul' # eu posso ser acessada em varios objetos O____o
    # $dolares = 0 # posso ser lida everywhere, todos me aceitam, todos me amam
    @@valor_total = 666
    @@meu_aleatorio = nil
    @nome = ''

    def initialize(awesomeness, nome)
        @animal_awesomeness = awesomeness
	@@valor_total = 2
	@nome = nome
    end

    def falar
	    print 'eu sou um animal (valor total: ' + @@valor_total.to_s + '), eu sou ' + @@cor + ' e sou ' + @animal_awesomeness.to_s + "% awesome\n"
    end

    def aumentar
        @animal_awesomeness = @animal_awesomeness + 1
        @@valor_total = @@valor_total + 1
    end

    def self.acrescentar
#         @animal_awesomeness == nil
#        @@valor_total = @@valor_total + 100
         print @animal_awesomeness == nil
	 print @@valor_total == nil
	 print @@valor_total
	 @@meu_aleatorio = Random.rand(50000)
    end

    def fala_maluco
	    print 'meu nome eh ' + @nome + ' e meu aleatorio eh: ' + @@meu_aleatorio.to_s + "\n"
    end

end




print "criando ponei\n"
ponei = Animal.new(100, 'ponei')
ponei.falar


print "criando unicornio\n"
unicornio = Animal.new(300, 'uni')
unicornio.falar

print "aumentando ponei\n"
ponei.aumentar
ponei.falar
unicornio.falar

print
#print "acrescentando ponei\n"
#ponei.acrescentar
#ponei.falar
#unicornio.falar

# Animal.acrescentar
# Animal.acrescentar

# print (Random.rand(13000))

ponei.fala_maluco
unicornio.fala_maluco

print "acrescentando, lol\n"
Animal.acrescentar


ponei.fala_maluco
unicornio.fala_maluco
