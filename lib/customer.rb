class Customer
  attr_reader :name

  @@customers = []

  def  initialize(options={})
       @name = options[:name]
       @id = @@customers.length
       add_to_customer(@name)
  end

  def self.all
    @@customers
  end


  def add_to_customer(new_name)
    @@customers.each do |customer|
      if customer.name == new_name
        puts "#{new_name} already exits"
      else
        @@customers << self #add this tin instance of customers
      end
    end
  end


end
