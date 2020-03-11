class CashRegister

    attr_accessor :total
    attr_accessor :items
    
    def initialize(discount=0)
        self.items = []
        self.total = 0
        @discount = discount
    end

    def discount
        @discount * 1.0
    end

    def add_item(title, price, quantity=1)
        @title = title
        @quantity = quantity
        @price = price
        @total += (@price * @quantity)
        i = 0
        while i < @quantity do 
            self.items << @title
            i += 1
        end
    end

    def apply_discount
        if discount > 0
            @price = (@discount / 100.0) * @price
            self.total -= @price
            return "After the discount, the total comes to $#{self.total.to_i}."
        else
            return "There is no discount to apply."
        end


    end

    def void_last_transaction
        @total -= (@price * @quantity)
    end

end


