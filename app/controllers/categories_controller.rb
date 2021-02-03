class CategoriesController < ApplicationController

    def index
      @categories = Category.order('name ASC')
    end

    def show
      @category = Category.find(params[:id])
    end

    def new
      @category = Category.new
    end

    def create
      # Instantiate a new object using form parameters
      @category = Category.new(category_params)
      # Save the object
      if @category.save
        # If save succeeds, redirect to the index action
        flash[:notice] = "*** Category has been saved"
        redirect_to(categories_path)
      else
        # If save fails, redisplay the form so user can fix problems
        render('new')
      end
    end

    def edit
      @category = Category.find(params[:id])
    end

    def update
      @category = Category.find(params[:id])
      if @category.update(category_params)
        flash[:notice] = "*** Category has been updated"
        redirect_to(categories_path)
      else
        render('edit')
      end
    end

    def delete
      @category = Category.find(params[:id])
    end

    def destroy
      @category = Category.find(params[:id])
      @category.destroy
      flash[:notice] = "*** Category has been deleted"
      redirect_to(categories_path)
    end

    private

      def category_params
        params.require(:category).permit(
          :name

        )
      end
  end
