puts "Running char-converter"
ARGV.each do |file_name|
  text = File.read(file_name)

#replace å and Å
  text = text.gsub("å", "&aring;")
  text = text.gsub("Å", "&Aring;")
#replace ä and Ä
  text = text.gsub("ä", "&auml;")
  text = text.gsub("Ä", "&Auml;")
#replace ö and Ö
  text = text.gsub("ö", "&ouml;")
  text = text.gsub("Ö", "&Ouml;")

# N&auml;r -> När
text = text.gsub("N&auml;r", "När")
# S&aring; -> Så
text = text.gsub("S&aring;", "Så")

File.open(file_name, "w") { |file| file.puts text }
end

