#write your code here

def translate(sentence)
    sentence.split.map do |word|
      translate_word(word)
    end.join(' ')
  end
  
  def translate_word(word)
    vowels = %w[a e i o u]
    qu_phoneme = 'qu'
    sch_phoneme = 'sch'
  
    # Handle punctuation
    punctuation = word.match(/[[:punct:]]$/)
    punctuation = punctuation ? punctuation[0] : ''
    word = word.chomp(punctuation)
  
    # Handle capitalization
    capitalized = word.capitalize == word
    word.downcase!
  
    if vowels.include?(word[0])
      translated_word = word + "ay"
    elsif word.start_with?(sch_phoneme)
      translated_word = word[sch_phoneme.length..-1] + sch_phoneme + "ay"
    elsif word.start_with?(qu_phoneme)
      translated_word = word[qu_phoneme.length..-1] + qu_phoneme + "ay"
    else
      consonant_cluster_length = word.index(/[aeio]/) || word.length
      consonant_cluster = word[0...consonant_cluster_length]
      translated_word = word[consonant_cluster_length..-1] + consonant_cluster + "ay"
    end
  
    translated_word = translated_word.capitalize if capitalized
    translated_word + punctuation
  end
