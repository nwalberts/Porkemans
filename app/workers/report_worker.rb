class ReportWorker
  include Sidekiq::Worker
  sidekiq_options retry: false

  def perform
    puts "SIDEKIQ IS DOING THE THING!"
    PokemonMailer.new_email.deliver_later
  end

end
