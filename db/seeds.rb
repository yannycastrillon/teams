5.times do
  team = Team.create(
    name: Faker::Artist.name,
    description: Faker::TvShows::GameOfThrones.quote
  )
  3.times do
    Player.create(first_name: Faker::Music::UmphreysMcgee.song,
                  last_name: Faker::Lorem.sentence,
                  position: "https//www.#{Faker::Lorem.word}.com",
                  team_id: team.id)
  end
end