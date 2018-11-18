require 'faker'

2.times do 
  board = Board.create (
    name: Faker::Name.name
  )

    5.times do board.arts.create (
      name: Faker::RockBand.name
    )
  end 
end

puts `clear`
puts "2 Boards Created"
puts "5 Artists Created for Boards"




