class Comment < ActiveRecord::Base
  belongs_to :article

  validates :author, presence: {
    message: "Vous devez renseigner un nom d'auteur pour chaque commentaire."
  }

  validates :content, presence: {
    message: "Un commentaire ne peut être vide!"
  }
end
