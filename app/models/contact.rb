class Contact < ApplicationRecord
  belongs_to :group

  validates :name, :email, :group_id, presence: true
  
  def gravatar
    hash = Digest::MD5.hexdigest(email.downcase)
    "https://www.gravatar.com/avatar/#{hash}"
  end
end
