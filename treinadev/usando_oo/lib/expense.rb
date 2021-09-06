class Expense
    attr_reader :company, :amount, :category

    # Keywords arguments
    def initialize(company:, date:, amount:, category:)
        @company = company
        @date = Date.parse(date)
        @amount = amount.to_f
        @category = category
    end

    def to_s
        "#{category}\t#{date}\t#{company}\t#{amount}"
    end

    def date
        "#{@date.day}/#{month}"
    end

    def month
        "#{@date.month}/#{@date.year}"
    end
end