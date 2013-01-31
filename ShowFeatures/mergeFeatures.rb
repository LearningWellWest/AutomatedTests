File.open('all_features.txt','w') { |mergedFile|
	Dir.glob("features/*.feature").each { |file|
		mergedFile<<"\n********* "+ File.basename(file)+" *********\n\n"
 		File.readlines(file).each { |line|
 		mergedFile << line
		}
		
	} 
}
