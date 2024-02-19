class Supplier < ApplicationRecord
  has_one :account
  has_and_belongs_to_many :parts
end
