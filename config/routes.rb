Rails.application.routes.draw do
  get 'posts' => 'posts#index'
  get 'new_post' => 'posts#new'
  resources :posts
#TicTacToe
  get 'ttt' => 'tic_tac_toe#play'
#Rock Paper Scissors
  get 'rps' => 'rock_paper_scissors#play'
  get 'rps_result' => 'rock_paper_scissors#result'
  get 'rock' => 'rock_paper_scissors#rock'
  get 'paper' => 'rock_paper_scissors#paper'
  get 'scissors' => 'rock_paper_scissors#scissors'

  get 'feed' => 'epicenter#feed'
  get 'show_user' => 'epicenter#show_user'
  get 'now_following' => 'epicenter#now_following'
  get 'unfollow' => 'epicenter#unfollow'

  root 'epicenter#feed'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
