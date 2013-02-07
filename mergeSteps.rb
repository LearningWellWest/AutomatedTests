File.open('all_steps.txt','w') { |mergedFile|
	Dir.glob("features/Step/*.rb").each { |file|
		mergedFile<<"\n********* "+ File.basename(file)+" *********\n\n"
 		File.readlines(file).each { |line|
 		mergedFile << line
		}
		
	} 
}
