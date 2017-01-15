class BarbecuesController < ApplicationController
  before_action :authorize_user, only: [:new, :create, :show]

  def index
    @barbecues = Barbecue.order(:date)
  end

  def show
    # Don't add any code to this show action.
    # Implement your barbecue API in another action.
  end

  def new
    unless current_user
      redirect_to(barbecues_path)
    end
      @bbq = Barbecue.new
        
  end
  

  def create
    bbq_params = params.require(:barbecue).permit(:title, :venue, :date)
    @bbq = Barbecue.new(bbq_params)

    unless @bbq.save
      render(:new)
    else
      redirect_to(barbecues_path)
    end
  end

  private
  def authorize_user
    unless current_user
      # flash = 'Please log in or register'  this is not working.
      redirect_to new_user_session_path
    end
  end



end
