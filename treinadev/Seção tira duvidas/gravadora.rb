require 'json'
class Gravadora
    attr_accessor :nome
    def initialize(name: 'Fundo de Garagem')
        @nome = name
    end

    # Método para importar o nome de várias gravadoras
    def self.importa(arquivo_path) 
        arquivo = File.read(arquivo_path)
        json = JSON.parse(arquivo)
        json.map do |gravadora|
            Gravadora.new(name: gravadora['nome'])
        end
    end

    def metodo_x
    end
end

grava = Gravadora.new

objeto = Gravadora.importa('data/gravadoras.json')
puts objeto[0].nome

