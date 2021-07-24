require 'csv'
require_relative 'book_in_stock'

class CSVReader
    def intialize
        @books_stock = [  ]
    end
    def csv_file_reader(csv_file_name)
        CSV.foreach(csv_file_name, headers: true) do |row|
            @books_stock << Books.new(row['ISBN'], row['price'])
        end
    end
    def total_value_stock
        sum = 0.0
        @books_stock.each {|book| sum += book.price}
        sum
    end
    def num_of_each_isbn
        @books_stock.each { |book| puts "ISBN #{book.isbn}" }
    end
end
        
