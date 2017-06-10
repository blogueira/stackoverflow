class X
  def initialize(nome, numero, valor)
    @nome = nome
    @numero = numero
    @valor = valor
  end
end

class Y
  def initialize
    @total = []
  end

  def add z
    @total << z
  end
 
  def total
    @total
  end

end

classe_x1 = X.new("Mauricio", "12345", 1200)
classe_x2 = X.new("Luis", "122100", 69.90)

classe_y = Y.new
classe_y.add classe_x1
classe_y.add classe_x2

puts classe_y.total[1]


=begin
for teste in classe_y.total
  p teste.valor
end
=end

