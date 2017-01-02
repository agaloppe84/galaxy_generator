  PI = Math::PI
  UA = 149597870.691
  GRAVITATIONAL_CONSTANT = (6.67384*(10**-11))
  SOLAR_RADIUS = (6.957*(10**5))
  SOLAR_MASS = (1.9884*(10**30))
  DAY_IN_SECOND = 86400
  ROTATION_PERIOD = 24
  EARTH_RADIUS = 6371.009
  EARTH_RADIUS_IN_METERS = 6371009
  EARTH_MASS = (5.9722*(10**24))
  EARTH_GRAVITY = 9.8196
  EARTH_YEAR = 367.821
  EARTH_DAY = 24.0
  EARTH_VOLUME = 1.08321*(10**12)
  EARTH_DENSITY = 5513.417
  PARSEC_IN_KM = 3.085677581*(10**16)
  PARSEC_IN_UA = 206264.806247
  PARSEC_IN_LY = 3.26156
  LIGHTYEAR_IN_KM = 9.460730472580800*(10**15)
  LIGHTYEAR_IN_UA = 63241.077
  SOLAR_DIST_FROM_CORE_IN_PC = 7620
  SOLAR_DIST_FROM_CORE_IN_UA = 7620 * PARSEC_IN_UA
  SOLAR_DIST_FROM_CORE_IN_LY = 7620 * PARSEC_IN_LY





def solar_chromaticity(solar_class)
  if solar_class == "O"
    "King blue"
  elsif solar_class == "B"
    "Sky blue"
  elsif solar_class == "BYG"
    "King blue"
  elsif solar_class == "A"
    "Pale blue"
  elsif solar_class == "F"
    "White"
  elsif solar_class == "G"
    "Cream"
  elsif solar_class == "K"
    "Blond"
  elsif solar_class == "M"
    "Light orange"
  elsif solar_class == "L"
    "orange"
  elsif solar_class == "T"
    "Red"
  elsif solar_class == "Y"
    "None"
  elsif solar_class == "BH"
    "No visibility"
  elsif solar_class == "MBH"
    "No visibility"
  elsif solar_class == "NE"
    "No visibility"
  end
end








def solar_class(radius, mass)
  if radius > 150 and radius < 200
    type = "O"
  elsif radius < 0.3 and mass > 2000
    type = "MBH"
  elsif radius < 0.3 and mass > 1000
    type = "BH"
  elsif radius < 0.3 and mass > 500
    type = "NE"
  elsif radius > 100 and radius < 150
    type = "B"
  elsif radius > 50 and radius < 100
    type = "A"
  elsif radius > 1.5 and radius < 50
    type = "F"
  elsif radius > 0.9 and radius < 1.5
    type = "G"
  elsif radius > 0.7 and radius < 0.9
    type = "K"
  elsif radius > 0.5 and radius < 0.7
    type = "M"
  elsif radius > 0.2 and radius < 0.5
    type = "L"
  elsif radius > 0.05 and radius < 0.2
    type = "T"
  elsif radius < 0.05
    type = "Y"
  elsif radius > 200
    type = "BYG"
  end
end




def solar_type(solar_class)
  if solar_class == "O"
    name = "Blue Supergiant"
  elsif solar_class == "MBH"
    name = "Massive Black hole"
  elsif solar_class == "BH"
    name = "Black hole"
  elsif solar_class == "NE"
    name = "Neutron Star"
  elsif solar_class == "B"
    name = "Blue-white Supergiant"
  elsif solar_class == "A"
    name = "White Supergiant"
  elsif solar_class == "F"
    name = "Yellow-white Supergiant"
  elsif solar_class == "G"
    name = "Yellow Supergiant"
  elsif solar_class == "K"
    name = "Orange star"
  elsif solar_class == "M"
    name = "Red giant"
  elsif solar_class == "L"
    name = "Brown dwarf L"
  elsif solar_class == "T"
    name = "Brown dwarf T"
  elsif solar_class == "Y"
    name = "Brown dwarf Y"
  elsif solar_class == "BYG"
    name = "Blue Hypergiant"
  end
end



























def random_solar_numbers
  [rand(0.00500..0.500),
   rand(0.00500..50.000),
   rand(0.00500..100.000),
   rand(0.00500..200.000),
   rand(0.90..3.00),
   rand(0.90..2.20),
   rand(0.90..1.20),
   rand(0.90..4.20),
   rand(500.00..2200.00),
   rand(0.70..0.90),
   rand(0.90..9.20),
   rand(0.90..15.20),
   rand(0.70..0.90)].sample
end



def random_star_angle_position
  a = rand(0.000...360.000)
  a2 = a.round(4)
  a2
end

