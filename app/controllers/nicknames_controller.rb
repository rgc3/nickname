# Nicknames controller built out with the help of http://www.tutorialspoint.com/ruby-on-rails/rails-controllers.htm
# http://guides.rubyonrails.org/action_controller_overview.html

class NicknamesController < ApplicationController

# The new method could make available to the view a @nickname instance variable by creating a new Nickname:
  def new
    @nickname = Nickname.new
    @nicknames = Nickname.all
  end

  # This action uses POST parameters. They are most likely coming
  # from an HTML form which the user has submitted. The URL for
  # this RESTful request will be "/clients", and the data will be
  # sent as part of the request body.
  def create
    @nickname = Nickname.new(nickname_params)
    if @nickname.save
      redirect_to root_path
    else
      # This line overrides the default rendering behavior, which
      # would have been to render the "create" view.
      render "new"
    end
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def nickname_params
   params.require(:nickname).permit(:n_name)
  end

end
