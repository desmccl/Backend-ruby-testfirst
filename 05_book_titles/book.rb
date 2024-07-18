class Book
    attr_accessor :title

    def initialize(title = "")
      @title = title
    end
  
    def title
      capitalize_title(@title)
    end
  
    private
  
    def capitalize_title(title)
      little_words = %w[a an and in of the]
      words = title.split(" ")
      words.each_with_index do |word, index|
        if index == 0 || !little_words.include?(word.downcase)
          word.capitalize!
        end
      end
      words.join(" ")
    end
end