def random_ecliptic_distance
  ed1 = rand(-5.00..5.00)
  ed2 = rand(-15.00..15.00)
  ed3 = rand(-5.00..5.00)
  ed4 = rand(-15.00..15.00)
  ed5 = rand(-50.00..50.00)
  ed6 = rand(-500.00..500.00)
  eds = [ed1, ed2, ed3, ed4, ed5, ed6]
  ed_random = eds.sample.round(3)
  ed_random
end


def random_solar_numbers
  [rand(0.00500..0.500),
   rand(0.00500..50.000),
   rand(0.00500..100.000),
   rand(0.00500..200.000),
   rand(0.90..3.00),
   rand(0.90..2.20),
   rand(0.90..1.20),
   rand(0.90..4.20),
   rand(500.00..2200.00),
   rand(0.70..0.90),
   rand(0.90..9.20),
   rand(0.90..15.20),
   rand(0.70..0.90)].sample
end










def random_planet_number
  number1 = rand(1..3)
  number2 = rand(1..3)
  number3 = rand(1..5)
  number4 = rand(1..5)
  number5 = rand(1..5)
  number6 = rand(2..7)
  number7 = rand(7..14)
  numbers = [number1, number2, number3, number4, number5, number6, number7]
  random_number = numbers.sample
end


def random_sun_name
    voy = ["a", "e", "i", "o", "u", "y"]
    cons = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "z"]
    numbers = ["0","1","2","3","4","5","6","7","8","9"]
    word1 = cons.sample.capitalize + numbers.sample + numbers.sample + voy.sample.capitalize + numbers.sample
    word2 = cons.sample.capitalize + numbers.sample + numbers.sample + voy.sample.capitalize + numbers.sample
    word3 = cons.sample.capitalize + numbers.sample + numbers.sample + voy.sample.capitalize + numbers.sample
    word4 = cons.sample.capitalize + numbers.sample + numbers.sample + voy.sample.capitalize + numbers.sample
    words = [word1, word2, word3, word4]
    random_word = words.sample
end

def random_planet_name
  voy = ["a", "e", "i", "o", "u", "y"]
  cons = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "z"]
  repeat_voy = ["ae", "ai", "ao", "au", "ay", "ea", "ei", "eo", "eu", "ey", "ia", "ie", "io", "iu", "iy", "oa", "oe", "oi", "ou", "oy", "oo", "ua", "ue", "ui", "uo", "uy", "ya", "ye", "yi", "yo"]
  repeat_cons = ["bl", "br", "cl", "ch", "cr", "chr", "dr", "fr", "fl", "gl", "gr", "gh", "kr", "pr", "st", "sw", "sv", "tr", "qu"]
  word1 = cons.sample + repeat_voy.sample + cons.sample + voy.sample + repeat_cons.sample + voy.sample
  word2 = voy.sample + cons.sample + repeat_voy.sample + cons.sample + voy.sample + repeat_cons.sample + voy.sample
  word3 = voy.sample + cons.sample + repeat_voy.sample + cons.sample + voy.sample
  word4 = cons.sample + voy.sample + cons.sample + repeat_voy.sample + cons.sample + voy.sample
  word5 = voy.sample + cons.sample + repeat_voy.sample + cons.sample + voy.sample + " - " + voy.sample + cons.sample + repeat_voy.sample + cons.sample + voy.sample
  words = [word1, word2, word3, word4, word5]
  random_word = words.sample
end




class Galaxy < ActiveRecord::Base
  has_many :suns, dependent: :destroy

  def self.constructor
    random_name = ["AX22", "VB67", "LM56", "HJ87", "ML04", "FS34"].sample
    @random_number_of_sun = rand(1..100)
    @galaxy = Galaxy.create(name:"#{random_name}", number_of_suns: "#{@random_number_of_sun}")

    @random_number_of_sun.times do
      @random_solar_name = random_sun_name
      @random_number_of_planet = random_planet_number
      @random_ecliptic_distance = random_ecliptic_distance
      @random_solar_mass = random_solar_numbers
      @random_solar_radius = random_solar_numbers
      @solar_class = solar_class(@random_solar_radius, @random_solar_mass)
      @solar_type = solar_type(@solar_class)
      @chromaticity = solar_chromaticity(@solar_class)
      @sun = Sun.create(name: "#{@random_solar_name}",
                        solar_distance: 1,
                        number_of_planets: @random_number_of_planet,
                        galaxy_id: @galaxy.id,
                        mass: @random_solar_mass,
                        solar_type: @solar_type,
                        solar_class: @solar_class,
                        chromaticity: @chromaticity,
                        radius: @random_solar_radius,
                        ecliptic_distance: @random_ecliptic_distance)
      @random_number_of_planet.times do
        @random_planet_name = random_planet_name
        Planet.create(name: "#{@random_planet_name}", radius: 1, sun_id: @sun.id)
      end
    end

  end

end
