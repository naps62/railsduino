class SerialController < ApplicationController
  def init
    @port = self.serial_port_config("/dev/tnt0")
  end

  def green_on
    @port.write "GH\n"    
  end

  def green_off
    @port.write "GL\n"    
  end

  def yellow_on
    @port.write "YH\n"    
  end

  def yellow_off
    @port.write "YL\n"    
  end

  def red_on
    @port.write "RH\n"    
  end

  def red_off
    @port.write "RL\n"    
  end

  private
  
  def serial_port_config(port)
    binding.pry
    parameters = {"baud" => 9600,
                  "data_bits" => 8,
                  "stop_bits" => 1,
                  "parity" => SerialPort::None} 
    sp = SerialPort.new(port,parameters) 
  end
end