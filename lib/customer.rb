class Customer
  attr_reader :name

  @@customers = []

  def  initialize(options={})
       @name = options[:name]
       @id = @@customers.length
       @purchase=[]
       add_to_customer(@name)
  end

  def self.all
    @@customers
  end


  def add_to_customer(name)
    if !@@customers.to_s.include?(self.name)
        @@customers << self #add this new instance of Product to the array of ALL instances
      else
        puts "#{@name} already exists"
        #raise DuplicateCustomertError, "'#{@name}' already exists."
      end
  end


  def self.find_by_name(check_name)
    @@customers.each do |customer|
       if customer.name == check_name
          return customer
         end
       end
   end

  def purchase(product)
    if product.stock == 0
     puts "#{product.title} is out of stock"
     # raise OutOfStockError, "'#{product.title}' is out of stock."
   else
    @add_to_product=product
    Transaction.new(self,@add_to_product)
   end
end


end
