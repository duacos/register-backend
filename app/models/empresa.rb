class Empresa < ApplicationRecord
  has_one :politica, dependent: :destroy
  has_one :desarrollo, dependent: :destroy
  has_one :tele, dependent: :destroy
end
