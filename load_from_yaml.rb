require 'yaml'

words_hash = File.open('ornagai.yml') { |file| YAML.load(file) }
#=========Usage==============#
# words_hash.each do|key,nested_hash|
# 	#output first 50 words for show
# 	puts "#{key}: #{nested_hash} if(key< 50)
#   or you can save each hash value to db :)
# end

50.times do|i|
	puts "#{i}=> #{words_hash[i]}"
end