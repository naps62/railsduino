Rails.application.routes.draw do
 root to: 'home#index'
 post '/green_on', to: 'serial#green_on' 
 post '/green_off', to: 'serial#green_off' 
 post '/yellow_on', to: 'serial#yellow_on' 
 post '/yellow_off', to: 'serial#yellow_off' 
 post '/red_on', to: 'serial#red_on'
 post '/red_off', to: 'serial#red_off'  
end
