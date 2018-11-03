class RockPaperScissorsController < ApplicationController
  def play
    @throw = current_user.throw
    @comp_throw = ['rock', 'paper', 'scissors'].sample
    @wins = 0
  end
  def start
    current_user.throw = nil
    current_user.save
    redirect_back(fallback_location: rps_path)
  end
  def rock
    current_user.throw = 'rock'
    current_user.save
    redirect_back(fallback_location: rps_path)
  end
  def paper
    current_user.throw = 'paper'
    current_user.save
    redirect_back(fallback_location: rps_path)
  end
  def scissors
    current_user.throw = 'scissors'
    current_user.save
    redirect_back(fallback_location: rps_path)
  end

end
