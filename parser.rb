# encoding: utf-8
require 'yaml'

text_file = File.new('sample_text.txt')
lines = IO.readlines(text_file)
container = Hash.new()
lines.each_with_index do|line,index|
	# rescue line is for invalid byte sequence errors concerned with encoding issues
	begin
	 	words = line.split(/\t/)
	rescue => ArgumentError
		puts "Encoding Error at line #{index}"
	end
	container[index] = {eng: "#{words.shift}",verb_type: "#{words.shift}",burmese: "#{words.shift}"}
end

File.open("sample_text.yml", "w") { |file| YAML.dump(container, file) }