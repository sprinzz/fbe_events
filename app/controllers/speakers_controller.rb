class SpeakersController < ApplicationController

  def index
    @speakers = Speaker.order('name ASC')
  end

  def show
    @speaker = Speaker.find(params[:id])
  end

  def new
    @speaker = Speaker.new
  end

  def create
    # Instantiate a new object using form parameters
    @speaker = Speaker.new(speaker_params)
    # Save the object
    if @speaker.save
      # If save succeeds, redirect to the index action
      flash[:notice] = "*** Speaker has been saved"
      redirect_to(speakers_path)
    else
      # If save fails, redisplay the form so user can fix problems
      render('new')
    end
  end

  def edit
    @speaker = Speaker.find(params[:id])
  end

  def update
    @speaker = Speaker.find(params[:id])
    if @speaker.update(speaker_params)
      flash[:notice] = "*** Speaker has been updated"
      redirect_to(speakers_path)
    else
      render('edit')
    end
  end

  def delete
    @speaker = Speaker.find(params[:id])
  end

  def destroy
    @speaker = Speaker.find(params[:id])
    @speaker.destroy
    flash[:notice] = "*** Speaker has been deleted"
    redirect_to(speakers_path)
  end

  private

    def speaker_params
      params.require(:speaker).permit(
        :title,
        :name,
        :institution,
        :email,
        :bio,
        :image

      )
    end

end
