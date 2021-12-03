class Artist < ApplicationRecord
    has_many :tracks
    has_many :playlists, through: :tracks
    validates :name, presence: true, uniqueness: true



    # def capitalize_all_words
    #     word_arr = self.name.split(" ")
    #     capitalized_words_arr = word_arr.map{|word| word.capitalize}
    #     name = capitalized_words_arr.join(" ")
    #     self.name = name
    # end

    # def unique_with_all_lowercase
    #     artist = Artist.find_by(name: self.name)
    #     errors.add(:name, "Name must be case-sensitively unique") if artist 
    # end


end

