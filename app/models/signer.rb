class Signer < ActiveRecord::Base
  validates :first_name, :last_name, :age, :email, :address, presence: true
  validates :email, uniqueness: true
  validates_numericality_of :age, :only_integer => true, :greater_than_or_equal_to => 18
end
