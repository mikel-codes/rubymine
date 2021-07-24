puts "You gave #{ARGV.size} arguments"
p ARGV

class BookInStock
    # This attributes create mere access to instance variables to be manipulated externally
    attr_reader :isbn
    # This creates a virtual attribite. now we can read and write from here
    attr_accessor :price
    def initialize(isbn,price)
        @isbn = isbn
        @price = Float(price)
    end
    def to_s
        "#ISBN: #{@isbn}\n#Price: #{@price} "
    end
    def price_in_cents
        Integer(price * 100 + 0.5)
    end
    def price_in_cents=(cents)
        @price = cents / 100
    end
    # These attributes (external facets) are in this case accessor methods
   # def isbn @isbn end  def price @price  end
    # Ruby default attribute methods syntax attr_reader symbol(s) e.g :isbn, :price
end

N = BookInStock.new("03948756338484", 2.4566)
puts N
puts "Book price is ##{N.price} "
N.price = N.price * 30;
puts "Current price is ##{N.price}"
puts "Price in cents ##{N.price_in_cents}"
N.price_in_cents = N.price * 0.025
p N

