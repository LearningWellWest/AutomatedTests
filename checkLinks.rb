require 'rubygems'
require 'nokogiri'
require 'open-uri'

fail("Usage: checkLinks URL [URL ...]") if ARGV.empty?

File.open('links.html','w') { |mergedFile|
	mergedFile << "
<html>
  <head>
	<link rel='stylesheet' type='text/css' href='default.css' />
    <title>Link test</title>

<script type='text/javascript' src='https://ajax.googleapis.com/ajax/libs/jquery/1.4.4/jquery.js'></script>
<script type='text/javascript'>

$(document).ready(function(){
    $("'"#table_status td.y_n:contains('"works"')"'").css('background-color','#347235');
});
</script>

  </head>
  <body>
<center>
<table border='1' id='table_status'>
<tr>
<th>Link</th>
<th>Status</th>
</tr>
"



ARGV.each do |url|
	begin
  		page = Nokogiri::HTML(open(url))
		
	rescue Exception => e
        	puts "Error: #{e}"
  	else
		hrefs = page.css("a").map do |link|



    		if (href = link.attr("href")) && !href.empty?
		linkToCheck = URI::join(url, href)
		#print link		
		mergedFile << "\n<tr>"
		mergedFile << "<td>"
		mergedFile << linkToCheck
		mergedFile << "</td>"

		begin
	      		
			#io = open(linkToCheck, "User-Agent" => "Zombie")
			open(linkToCheck).read.any?
			
		rescue Exception => e
			mergedFile << "<td class='y_n'>"
			mergedFile << "#{e}"
			mergedFile << "</td>"
			mergedFile << "</tr>"
        		puts "Error: #{e}"
		else	
		
		#print status
		#body = io.read[0, 50]
		mergedFile << "<td class='y_n'>"
		mergedFile << "works"
		mergedFile << "</td>"
		mergedFile << "</tr>"
		end
	    end
			
	  end.compact.uniq
mergedFile << "\n</table></center></body></html>"

end
end
}
