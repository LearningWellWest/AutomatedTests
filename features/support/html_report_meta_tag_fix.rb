def html_report_meta_tag_fix(file_name)
    puts "Running character coding fix on " + file_name
  
    text = File.read(file_name)
  
    #replace the meta tag <meta content="text/html;charset=utf-8"/>
    new_text = text.gsub(/meta content="text\/html;charset=utf-8"/, 'meta http-equiv="Content-Type" content="text/html;charset=utf-8"')
    File.open(file_name, "w") { |file| file.puts new_text }
end