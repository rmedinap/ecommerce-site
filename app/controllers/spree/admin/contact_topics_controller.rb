module Spree
	module Admin
		class ContactTopicsController < ResourceController

		  # create.wants.html { redirect_to collection_path }
		  # update.wants.html { redirect_to collection_path }
		  #
		  # new_action.response do |wants|
		  #   wants.html {render :action => :new, :layout => !request.xhr?}
		  # end
      def edit
        @contact_topic = Spree::ContactTopic.find(params[:id])
      end

      def show
        @contact_topic = Spree::ContactTopic.includes(:messages).find(params[:id])
      end
		end
	end
end
