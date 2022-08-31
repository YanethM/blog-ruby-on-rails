class Comment < ApplicationRecord
  include Visible
  belongs_to :article
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable
end
