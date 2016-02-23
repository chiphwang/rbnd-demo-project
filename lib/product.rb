

class Product

  attr_accessor :stock
  attr_reader :title,:price, :brand

  @@products = []

  def initialize(options={})
    @brand = options[:brand]
    @title = options[:title]
  	@price = options[:price]
  	@stock = options[:stock]
    add_to_product(@title)
end

def self.all
  @@products
end



def add_to_product(title)
  if !@@products.to_s.include?(self.title)
      @@products << self #add this new instance of Product to the array of ALL instances
    else
      raise DuplicateProductError, "'#{@title}' already exists."
    end
  end



  def self.find_by_title(check_title)
    @@products.each do |product|
       if product.title == check_title
          return product
         end
       end
   end

def in_stock?
  self.stock > 0
end

  def self.in_stock
    instock=[]
    @@products.each do |product|
      if product.stock > 0
        instock << product
      end
    end
    return instock
  end


  def self.search_brand(brand_search)
  brand=[]
  @@products.each do |product|
      if product.brand == brand_search
      brand << product.title
      else
     end
   end
   return brand
 end



end
