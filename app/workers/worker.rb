class HardWorker 
  include Sidekiq::Worker
  def perform(port)
    count = 0
    while count<1000 do
      File.open("#{Rails.root}/app/assets/javascripts/test_worker.json","r+") do |f|
        f.write(count.to_json)
      end
      sleep 1
      count++
      binding.pry
    end
  end  
end