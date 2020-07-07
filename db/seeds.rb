ages = (1...46).map { |num| num }

5.times do
  team = Team.create(
    name: Faker::Sports::Football.team,
    description: Faker::TvShows::GameOfThrones.quote
  )
  3.times do
    name = Faker::Sports::Football.player.split
    Player.create(first_name: name.first,
                  last_name: name.last,
                  age: ages.sample,
                  position: Faker::Sports::Football.position,
                  team_id: team.id)
  end
end
