class SpeakerRolesController < ApplicationController

  def index
    @speaker_roles = SpeakerRole.order('id ASC')
  end

  def show
    @speaker_role = SpeakerRole.find(params[:id])
  end

  def new
    @speaker_role = SpeakerRole.new
  end

  def create
    # Instantiate a new object using form parameters
    @speaker_role = SpeakerRole.new(speaker_role_params)
    # Save the object
    if @speaker_role.save
      # If save succeeds, redirect to the index action
      flash[:notice] = "*** SpeakerRole has been saved"
      redirect_to(speaker_roles_path)
    else
      # If save fails, redisplay the form so role can fix problems
      render('new')
    end
  end

  def edit
    @speaker_role = SpeakerRole.find(params[:id])
  end

  def update
    @speaker_role = SpeakerRole.find(params[:id])
    if @speaker_role.update(speaker_role_params)
      flash[:notice] = "*** Speaker Role has been updated"
      redirect_to(speaker_roles_path)
    else
      render('edit')
    end
  end

  def delete
    @speaker_role = SpeakerRole.find(params[:id])
  end

  def destroy
    @speaker_role = SpeakerRole.find(params[:id])
    @speaker_role.destroy
    flash[:notice] = "*** Speaker Role has been deleted"
    redirect_to(speaker_roles_path)
  end

  private

    def speaker_role_params
      params.require(:speaker_role).permit(
        :role

      )
    end
end
