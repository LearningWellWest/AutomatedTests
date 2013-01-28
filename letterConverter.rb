puts "Running char-converter"

paths = ["features/*.feature","features/Step/*.rb"]
paths.each do |filepath|

Dir.glob(filepath).each { |file_name|
  text = File.read(file_name)

#replace å and Å
  text = text.gsub(/å(?=(?:[^"]*"[^"]*")*[^"]*\Z)/ , "&aring;")
  text = text.gsub(/Å(?=(?:[^"]*"[^"]*")*[^"]*\Z)/, "&Aring;")
#replace ä and Ä
  text = text.gsub(/ä(?=(?:[^"]*"[^"]*")*[^"]*\Z)/, "&auml;")
  text = text.gsub(/Ä(?=(?:[^"]*"[^"]*")*[^"]*\Z)/, "&Auml;")
#replace ö and Ö
  text = text.gsub(/ö(?=(?:[^"]*"[^"]*")*[^"]*\Z)/, "&ouml;")
  text = text.gsub(/Ö(?=(?:[^"]*"[^"]*")*[^"]*\Z)/, "&Ouml;")

# N&auml;r -> När
text = text.gsub("N&auml;r", "När")
# S&aring; -> Så
text = text.gsub("S&aring;", "Så")

File.open(file_name, "w") { |file| file.puts text }

}
end

