class RolesController < ApplicationController
  def index
    @roles = Role.order('id ASC')
  end

  def show
    @role = Role.find(params[:id])
  end

  def new
    @role = Role.new
  end

  def create
    # Instantiate a new object using form parameters
    @role = Role.new(role_params)
    # Save the object
    if @role.save
      # If save succeeds, redirect to the index action
      flash[:notice] = "*** Role has been saved"
      redirect_to(roles_path)
    else
      # If save fails, redisplay the form so role can fix problems
      render('new')
    end
  end

  def edit
    @role = Role.find(params[:id])
  end

  def update
    @role = Role.find(params[:id])
    if @role.update(role_params)
      flash[:notice] = "*** Role has been updated"
      redirect_to(roles_path)
    else
      render('edit')
    end
  end

  def delete
    @role = Role.find(params[:id])
  end

  def destroy
    @role = Role.find(params[:id])
    @role.destroy
    flash[:notice] = "*** Role has been deleted"
    redirect_to(roles_path)
  end

  private

    def role_params
      params.require(:role).permit(
        :role

      )
    end
end
