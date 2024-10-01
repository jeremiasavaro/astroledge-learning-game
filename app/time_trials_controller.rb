class TimeTrialsController < ApplicationController
  protect_from_forgery with: :null_session

  def update_timer
    time_left = params[:timeLeft].to_i
    session[:time_left] = time_left

    render json: { time_left: time_left, message: 'Tiempo actualizado exitosamente.' }
  end
end
