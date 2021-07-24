




















require_relative 'word_char.rb'
#require_relative 'sortHash.rb'
require 'test/unit'

raw_text = %{The problem breaks down into two parts. First, given some text
as a string, return a list of words. That sounds like an array. Then, build
a count for each distinct word. That sounds like a use for a hash---we can
index it with the word and use the corresponding entry to keep a count.}

wordlist = conciseFormula(raw_text)
counter = letsHashitUp(wordlist)
# sort_by returns a subset list of key,value pair in superset list
# [[],[],[]] format return
n_count = counter.sort_by { | word, count |  count } # looking at key,value pair frm th code block sort using value ie count
top_five = n_count.last(5); # returns the last five 

for i in 0...5
    word = top_five[i][0]
    count = top_five[i][1]
    puts "#{word} .... #{count}"
end

# Test/unit module || Framewwork allows this kind of testing using the assert_equal mtd
class Testing < Test::Unit::TestCase
    def test_empty_str()
        assert_equal([],conciseFormula(""))
        assert_equal([],conciseFormula("   "))
    end
     
    def test_single_str()
        assert_equal(["cats"],conciseFormula("cats"))
        assert_equal(["cats"],conciseFormula("  cats  "))
    end

    def test_much_words()
        assert_equal(["the","quick", "brown", "fox" , "jumps" ,"over","a","lazy","dog"],
                    conciseFormula("The quick brown fox jumps over a lazy dog"))
    end

    def test_punc_marks()
        assert_equal(["the", "cat's", "mat"], conciseFormula("<The!> cat's, -mat."))
    end

end
 # Fibonnaci series
 def fib_num2max(max)
     i1, o1 = 1,1
     while (i1 <= max)
         yield i1
         i1, o1 = o1, i1 + o1
     end
 end
 puts "Printing the Fibonacci series"
 fib_num2max(100) {|f| print f, " "}

 class ErraticArray
     def find
         each do |value|
             return value if yield(value)
         end
     end
 end
 puts
 p [2,4,6,2,43,56]
 p [2,4,6,2,43,56].find {|v| v * v > 30}

 ['Q','l','K'].collect{ |x| print x.succ, " " }

 f = File.open("line.rb")
 f.each.with_index  do |line,index|
     puts "line at #{index}: #{line}"
 end

 f.close()

 triangular_nums = Enumerator.new do |yielder|
     number = 0
     count = 1
     loop do
         number += count
         count += 1
         yielder.yield number
     end
 end

 5.times { puts triangular_nums.next, " " }

 def infinite_select(enum,&block)
     Enumerator.new do |yielder|
         enum.each do |value|
             yielder.yield(value) if block.call(value)
         end
     end
 end

              p infinite_select(triangular_nums) {|val| val % 10 == 0 }.first(4)
              puts
              p infinite_select(triangular_nums) {|val| val % 10 == 0  && val.to_s =~ /3/ }.first(5)

 # Enumerator lazy Methods
  def Integer.all
      Enumerator.new do |yielder, n: 0|
          loop do
              yielder.yield(n += 1)
          end
      end.lazy
  end
 
  p Integer.all.first(20)
