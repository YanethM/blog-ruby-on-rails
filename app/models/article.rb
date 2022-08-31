class Article < ApplicationRecord
  include Visible
  has_many :comments, dependent: :destroy
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable
end
