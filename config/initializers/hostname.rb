class Hostname
  def self.name
    @name ||= Faker::StarWars.planet
  end
end
