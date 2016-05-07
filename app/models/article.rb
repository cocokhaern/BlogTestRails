class Article < ActiveRecord::Base
  has_many :comments

  validates :title, presence: {
    message: "Vous devez renseigner un titre pour chaque commentaire."
  }

  validates :content, presence: {
    message: "Un article ne peut être vide!"
  }
end
