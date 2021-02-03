class EventsController < ApplicationController
  def index
    @events = Event.order('date_from DESC')
  end

  def show
    @event = Event.find(params[:id])
  end

  def show_sessions
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    # Instantiate a new object using form parameters
    @event = Event.new(event_params)
    # Save the object
    if @event.save
      # If save succeeds, redirect to the index action
      flash[:notice] = "*** Event has been saved"
      redirect_to(events_path)
    else
      # If save fails, redisplay the form so user can fix problems
      render('new')
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    if @event.update(event_params)
      flash[:notice] = "*** Event has been updated"
      redirect_to(event_path(@event))
    else
      render('edit')
    end
  end

  def delete
    @event = Event.find(params[:id])
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    flash[:notice] = "*** Event has been deleted"
    redirect_to(events_path)
  end

  private

    def event_params
      params.require(:event).permit(
        :event_name,
        :date_from,
        :date_to,
        :category_id,
        :host_id

      )
    end
end
