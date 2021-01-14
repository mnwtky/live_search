class EventsController < ApplicationController
  before_action :search_event, only: [:index, :search]


  def index
    @events = Event.includes(:user).order('created_at DESC').limit(4)
    @ranks = Event.find(Like.group(:event_id).order('count(event_id) DESC').limit(4).pluck(:event_id))
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  def search
    @results = @a.result(distinct: true).page(params[:page]).per(8).order('created_at DESC')
    p @results
  end

  private
  def event_params
    params.require(:event).permit(:image, :title, :price, :address, :event_date, :opening_time, :start_time, :end_time, :ticket_reservation, :info, :area_id, :genre_id).merge(user_id: current_user.id)
  end

  def search_event
    @a = Event.ransack(params[:q])
  end

end