require 'net/http'
require 'json'

class ProfilesController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = current_user
    @currency_rate = fetch_currency_rate
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update(user_params)
      redirect_to profile_path, notice: "Profile updated successfully."
    else
      render :edit
    end
  end

  private

  def fetch_currency_rate
    uri = URI('https://api.privatbank.ua/p24api/pubinfo?json&exchange&coursid=5')
    response = Net::HTTP.get(uri)
    json_response = JSON.parse(response)
    currency_info = json_response.find { |currency| currency['ccy'] == 'USD' }
    currency_info['buy']
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name)
  end
<<<<<<< HEAD
<<<<<<< HEAD
end

Rails.application.routes.draw do

  resource :profile, only: [:show, :edit, :update]
end
=======
end
>>>>>>> f53bf749b736d38e6649e3dac1fc0cf30cfbb74d
=======
end
>>>>>>> f53bf749b736d38e6649e3dac1fc0cf30cfbb74d
