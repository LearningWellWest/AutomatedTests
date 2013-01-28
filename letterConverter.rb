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

File.open(file_name, "w") { |file| file.puts text }
end

