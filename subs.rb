def substrings(word,array)
    #I have strung a number of functions here for fun! It can be simply rewritten a number of ways, such as separating array.map{|x| word.downcase.scan(/#{x}/)} and flatten... into two more legible chunks!
    array.map{|x| word.downcase.scan(/#{x}/)}.flatten.reduce(Hash.new(0)) do |word,sub|
           word[sub] += 1
           word
      end
    end