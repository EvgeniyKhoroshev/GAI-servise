class RequiresController < ApplicationController
  def index
    @require = Requires.new
  end
end
