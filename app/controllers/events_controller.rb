class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def create
    body = JSON.parse(request.body.read, symbolize_names: true)
    payloads = body.is_a?(Array) ? body : [body]
    payloads.each { |payload| Event.create(payload: payload) }
    render nothing: true
  end
end
