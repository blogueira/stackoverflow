class Teste 
  def novo
    "1"
  end
  def self.testenovo
    "2"
  end
end

teste1 = Teste.new

teste1.novo
# teste1.testenovo # undefined method `testenovo'
Teste.testenovo
