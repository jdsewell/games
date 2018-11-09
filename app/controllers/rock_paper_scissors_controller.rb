class RockPaperScissorsController < ApplicationController
  def play
    # current_user.throw = nil
    # current_user.save
    if current_user.throw != nil
      redirect_to rps_result_path
    end
    @throw = current_user.throw
  end
  def restart
    current_user.throw = nil
    current_user.save
    redirect_to rps_path
  end
  def rock
    current_user.throw = 'rock'
    current_user.save
    # redirect_to rps_result_path
  end
  def paper
    current_user.throw = 'paper'
    current_user.save
    # redirect_to rps_result_path
  end
  def scissors
    current_user.throw = 'scissors'
    current_user.save
    # redirect_to rps_result_path
  end
  def result
    @throw = current_user.throw
    @comp_throw = ['rock', 'paper', 'scissors'].sample
  end

end
