class SerialController < ApplicationController
  def init
    #binding.pry
    state = "init"
    render json: {state: state}
  #   @port = self.serial_port_config("/dev/pts/12")
  end

  def green_on 
    #binding.pry    
    state = "green_on"
    render json: {state: state}
    # sp = SerialPort.open("/dev/pts/12") {|sp| sp.write "GH\n" }
    #binding.pry    
  end

  def green_off
    #binding.pry 
    render json: {state: "green_off"}
    #@port.write "GL\n"    
  end

  def yellow_on
    #binding.pry 
    render json: {state: "yellow_on"}
    #@port.write "YH\n"    
  end

  def yellow_off
    #binding.pry 
    render json: {state: "yellow_off"}
    #@port.write "YL\n"    
  end

  def red_on
    #binding.pry 
    render json: {state: "red_on"}
    #@port.write "RH\n"    
  end

  def red_off
    #binding.pry 
    render json: {state: "red_off"}
    #@port.write "RL\n"    
  end

  private
  
  def serial_port_config(port)
    parameters = {"baud" => 9600,
                  "data_bits" => 8,
                  "stop_bits" => 1,
                  "parity" => SerialPort::None} 
    sp = SerialPort.new(port,parameters) 
  end
end