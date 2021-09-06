require 'csv'
require_relative './lib/category'
require_relative './lib/expense'
require_relative './lib/category_file'
require_relative './lib/file_processor'
require 'fileutils'

data_dir = "#{__dir__}/data"

puts "\nProcessando Arquivos CSV\n\n"

Dir.each_child(data_dir).each do |filename|
    fp = FileProcessor.new("./data/#{filename}")
    fp.process()
    FileUtils.mv("./data/#{filename}", "./Arquivos processados/")
end


CategoryFile.all.each do |cf|
    c = Category.new(cf.category_name, cf.content)
    puts c
    puts c.expenses_by_month
    puts "-------------------"
end
