class Category
    attr_reader :name, :expenses

    def initialize(name, data)
        @name = name
        @expenses = []
        build_expenses(data)
    end

    def total_amount
        expenses.sum(&:amount)
    end

    def expenses_by_month
        result = ""
        expenses.group_by(&:month).each_pair do |k,v|
            result << "#{k}\t#{v.sum(&:amount)}\n"
        end
        result
    end

    def to_s
        "#{name()}\t Total Gasto: #{total_amount}"
    end
 
    private

    def build_expenses(data)
        csv_data = CSV.parse(data, headers: true)
        csv_data.each do |row|
            expense_hash = row.to_h
            @expenses << Expense.new(company: expense_hash["Company"],
                                     date: expense_hash["Date"],
                                     amount: expense_hash["Amount"],
                                     category: self)
        end
    end
end
