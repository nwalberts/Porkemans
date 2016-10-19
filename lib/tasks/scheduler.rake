desc "ALL OF THE PORKOCHUs"
task :spawn => :environment do
  puts "Breading the pokemans..."
  Pokemom.spawn
  puts "YOU MONSTER!"
end
