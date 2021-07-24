require 'gserver'


module Debug
  def debug_stats?
    "#{self.class.name} (id: #{self.object_id}): #{self.name}"
  end
end



class Phonograph
  include Debug
  attr_reader :name
  def initialize(name)
    @name = name
  end
end
:
class EightTrack
  include Debug
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

ph = Phonograph.new("smith wiles")
et = EightTrack.new("loverance awaue")
ph.debug_stats?
et.debug_stats?


class LogServer < GServer

  def initialize
    super(12344) # it calls the init of the GServer and set it to the actual value
  end
  
  def server(client)
    client.puts lobby
  end
  private 
  
  def lobby
    File.open("/var/log/system.log") do |log|
      log.gets
      log.read
  
    end
  end
end

puts "You gave #{ARGV.size} arguments"
p ARGV

line = gets
if line =~ /Perl|Python/
    puts "Scripting Language #{line}"
end

otherLine = line.sub(/Perl/, 'Ruby Rabbi')
lineother = line.gsub(/Python/, 'Ruby Mine')
lineSpace = line.gsub(/ /, "s")
For di
puts "Updated Line is #{line}"

[ 'cat', 'dog', 'horse' ].each {|name| print name, " " }
5.times { print "*" }
3.upto(6) {|i| print i }
('a'..'e').each {|char| print char }

puts

