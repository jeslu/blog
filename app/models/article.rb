class Article < ApplicationRecord
   
    has_many :comments, dependent: :destroy
    validates :title, presence: true, 
                            length: {minimum: 4, message: ": Tiene que tener mas de 4 caracteres  "}
end
