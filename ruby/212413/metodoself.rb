class AnimalFantastico

  @@numero_de_animais = 0
  @tipo

  def self.aumentar_numero
    @@numero_de_animais += 1
  end
  
  def initialize(tipo)
    @tipo = tipo
  end

  def numero
    @@numero_de_animais
  end
end

  
ponei = AnimalFantastico.new('ponei')
AnimalFantastico.aumentar_numero
print (ponei.numero)
