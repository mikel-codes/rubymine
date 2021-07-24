class Document
  attr :author, :title, :words
  def initialize
    @author = "James"
    @title = "Dust"
    @words = "'move on dai' daily beat"
  end

  def words
    return @words.split(":")
  end

  
  def word_count
    return @words.size
  end

  def about_
    puts "This is self #{self}"
    puts "author is #{self.author}"
    puts "book title is #{self.title}"
    puts "words count is #{word_count}"
  end

  private :word_count
end

doc = Document.new
doc.about_

puts doc

while true 
  print "cmd>", " " 
  cmd = gets
  eval(cmd)

  if cmd =~ /^[qQ]/
    break
  end
end
