def echo(text)
	text
end

def shout(text)
	text.upcase
end

def repeat(text, times = 2)
	((text + " ") * times).strip
end

def start_of_word(text, letters)
	text[0...letters]
end

def first_word(text)
	last_letter = text.index(" ")
	text[0...last_letter]
end

def titleize(text)
	small_words = ["on", "the", "and", "over"]
	text.split(" ").map.with_index do |w, i|
		unless (small_words.include? w) and (i > 0)
			w.capitalize
		else
			w
		end
	end.join(" ")
end
