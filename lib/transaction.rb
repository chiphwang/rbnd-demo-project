class Transaction
  attr_reader :product, :customer, :id

  @@transactions = []

  def  initialize(customer,product)
       @customer = customer
  	   @product = product
       @id = @@transactions.length + 1
       @@transactions << self
       decrement_stock(@product)
      end

      def self.all
        @@transactions
      end


def decrement_stock(product)
  product.stock = product.stock - 1
end


  def self.find(check_id)
    @@transactions.each do |transaction|
      if transaction.id == check_id
      return transaction
      end
    end
  end



end
