class HostsController < ApplicationController


      def index
        @hosts = Host.order('name ASC')
      end

      def show
        @host = Host.find(params[:id])
      end

      def new
        @host = Host.new
      end

      def create
        # Instantiate a new object using form parameters
        @host = Host.new(host_params)
        # Save the object
        if @host.save
          # If save succeeds, redirect to the index action
          flash[:notice] = "*** Host has been saved"
          redirect_to(hosts_path)
        else
          # If save fails, redisplay the form so user can fix problems
          render('new')
        end
      end

      def edit
        @host = Host.find(params[:id])
      end

      def update
        @host = Host.find(params[:id])
        if @host.update(host_params)
          flash[:notice] = "*** Host has been updated"
          redirect_to(hosts_path)
        else
          render('edit')
        end
      end

      def delete
        @host = Host.find(params[:id])
      end

      def destroy
        @host = Host.find(params[:id])
        @host.destroy
        flash[:notice] = "*** Host has been deleted"
        redirect_to(hosts_path)
      end

      private

        def host_params
          params.require(:host).permit(
            :name,
            :link

          )
        end


end
