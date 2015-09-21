class SerialController < ApplicationController
  # def init
  #   state = "init"
  #   render json: {state: state}
  # end

  def green_on   
    SerialPort.open("/dev/pts/12") {|sp| sp.write "GH\n" }
    render json: {state: "green_on"}  
  end

  def green_off
    SerialPort.open("/dev/pts/12") {|sp| sp.write "GL\n" }
    render json: {state: "green_off"}   
  end

  def yellow_on
    SerialPort.open("/dev/pts/12") {|sp| sp.write "YH\n" }
    render json: {state: "yellow_on"}    
  end

  def yellow_off
    SerialPort.open("/dev/pts/12") {|sp| sp.write "YL\n" }
    render json: {state: "yellow_off"}      
  end

  def red_on
    SerialPort.open("/dev/pts/12") {|sp| sp.write "RH\n" }
    render json: {state: "red_on"}     
  end

  def red_off
    SerialPort.open("/dev/pts/12") {|sp| sp.write "RL\n" }
    render json: {state: "red_on"}      
  end

  # private
  
  # def serial_port_config(port)
  #   parameters = {"baud" => 9600,
  #                 "data_bits" => 8,
  #                 "stop_bits" => 1,
  #                 "parity" => SerialPort::None} 
  #   sp = SerialPort.new(port,parameters) 
  # end
end