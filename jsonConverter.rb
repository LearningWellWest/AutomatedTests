puts "Running json-converter"

  text = File.read("cucumber.json")

#replace å and Å
  text = text.gsub(/å(?=(?:[^"]*"[^"]*")*[^"]*\Z)/ , "&aring;")
  text = text.gsub(/Å(?=(?:[^"]*"[^"]*")*[^"]*\Z)/, "&Aring;")
#replace ä and Ä
  text = text.gsub(/ä(?=(?:[^"]*"[^"]*")*[^"]*\Z)/, "&auml;")
  text = text.gsub(/Ä(?=(?:[^"]*"[^"]*")*[^"]*\Z)/, "&Auml;")
#replace ö and Ö
  text = text.gsub(/ö(?=(?:[^"]*"[^"]*")*[^"]*\Z)/, "&ouml;")
  text = text.gsub(/Ö(?=(?:[^"]*"[^"]*")*[^"]*\Z)/, "&Ouml;")
File.open(file_name, "w") { |file| file.puts text }
