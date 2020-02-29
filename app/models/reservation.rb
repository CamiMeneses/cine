# frozen_string_literal: true

class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :seat
  has_one :event, through: :seat
  has_one :movie, through: :event

  validates_presence_of :user, :seat
end
