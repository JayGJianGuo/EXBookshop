class Exorder < ApplicationRecord
  before_create :generate_token

  def generate_token
    self.token = SecureRandom.uuid
  end

  belongs_to :user

  validates :shipping_name, presence: true
  validates :shipping_wechat, presence: true
  validates :shipping_phone, presence: true
  validates :shipping_location, presence: true

  has_many :exbook_lists
end
