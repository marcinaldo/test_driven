def translate_word(word)
	vowels = ["a", "e", "i", "o", "u", "y"]

	if vowels.include? (word[0])
		word + "ay"
	elsif word[0..1] == "qu"
		word[2..-1] + "quay"
	elsif !vowels.include? (word[1])
		if word[1..2] == "qu"
			word[3..-1] + word[0] + "quay"
		elsif !vowels.include? (word[2])
			word[3..-1] + word[0..2] + "ay"
		else
			word[2..-1] + word[0..1] + "ay"
		end
	else		
		word[1..-1] + word[0] + "ay"
	end
end

def translate(word)
	if word.include?(" ")
		word.split(" ").map! do |word|
			translate_word(word)
		end.join(" ")
	else
		translate_word(word)
	end
end