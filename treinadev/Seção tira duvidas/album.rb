require_relative 'gravadora.rb'

class Album
    attr_accessor :name, :artist # Things that don't change
    attr_accessor :record_company # Thing that can change

    def initialize(nome: , artista:, gravadora:)
        @name = nome
        @artist = artista
        @record_company = gravadora  
    end
end

gravado = Gravadora.new
album = Album.new(nome: 'Awake', artista: 'Skilet', gravadora: gravado)

album.record_company.nome = 'Lady gaga'
puts album.record_company.nome

album.artist = 'Nirvana'
puts album.artist