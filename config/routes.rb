Rails.application.routes.draw do
 root to: 'home#index'
 put '/init', to: 'serial#init'
 put '/green_on', to: 'serial#green_on' 
 put '/green_off', to: 'serial#green_off' 
 put '/yellow_on', to: 'serial#yellow_on' 
 put '/yellow_off', to: 'serial#yellow_off' 
 put '/red_on', to: 'serial#red_on'
 put '/red_off', to: 'serial#red_off'  
 require 'sidekiq/web'
 mount Sidekiq::Web => '/sidekiq'
end
