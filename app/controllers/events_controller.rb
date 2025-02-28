# frozen_string_literal: true

class EventsController < ApplicationController
  before_action :set_event, only: %i[show edit update destroy]

  # GET /events or /events.json
  def index
    start_date = params.fetch(:start_date, Date.today).to_date
    @events = Event.where(start_time: start_date.beginning_of_month.beginning_of_week..start_date.end_of_month.end_of_week)
    @events_group_by_date = Event.where(start_time: start_date.beginning_of_month..start_date.end_of_month)
                                 .where('start_time > ?', Date.today)
                                 .group_by { |event| event.start_time.to_date }
  end

  def filter_by_date
    filter_date = Date.parse(params[:date]) # Convert the string to a Date object
    start_of_day = filter_date.beginning_of_day
    end_of_day = filter_date.end_of_day
    @events = Event.where(start_time: start_of_day..end_of_day)
    render partial: 'events/popover', locals: { events: @events, date: filter_date }
  end

  # GET /events/1 or /events/1.json
  def show; end

  # GET /events/new
  def new
    @start_date = params.fetch(:start_date, Date.today).to_date
    @event = Event.new
  end

  # GET /events/1/edit
  def edit; end

  # POST /events or /events.json
  def create
    @event = Event.new(event_params)

    respond_to do |format|
      if @event.save
        format.html { redirect_to events_path, notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1 or /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to events_path, notice: 'Event was successfully updated.' }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1 or /events/1.json
  def destroy
    @event.destroy!

    respond_to do |format|
      format.html { redirect_to events_url, notice: 'Event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_event
    @event = Event.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def event_params
    params.require(:event).permit(:title, :description, :start_time, :end_time, :location)
  end
end
