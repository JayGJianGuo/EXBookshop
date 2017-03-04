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

  def set_exchange_with!(method)
    self.update_columns(exchange_method: method)
  end

  def exchange!
    self.update_columns(is_chose: true)
  end

  include AASM

  aasm do
    state :exorder_wating_check, initial: true
    state :chose
    state :checked
    state :exorder_cancelled

    event :exchange_happen, after_commit: :exchange! do
      transitions from: :exorder_wating_check, to: :chose
    end

    event :chose do
      transitions from: :chose,  to: :checked
    end

    event :checked do
      transitions from: :checked, to: :exorder_cancelled
    end

    event :cancel_order do
      transitions from: [:exorder_wating_check, :chose], to: :exorder_cancelled
    end
  end
end
