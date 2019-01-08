class RockPaperScissorsController < ApplicationController
  def play
    # current_user.throw = nil
    # current_user.save
    # if current_user.throw != nil
    #   redirect_to rps_result_path
    # end
    @throw = current_user.throw
    @wins = current_user.rps_wins
    @comp_wins = current_user.rps_losses
  end
  def restart
    current_user.throw = nil
    current_user.save
    redirect_to rps_path
  end
  def rock
    current_user.throw = 'rock'
    current_user.save
    redirect_to rps_result_path
  end
  def paper
    current_user.throw = 'paper'
    current_user.save
    redirect_to rps_result_path
  end
  def scissors
    current_user.throw = 'scissors'
    current_user.save
    redirect_to rps_result_path
  end
  def result
    @throw = current_user.throw
    if current_user.rps_wins == nil
      current_user.rps_wins = 0
    end
    if current_user.rps_losses == nil
      current_user.rps_losses = 0
    end
    @comp_throw = ['rock', 'paper', 'scissors'].sample
    if @throw == @comp_throw
      @result = "It's a tie"
    elsif @throw == 'rock' && @comp_throw == 'scissors'
      @result = "You won!"
      current_user.rps_wins += 1
    elsif @throw == 'paper' && @comp_throw == 'rock'
      @result = "You won!"
      current_user.rps_wins += 1
    elsif @throw == 'scissors' && @comp_throw == 'paper'
      @result = "You won!"
      current_user.rps_wins += 1
    else
      @result = "You lost"
      current_user.rps_losses += 1
    end
    current_user.save
  end

end
