class TestsController < ApplicationController
  def reset
    User.destroy_all
  end
end