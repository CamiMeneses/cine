# frozen_string_literal: true

class Seat < ApplicationRecord
  belongs_to :event
  has_many :reservations

  validates_presence_of :name, :event_id, :price, :status
end
