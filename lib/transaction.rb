class Transaction
  attr_reader :product, :customer, :id, :transaction_type

  @@transactions = []

  def  initialize(customer,product,transaction_type="purchase")
       @customer = customer
  	   @product = product
       @id = @@transactions.length + 1
       @transaction_type=transaction_type
       @@transactions << self
       transactiontype(@transaction_type,@product)
      end

      def self.all
        @@transactions
      end


  def self.find(check_id)
    @@transactions.each do |transaction|
      if transaction.id == check_id
      return transaction
      end
    end
  end


  def transactiontype(type,product)
    if type == "purchase"
      product.stock = product.stock - 1
    elsif  type == "returns"
      product.stock = product.stock + 1
   end

 end

 end
