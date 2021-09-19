class Type < ApplicationRecord
    has_many :bookmarks, dependent: :destroy

    def self.bookmark_type
        types = Type.all
        result = {}
        types.each do |type|
            result[type.name] = type.bookmarks.count
        end
        result
    end

end
