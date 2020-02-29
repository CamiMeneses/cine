# frozen_string_literal: true

class EventsController < ApplicationController
  before_action :movie, only: [:index, :show, :new, :create, :edit]
  before_action :event, only: [:show, :edit, :destroy]

  def index
    @event = movie.events.all
  end

  def show; end

  def new
    @event = Event.new
  end

  def create
    @event = movie.events.create(events_params)
    event.update(time_end: event.set_time_end)
    event.update(movie_id: @movie.id)

    @event.update_seats
    redirect_to movie_events_path
  end

  def edit; end

  def update
    event.update(events_params)
    event.update(
      time_end: event.set_time_end,
      movie_id: params[:movie_id],
      capacity: seats
    )

    event.update_seats

    redirect_to movie_events_path
  end

  def destroy
    event.destroy

    redirect_to movie_events_path
  end

  private

  def event
    @event ||= Event.find(params[:id])
  end

  def movie
    @movie ||= Movie.find(params[:movie_id])
  end

  def seats
    capacity > 100 ? 100 : capacity
  end

  def capacity
    event.capacity
  end

  def events_params
    params.require(:event).permit(:date, :time_start, :time_end, :capacity, :hall)
  end
end
