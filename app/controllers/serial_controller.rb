class SerialController < ApplicationController
  def init
    SerialWorker.perform_async('/dev(pts/12')
    state_update("init")
  end

  def green_on       
    state_update("green_on")
  end

  def green_off
    state_update("green_off")  
  end

  def yellow_on
    state_update("yellow_on")    
  end

  def yellow_off
    state_update("yellow_off")     
  end

  def red_on
    state_update("red_on")     
  end

  def red_off
    state_update("red_off")      
  end

  private

  def state_update(state)
    data = {:state => state}
    File.open("#{Rails.root}/app/assets/javascripts/data.json","r+") do |f|
      if JSON.parse(f.read)["state"] != state
        f.rewind
        f.truncate(0)
        f.write(data.to_json)
      end
    end 
    render json: {state: data[:state]}
  end
  
end