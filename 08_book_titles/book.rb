class Book
	attr_accessor :title

	def title
		conjunctions = ["a", "the", "and", "over", "an"]
		prepositions = ["in", "on", "at", "of"]
		@title.split(" ").map.with_index do |word, index|
			unless ((conjunctions.include? word) || (prepositions.include? word)) && (index > 0)
				word.capitalize
			else
				word
			end
		end.join(" ")
	end
end
