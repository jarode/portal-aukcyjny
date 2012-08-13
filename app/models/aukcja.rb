class Aukcja < ActiveRecord::Base
  attr_accessible :budzet, :nazwa, :opis, :termin
  validates :budzet, :nazwa, :opis, presence: true
end
