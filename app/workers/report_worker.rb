class ReporWorker
  include Sidekiq::Worker
  sidekiq_options retry: false

  def perform
    puts "SIDEKIQ IS DOING THE THING!"
  end

end
