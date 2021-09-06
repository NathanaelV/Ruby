require 'csv'

puts "\nProcessando Arquivos CSV\n\n"

file = File.read('./data/Contas 05.csv')

csv = CSV.parse(file, headers: true)

csv.each do |row|
    expense = row.to_h # Salvar o HASH na variável expense
    category_file_path = "./Categories/#{expense['Category']}.csv"
    category_file = File.open(category_file_path, "a+")
    
    if category_file.size == 0
        category_file.puts csv.headers.join(',')
    end
    category_file.write row
    category_file.close
end

