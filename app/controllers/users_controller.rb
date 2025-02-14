class UsersController < ApplicationController
    before_action :authenticate_user!
  
    def show
      @borrowings = current_user.borrowings.includes(:book)
    end
  end