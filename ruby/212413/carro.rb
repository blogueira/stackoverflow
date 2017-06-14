class Carro
  @@voa = false

  def self.voa(v)
    @@voa = v
  end

  def initialize(marca)
    @marca = marca
  end

  def explica
    if @@voa
      print 'eu sou um ' + @marca.to_s + ' e eu posso voar!'
    else
      print 'eu sou um ' + @marca.to_s + ' e eu nao posso voar ainda! :('
    end
  end
end

carros = []
carros << Carro.new('chevrolet')
carros << Carro.new('ford')
carros << Carro.new('volkswagen')
carros << Carro.new('fiat')

carros.each { |c| puts c.explica }
Carro.voa(true)
carros.each { |c| puts c.explica }
