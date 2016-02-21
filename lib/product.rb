


class Product
  attr_reader :title , :id, :price, :stock

  @@products = []

  def  initialize(options={})
       @title = options[:title]
  	   @price = options[:price]
  	   @stock = options[:stock]
       @id = @@products.length
      add_to_product(@title)
      end

def self.all
  @@products
end



def add_to_product(title)
  if !@@products.to_s.include?(self.title)
      @@products << self #add this new instance of Product to the array of ALL instances
    else
      puts "#{@title} already exists"
    end
end


  def self.find_by_title(new_title)
    @@products.each do |product|
       if product.title == new_title
          return product
         end
       end
   end

   def self.in_stock
     @instock = []
     @@products.each do |product|
       if product.stock > 0
         @instock << product
       else
       end
     end
     return @instock
   end




def in_stock?
   self.stock > 0
 end




end
