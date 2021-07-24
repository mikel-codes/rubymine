require_relative "csv_reader"

reader = CSVReader.new

ARGV.each do|csv_file_name|
    STDERR.puts "Processing #{csv_file_name}"
    reader.csv_file_reader(csv_file_name)
end

puts "Total Costs of books in stock = #{reader.total_value_stock}"
puts "Total isbn countdown = #{reader.num_of_each_isbn}"
