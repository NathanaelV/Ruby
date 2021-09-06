class FileProcessor
    attr_reader :file_path 

    def initialize(file_path)
        @file_path = file_path
    end 

    def process()
        file = File.read(file_path) 
        csv = CSV.parse(file, headers: true)
        csv.each do |row|
            expense = row.to_h
            category = fetch_category(expense)
            CategoryFile.new(category).add_line(row)
        end
    end

    private
    def fetch_category(expense)
        return expense["Category"] if expense["Category"]
        expense["Amount"].to_f.positive? ? "Interest" : "Payment"
    end
end
