require 'test/unit' # imports the ruby test framework module

def wrds2str(string)
    string.downcase.scan(/[\w']+/)
end

def counter(lists)
    counts = Hash.new(0)
    for word in lists
        counts[word] += 1
    end
    counts
end

counter(['Lokogno','Houses','multiFame','Nigeria'])

def hashNcodes(timeLine)
    counts = {Fame: 'History', Logistics: 'Cdstype', Engineer: 'Breeding'}
    for word in timeLine 
        if counts.key?(word)
            counts[word] += 1
        else
            counts[word] = 1
        end
    end
    counts
end

p hashNcodes(['History','made','Engineers', 'think','Logistics','twice'])

rawT = %{The problem breaks down into two parts. First, given some text
as a string, return a list of words. That sounds like an array. Then, build
a count for each distinct word. That sounds like a use for a hash---we can
index it with the word and use the corresponding entry to keep a count.}

words = wrds2str(rawT)
counts = counter(words)
sorted = counts.sort_by {|count,value|value}
top5 = sorted.last(5)

for i in 0...5
    key = top5[i][0] # reps the position of key x(pos 0) => y(pos 1)
    value = top5[i][1] # reps the position of value
    puts "#{key}: => #{value}"
end

class TestWrdsFrmStrings < Test::Unit::TestCase # extends the default ruby type framework
    def wrds2str(string)
        string.downcase.scan(/[\w']+/)
    end
    def test_emptyString
        assert_equal([],wrds2str(""))
        assert_equal([],wrds2str("  "))
    end
    def test_puncs
        assert_equal(["the","man", "is","healthy"],wrds2str("<the!> man is healthy"))
    end
    def test_single
        assert_equal(["cat"], wrds2str("cat"))
        assert_equal(["cat"], wrds2str("  cat  "))
    end
    def test_many
        assert_equal(["the","cat","sat","on","the","mat"],
                    wrds2str("the cat sat on the mat"))
    end
end

class Array
    def Fibs(max)
        i1, i2 = 1, 1
        while i1 <= max
            yield i1
            i1,i2 = i2,i1 + i2
        end
    end
end
def Find
    each do |value|
        return value if yield value
    end
    nil
end

inst_AR = Array.new()
inst_AR.Fibs(1000) {|value| print value , " " }
puts

f = File.open("/root/Desktop/Tracks.csv")
f.each {|line| print "This line is ", line}

f.each.with_index{|line, index| print "Line #{index} => #{line}"}
f.close

_folks = ["366","Nig","com","baby"].to_enum
_polipo = ["Fame","day","rich"].each

loop do  # call the intelli loop
  puts "#{_folks.next} .... #{_polipo.next}"
end

triangular_nums = Enumerator.new do |yielder| ## explicitly create the enumerator object
    num = 0 ## set values with the code block since an enum object is also enumerable
    count = 1
    loop do   ## continuous but sensitive to detail loop
        num += count
        count += 1
        yielder.yield  num ## finally generate values
    end
end
 # Lets trim down this infinite generation  based on filters 
def infinite_select(enum,&block)
    Enumerator.new do |yielder| 
        enum.each do |val|
            yielder.yield val if block.call(val)
        end
    end
end
 
def integer_aLL
    Enumerator.new do |y, b: 0|
        loop do |v|
            y.yield (b += 1)  #start generating values )))Enumerators are generators((((
        end
    end.lazy
end


#yielder.yield comes about because of the nested nature of yielder 
#to show overall block code should return value to our function
10.times { print triangular_nums.next, " " }
puts
p infinite_select(triangular_nums) {|v|  v % 10 == 0}.first(5)
puts 
p integer_aLL.select{|i| i % 2 == 0}.first(20)
