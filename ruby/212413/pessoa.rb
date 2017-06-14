class Pessoa
  @@pessoas = Array.new
  attr_accessor :nome

  def self.lista_pessoas
    @@pessoas
  end

  def initialize(nome)
    @nome = nome
    @@pessoas << self
  end
end

pessoa_1 = Pessoa.new('Ana')
pessoa_2 = Pessoa.new('Julia')
pessoa_3 = Pessoa.new('Tatiana')

print (Pessoa.lista_pessoas)
