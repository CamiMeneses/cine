# frozen_string_literal: true

class SeatsController < ApplicationController
  def index
    @event_capacity = event.capacity
    @seat = Seat.all
  end

  private

  def event
    @event ||= Event.find(params[:event_id])
  end

  def seat_params
    params.require(:seat).permit(:status)
  end
end
