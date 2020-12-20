class Post < ApplicationRecord
   belongs_to :destination
   belongs_to :blogger
    validates_presence_of :title
   validates :content, length: {minimum: 100}
end



