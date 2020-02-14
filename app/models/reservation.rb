# frozen_string_literal: true

class Reservation < ApplicationRecord
  belongs_to :user
  has_many :seats

  validates_presence_of :user, :seat
end
