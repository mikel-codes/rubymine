#require 'xmlsimple'
class Parser
  attr :content

  def closure_eod ; puts "Heloo world welcome to closure proogramming "; end

  def xml_parser ; 
    xml_p = XmlSimple.xml_in('project.xml')
    puts xml_p
  end

end


p = Parser.new

content = <<EOD 
howing results for playlist builder.rb script
Search instead for playlist builder.rb scripy
Search Results
Ruby script to create youtube playlist from a list of keywords Example ...
https://gist.github.com/MiketoString/5723545
Build list of videos from keywords.txt file. # Each line is it's own youtube search. #. # 
Setup instructions. #. # Requires ruby to be installed and youtube_it gem 
EOD
print content
index = 0
content.each_line do |line|
  print index, ' ', line , " "
  index += 1
end

def html_escape(s)
  s.to_s.gsub(/&/, "&amp").gsub(/</, "&lt").
    gsub(/>/, "&gt").gsub(/\"/, "&quot")
end

#a = File.open(project.xml)
#html_escape(File.readlines(project.xml))

puts
puts /\d\d:\d\d (AM|PM)/ =~ '10:24 PM'
puts /May/ =~ 'Sometime in June'

print  /\d\d:\d\d (AM|PM)/  =~ '1x:hy pm'
content = 'The Princess And The Monkey
Once upon a time there was a princess...
...and they all lived happily ever after
the End'


puts content =~ /and they all lived happily ever afte.$/
 
puts content =~ /^Once upon a time/
puts  /^The Princess And The Monkey/ =~ content

