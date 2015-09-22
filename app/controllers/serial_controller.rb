class SerialController < ApplicationController

  def init
    data = {:state => "init"}
    File.open("#{Rails.root}/app/assets/javascripts/data.json","w") do |f|
      f.write(data.to_json)
    end 
    render json: {state: data[:state]}
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


  # def init
  #   state = "init"
  #   render json: {state: state}
  # end

  # def green_on   
  #   SerialPort.open("/dev/pts/12") {|sp| sp.write "GH\n" }
  #   render json: {state: "green_on"}

  # end

  # def green_off
  #   SerialPort.open("/dev/pts/12") {|sp| sp.write "GL\n" }
  #   render json: {state: "green_off"}   
  # end

  # def yellow_on
  #   SerialPort.open("/dev/pts/12") {|sp| sp.write "YH\n" }
  #   render json: {state: "yellow_on"}    
  # end

  # def yellow_off
  #   SerialPort.open("/dev/pts/12") {|sp| sp.write "YL\n" }
  #   render json: {state: "yellow_off"}      
  # end

  # def red_on
  #   SerialPort.open("/dev/pts/12") {|sp| sp.write "RH\n" }
  #   render json: {state: "red_on"}     
  # end

  # def red_off
  #   SerialPort.open("/dev/pts/12") {|sp| sp.write "RL\n" }
  #   render json: {state: "red_on"}      
  # end

  # private
  
  # def serial_port_config(port)
  #   parameters = {"baud" => 9600,
  #                 "data_bits" => 8,
  #                 "stop_bits" => 1,
  #                 "parity" => SerialPort::None} 
  #   sp = SerialPort.new(port,parameters) 
  # end
end