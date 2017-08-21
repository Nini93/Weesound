class RoomsController < ApplicationController
skip_before_action :authentificate!, only: :show

end
