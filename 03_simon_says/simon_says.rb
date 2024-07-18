#write your code here

def echo(phrase)
    phrase
end

def shout(phrase)
    phrase.upcase
end

def repeat(phrase, times = 2)
    ([phrase] * times).join(' ')
end

def start_of_word(word, number)
    word[0, number]
end

def first_word(phrase)
    phrase.split.first
end

def titleize(title)
    little_words = %w[and over the]
    words = title.split
    words.each_with_index.map do |word, index|
      if little_words.include?(word) && index > 0
        word
      else
        word.capitalize
      end
    end.join(' ')
  end