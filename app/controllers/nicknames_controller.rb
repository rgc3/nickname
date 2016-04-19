# Nicknames controller built out with the help of http://www.tutorialspoint.com/ruby-on-rails/rails-controllers.htm
# http://guides.rubyonrails.org/action_controller_overview.html

class NicknamesController < ApplicationController

# The new method could make available to the view a @nickname instance variable by creating a new Nickname:
  def new
    @nickname = Nickname.new
  end

  def nickname_params
   params.require(:nicknames).permit(:n_name)
  end

# The first line creates a new instance variable called @nickname that holds a Nickname object built from the data, the user submitted. The nickname_params method is used to collect all the fields from object :nicknames. The data was passed from the new method to create using the params object.
  def create
    @nickname = Nickname.new(nickname_params)
  end

  def list
    @nicknames = Nickname.all
  end

end
