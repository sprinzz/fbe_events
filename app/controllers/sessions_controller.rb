class SessionsController < ApplicationController
  def index
    @sessions = Session.order('event_ID ASC', 'date ASC', 'time_from ASC')
  end

  def show
    @session = Session.find(params[:id])
  end

  def list
    flash[:notice] = "*** list has been selected"
    @sessions = Session.session_list(params[:id])

  end


  def new
    @session = Session.new
  end

  def create
    # Instantiate a new object using form parameters
    @session = Session.new(session_params)
    # Save the object
    if @session.save
      # If save succeeds, redirect to the index action
      flash[:notice] = "*** Session has been saved"
      redirect_to(sessions_path)
    else
      # If save fails, redisplay the form so user can fix problems
      render('new')
    end
  end

  def edit
    @session = Session.find(params[:id])
  end

  def update
    @session = Session.find(params[:id])
    if @session.update(session_params)
      flash[:notice] = "*** Session has been updated"
      redirect_to(sessions_path)
    else
      render('edit')
    end
  end

  def delete
    @session = Speaker.find(params[:id])
  end

  def destroy
    @session = Session.find(params[:id])
    @session.destroy
    flash[:notice] = "*** Session has been deleted"
    redirect_to(sessions_path)
  end

  private

    def session_params
      params.require(:session).permit(
        :title,
        :description,
        :date,
        :time_from,
        :time_to,
        :event_id,
        :speaker_id

      )
    end
end
