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


def dynamic_random_number(min, max)
  values = []
  10.times do
    values << rand(min..max)
  end
  values.sample
end

def alphabet
  ("a".."z").to_a
end

def numerics
  (0..9).to_a
end





def is_vowels_letter(letter)
  "aeiouy".include?(letter)
end

def vowels_array
  (alphabet.map {|letter| letter if is_vowels_letter(letter)}).compact
end

def consonants_array
  (alphabet.map {|letter| letter unless is_vowels_letter(letter)}).compact
end






def vowels
  vowels_array.sample
end

def consonants
  consonants_array.sample
end

def complex_vowels
  vowels + vowels
end

def double_vowels
  current_vowel = vowels
  current_vowel + current_vowel
end

def complex_consonants
  consonants + consonants
end

def double_consonants
  current_consonant = consonants
  current_consonant + current_consonant
end

def syllabe_vs
  vowels + consonants
end

def syllabe_cs
  consonants + vowels
end

def decimals
  numerics.sample.to_s
end

def digram
  word1 = consonants.capitalize + complex_vowels + syllabe_cs + complex_consonants + vowels
  word2 = syllabe_vs.capitalize + complex_vowels + syllabe_cs + complex_consonants + vowels
  word3 = syllabe_vs.capitalize + complex_vowels + syllabe_cs
  word4 = syllabe_cs.capitalize + double_consonants + complex_vowels + syllabe_cs
  word5 = syllabe_vs.capitalize + complex_vowels + syllabe_cs + " - " + syllabe_vs + complex_vowels + syllabe_cs
  word6 = syllabe_vs.capitalize + complex_vowels + syllabe_cs + " - " + vowels + double_consonants + complex_vowels + consonants
  word7 = consonants.capitalize + complex_vowels + consonants + " - " + vowels + consonants + complex_vowels + double_consonants + vowels
  word8 = syllabe_cs.capitalize + double_consonants + vowels + " " + syllabe_vs + syllabe_vs + vowels
  word9 = syllabe_cs.capitalize + double_consonants + " " + vowels + double_consonants + vowels + consonants
  word10 = syllabe_cs.capitalize + syllabe_cs + " " + syllabe_cs + syllabe_cs
  word11 = syllabe_cs.capitalize + double_consonants + " " + syllabe_cs + syllabe_cs
  word12 = syllabe_cs.capitalize + syllabe_cs + " " + syllabe_cs + double_consonants
  words = [word1, word2, word3, word4, word5, word6, word7, word8, word9, word10, word11, word12]
  random_word = words.sample
end

def digram_for_galaxies
  word1 = consonants.capitalize + complex_vowels + decimals + decimals + complex_consonants + vowels
  word2 = syllabe_cs.capitalize + consonants + complex_vowels + decimals + vowels + decimals + decimals
  word3 = syllabe_vs.capitalize + decimals + complex_vowels + consonants + vowels
  word4 = digram.capitalize
  word5 = decimals + decimals + consonants + syllabe_cs + decimals + "-" + syllabe_cs
  words = [word1, word2, word3, word4, word5]
  random_word = words.sample
end

def digram_for_suns
  word1 = consonants.capitalize + consonants + vowels + "-" +  decimals + decimals
  word2 = consonants.capitalize + vowels + consonants + "-" + decimals + decimals + vowels.capitalize
  word3 = syllabe_vs.capitalize + decimals + complex_vowels + consonants + vowels
  word4 = digram.capitalize
  word5 = decimals + decimals + consonants + syllabe_cs + decimals + "-" + consonants.capitalize + vowels.capitalize
  words = [word1, word2, word3, word4, word5]
  random_word = words.sample
end


def polymorph_name(type)
  if type.is_a?(Galaxy)
    name = digram_for_galaxies
  elsif type.is_a?(Sun)
    name = digram_for_suns
  elsif type.is_a?(Planet)
    name = digram
  elsif type.is_a?(Moon)
  end
end



























def solar_distance_in_sun(distance_in_pc)
  d = distance_in_pc / SOLAR_DIST_FROM_CORE_IN_PC
  d.round(3)
end

def solar_distance_in_ly(distance_in_pc)
  d = distance_in_pc * PARSEC_IN_LY
  d.round(3)
end

def solar_distance_in_pc(distance_in_sun)
  d = distance_in_sun * SOLAR_DIST_FROM_CORE_IN_PC
  d.round(3)
end


def kelvin_in_degres(temperature)
  t = temperature - 273.15
  t.round(3)
end



def revolution_in_years(days)
  y = days / EARTH_YEAR
  y.round(3)
end

def rotation_in_days(hours)
  d = hours / EARTH_DAY
  d.round(3)
end

def density_in_earth(density)
  d = density / EARTH_DENSITY
  d.round(3)
end

def mass_in_earth(mass)
  m = mass / EARTH_MASS
  m.round(3)
end

def mass_in_sun(mass)
  m = mass / SOLAR_MASS
  m.round(3)
end

def radius_in_earth(radius)
  r = radius / EARTH_RADIUS
  r.round(3)
end

def radius_in_sun(radius)
  r = radius / SOLAR_RADIUS
  r.round(3)
end


def gravity_in_g(gravity)
  g = gravity / EARTH_GRAVITY
  g.round(3)
end


def gravity(planet_mass, planet_radius)
  gravity = (planet_mass_in_kg(planet_mass)/(planet_radius_in_meters(planet_radius)**2)) * GRAVITATIONAL_CONSTANT
  gravity_round = gravity.round(4)
end


def planet_mass_in_kg(mass)
  m = mass * EARTH_MASS
  m.to_f.round(4)
end


def planet_radius_in_km(radius)
  r = radius * EARTH_RADIUS
  r.round(2)
end

def planet_radius_in_meters(radius)
  r = radius * EARTH_RADIUS_IN_METERS
  r.round(2)
end




def planet_volume(planet_radius)
  (4 * PI * (planet_radius_in_km(planet_radius)**3)) / 3
end


def density(planet_mass, volume)
  m = planet_mass_in_kg(planet_mass) / (volume*1000000000)
  m2 = m.round(3)
  if m2 > 100000
    puts "Density : #{m2/1000} Kg/cm3 (#{density_in_earth(m2)} x earth)"
  else
    puts "Density : #{m2} Kg/m3 (#{density_in_earth(m2)} x earth)"
  end
end




































def rotation_in_hours(days)
  hours = days * ROTATION_PERIOD
  hours.round(3)
end

def second_in_days(seconds)
  days = (seconds)/DAY_IN_SECOND
  days = days.round(3)
  days
end

def speed_in_kms(speed)
  (speed/1000).round(3)
end

def solar_mass_in_kg(mass)
  m = mass * SOLAR_MASS
  m.round(3)
end

def solar_mass_in_kg_view(mass)
  m = mass * SOLAR_MASS
  m2 = m.round(3)
  puts "Solar mass : #{m2} Kg (#{mass_in_sun(solar_mass_in_kg(mass))} Solar mass)"
end

def solar_radius_in_km(radius)
  radius * SOLAR_RADIUS
end

def solar_radius_in_km_view(radius)
  r = radius * SOLAR_RADIUS
  r2 = r.round(2)
  puts "Solar radius : #{r2} Km (#{radius_in_sun(solar_radius_in_km(radius))} Solar radius)"
end

def ua_in_km(distance)
  distance * UA
end

def semi_axe(sun_radius, planet_distance)
  (sun_radius + planet_distance)*(10**3)
end


def orbital_period(solar_radius, solar_mass, planet_distance)
  gm = GRAVITATIONAL_CONSTANT*solar_mass_in_kg(solar_mass)
  rth = semi_axe(solar_radius_in_km(solar_radius),ua_in_km(planet_distance))
  v_in_square = gm/rth
  v = Math.sqrt(v_in_square)
  deuxpir = (2*PI)*rth
  period = (deuxpir/v).round(1)
  second_in_days(period)
end

def orbital_speed(solar_radius, solar_mass, planet_distance)
  gm = GRAVITATIONAL_CONSTANT*solar_mass_in_kg(solar_mass)
  rth = semi_axe(solar_radius_in_km(solar_radius),ua_in_km(planet_distance))
  v_in_square = gm/rth
  v = Math.sqrt(v_in_square)
end
















def balanced_radius(planet_radius, planet_mass, planet_distance)
  if planet_mass - planet_radius > 2 and planet_radius < 2
    random_balanced = rand(0.50..2.50)
    coef = planet_mass / (planet_radius + random_balanced)
    balanced_radius = planet_radius * coef
    balanced_radius
  elsif planet_mass - planet_radius > 2 and planet_radius < 1
    random_balanced = rand(1.00..5.00)
    coef = planet_mass / (planet_radius + random_balanced)
    balanced_radius = planet_radius * coef
    balanced_radius
  elsif planet_mass - planet_radius > 2 and planet_radius > 2
    random_balanced = rand(4.00..10.50)
    coef = planet_mass / (planet_radius + random_balanced)
    balanced_radius = planet_radius * coef
    balanced_radius
  elsif planet_distance < 7 and planet_radius > 14
    balanced_radius = planet_radius / 14
    balanced_radius
  else
    planet_radius
  end
end


def adjusted_planet_distance(planet_radius, last_planet)
  lp_radius = last_planet.radius
  lp_distance = last_planet.solar_distance
  distance = (lp_distance + (lp_radius * 2)) + fullrange_dist
end



















def balanced_mass(planet_radius, planet_mass)
  if planet_radius - planet_mass > 2 and planet_mass < 2
    random_balanced = rand(0.50..1.50)
    coef = planet_radius / (planet_mass + random_balanced)
    balanced_mass = planet_mass * coef
    balanced_mass
  elsif planet_radius - planet_mass > 2 and planet_mass > 2
    random_balanced = rand(-1.00..2.50)
    coef = planet_radius / (planet_mass + random_balanced)
    balanced_mass = planet_mass * coef
    balanced_mass
  elsif planet_radius - planet_mass > 2 and planet_mass < 1
    random_balanced = rand(1.00..6.00)
    coef = planet_radius / (planet_mass + random_balanced)
    balanced_mass = planet_mass * coef
    balanced_mass
  else
    planet_mass
  end
end
























def presence_of_life(temperature, presence_of_liquid_water_ok)
  if temperature > -0.5 and temperature < 45 and presence_of_liquid_water_ok == true
    random_presence = [true, false, false, false, false].sample
    if random_presence == true
      true
    else
      false
    end
  else
    false
  end
end


def presence_of_liquid_water(temperature, presence_of_water_ok)
  if temperature > -0.50 and temperature < 45.00 and presence_of_water_ok == true
    true
  elsif temperature < -0.50
    false
  elsif temperature > 65.00
    false
  else
    false
  end
end


def presence_of_water(planet_distance, temperature)
  if planet_distance > 0.5
    random_presence = [true, false, false, false, false].sample
    if random_presence == true
      true
    else
      false
    end
  else
    false
  end
end



def temperature(planet_distance)
  if planet_distance < 0.5
    temperature = (rand(100.00..300.00)).round(2)
  elsif planet_distance > 30
    temperature = (rand(-300.00..-100.00)).round(2)
  elsif planet_distance > 10 and planet_distance < 30
    temperature = (rand(-200.00..-50.00)).round(2)
  elsif planet_distance >= 1 and planet_distance < 2
    temperature = (rand(0.00..50.00)).round(2)
  elsif planet_distance > 0.5 and planet_distance < 1
    temperature = (rand(0.00..70.00)).round(2)
  else
    temperature = (rand(-50.00..80.00)).round(2)
  end
end

def atmosphere(planet)
  if planet == "Lava" or planet == "Hot-Jupiter" or planet == "Hot-Neptune"
    false
  elsif planet == "Coreless"
    false
  elsif planet == "Anomaly - Gigantic planet"
    false
  elsif planet == "Anomaly - Very distant planet"
    false
  else
    random_atmo_presence = [true, false, true, false, true, false, true, false, false, false].sample
    random_atmo_presence
  end
end



def planet_type(planet_distance , planet_radius)
  if planet_distance < 0.5
    planet = ["Metallic", "Lava", "Hot-Jupiter", "Hot-Neptune"].sample
  elsif planet_distance > 10 and planet_distance < 30
    planet = ["Cold-Neptune", "Cold-jupiter", "Coreless"].sample
  elsif planet_distance > 30
    planet = "Anomaly - Very distant planet"
  elsif planet_radius > 5 and planet_radius < 10 and planet_distance > 1
    planet = ["Helium", "Silicate", "Ocean"].sample
  elsif planet_radius > 10 and planet_distance > 1 and planet_radius < 20
    planet = "Super-Jupiter"
  elsif planet_radius > 20 and planet_distance > 2
    planet = "Anomaly - Gigantic planet"
  elsif planet_radius < 1 and planet_distance > 1
    planet = ["Mini-Neptune", "Silicate", "Ocean", "Carbon"].sample
  else
    planet = ["Silicate", "Carbon", "Ocean", "Excentric"].sample
  end
end

def planet_color(planet_type)
   if planet_type == "Super-Jupiter"
    "#F73F52"
   elsif planet_type == "Metallic" or planet_type == "Lava" or planet_type == "Hot-Jupiter" or planet_type == "Hot-Neptune"
    "#C70039"
   elsif planet_type == "Cold-Neptune" or planet_type == "Cold-jupiter" or planet_type == "Coreless"
    "#47D6B6"
   elsif planet_type == "Silicate" or planet_type == "Carbon" or planet_type == "Ocean" or planet_type == "Excentric"
    "#B9E937"
   elsif planet_type == "Helium"
    "#17B3C1"
   elsif planet_type == "Mini-Neptune" or planet_type == "Anomaly - Gigantic planet" or planet_type == "Anomaly - Very distant planet"
    "#F73F52"
   end
end







































def range_sm
  range1 = (0.000..1.000)
  range1_rand = rand(range1).round(6)
  range2 = (1.000..2.000)
  range2_rand = rand(range2).round(6)
  range3 = (2.000..3.000)
  range3_rand = rand(range3).round(6)
  range4 = (3.000..4.000)
  range4_rand = rand(range4).round(6)
  ranges_array = [range1_rand, range2_rand, range3_rand, range4_rand]
  ranges_array_rand = ranges_array.sample
end


def range_sm_2
  [range_sm, range_sm, range_sm, range_sm, range_sm, range_sm].sample
end


def range_md
  range1 = (4.000..5.000)
  range1_rand = rand(range1).round(6)
  range2 = (5.000..6.000)
  range2_rand = rand(range2).round(6)
  range3 = (6.000..8.000)
  range3_rand = rand(range3).round(6)
  range4 = (8.000..18.000)
  range4_rand = rand(range4).round(6)
  ranges_array = [range1_rand, range2_rand, range3_rand, range4_rand]
  ranges_array_rand = ranges_array.sample
end

def range_anomaly
  range = (20.000..250.000)
  range_random = rand(range).round(6)
end

def range_md_2
  [range_md, range_md, range_md, range_md, range_md, range_md].sample
end


def fullrange
  r1 = [range_sm_2, range_md_2, range_sm_2, range_md_2, range_sm_2, range_md_2].sample
  r2 = [range_sm_2, range_md_2, range_sm_2, range_md_2, range_sm_2, range_md_2].sample
  r3 = [range_sm_2, range_md_2, range_sm_2, range_md_2, range_sm_2, range_md_2].sample
  r4 = [range_sm_2, range_md_2, range_sm_2, range_md_2, range_sm_2, range_md_2, range_anomaly].sample
  r5 = [range_sm_2, range_md_2, range_sm_2, range_md_2, range_sm_2, range_md_2].sample
  rfull1 = [r1, r2, r3, r4, r5].sample
end





def range_sm_dist
  range1 = (0.010..1.000)
  range1_rand = rand(range1).round(6)
  range2 = (1.000..2.000)
  range2_rand = rand(range2).round(6)
  range3 = (2.000..3.000)
  range3_rand = rand(range3).round(6)
  range4 = (3.000..4.000)
  range4_rand = rand(range4).round(6)
  ranges_array = [range1_rand, range2_rand, range3_rand, range4_rand]
  ranges_array_rand = ranges_array.sample
end


def range_sm_2_dist
  [range_sm_dist, range_sm_dist, range_sm_dist, range_sm_dist, range_sm_dist, range_sm_dist].sample
end


def range_md_dist
  range1 = (4.000..5.000)
  range1_rand = rand(range1).round(6)
  range2 = (5.000..6.000)
  range2_rand = rand(range2).round(6)
  range3 = (6.000..8.000)
  range3_rand = rand(range3).round(6)
  range4 = (8.000..18.000)
  range4_rand = rand(range4).round(6)
  ranges_array = [range1_rand, range2_rand, range3_rand, range4_rand]
  ranges_array_rand = ranges_array.sample
end

def range_anomaly_dist
  range = (20.000..250.000)
  range_random = rand(range).round(6)
end

def range_md_2_dist
  [range_md_dist, range_md_dist, range_md_dist, range_md_dist, range_md_dist, range_md_dist].sample
end


def fullrange_dist
  r1 = [range_sm_2_dist, range_md_2_dist, range_sm_2_dist, range_md_2_dist, range_sm_2_dist, range_md_2_dist].sample
  r2 = [range_sm_2_dist, range_md_2_dist, range_sm_2_dist, range_md_2_dist, range_sm_2_dist, range_md_2_dist].sample
  r3 = [range_sm_2_dist, range_md_2_dist, range_sm_2_dist, range_md_2_dist, range_sm_2_dist, range_md_2_dist].sample
  r4 = [range_sm_2_dist, range_md_2_dist, range_sm_2_dist, range_md_2_dist, range_sm_2_dist, range_md_2_dist, range_anomaly_dist].sample
  r5 = [range_sm_2_dist, range_md_2_dist, range_sm_2_dist, range_md_2_dist, range_sm_2_dist, range_md_2_dist].sample
  rfull1 = [r1, r2, r3, r4, r5].sample
end

















































def solar_color(chromaticity)
  if chromaticity == "King blue"
    "#006C9A"
  elsif chromaticity == "Sky blue"
    "#00BEBE"
  elsif chromaticity == "Pale blue"
    "#72E8E1"
  elsif chromaticity == "White"
    "#E3F8FF"
  elsif chromaticity == "Cream"
    "#F2EAD3"
  elsif chromaticity == "Blond"
    "#FFEE82"
  elsif chromaticity == "Light orange"
    "#F59D2A"
  elsif chromaticity == "orange"
    "#EE7738"
  elsif chromaticity == "Red"
    "#E03E36"
  elsif chromaticity == "None"
    "#3C2F3D"
  elsif chromaticity == "No visibility"
    "#041122"
  end
end


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
    solar_class = "O"
  elsif radius < 0.5 and mass > 2000
    solar_class = "MBH"
  elsif radius < 0.3 and mass > 1000
    solar_class = "BH"
  elsif radius < 1.3 and mass > 500
    solar_class = "NE"
  elsif radius > 100 and radius < 150
    solar_class = "B"
  elsif radius > 50 and radius < 100
    solar_class = "A"
  elsif radius > 1.5 and radius < 50
    solar_class = "F"
  elsif radius > 0.9 and radius < 1.5
    solar_class = "G"
  elsif radius > 0.7 and radius < 0.9
    solar_class = "K"
  elsif radius > 0.5 and radius < 0.7
    solar_class = "M"
  elsif radius > 0.2 and radius < 0.5
    solar_class = "L"
  elsif radius > 0.05 and radius < 0.2
    solar_class = "T"
  elsif radius < 0.05
    solar_class = "Y"
  elsif radius > 200
    solar_class = "BYG"
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




def random_moon_orbital_period(distance)
  if distance >= 5 and distance < 10
    a = rand(0.000...100.000)
    a2 = a.round(4)
  elsif distance >= 10 and distance < 20
    a = rand(100.000...260.000)
    a2 = a.round(4)
  elsif distance >= 20 and distance < 30
    a = rand(260.000...360.000)
    a2 = a.round(4)
  elsif distance >= 30 and distance < 40
    a = rand(360.000...460.000)
    a2 = a.round(4)
  elsif distance >= 40 and distance < 50
    a = rand(460.000...560.000)
    a2 = a.round(4)
  elsif distance >= 50
    a = rand(560.000...1260.000)
    a2 = a.round(4)
  end
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



def random_moon_number(planet_distance)
  if planet_distance > 1
    number5 = rand(0..3)
    number6 = rand(1..5)
    number7 = rand(4..7)
    numbers = [0, 0, 0, 1, number5, number6, number7]
    random_number = numbers.sample
    random_number
  else
    number = 0
  end
end


def random_moon_distance(planet_radius)
  numbers = [dynamic_random_number(5, 10),
             dynamic_random_number(5, 10),
             dynamic_random_number(5, 15),
             dynamic_random_number(5, 15),
             dynamic_random_number(5, 40),
             dynamic_random_number(10, 50),
             dynamic_random_number(20, 50)]
  random_number = numbers.sample
  planet_radius + random_number
end



def random_planet_number(sun_radius)
  if sun_radius > 0 and sun_radius < 5
    values = [ dynamic_random_number(1, 5), dynamic_random_number(1, 6), dynamic_random_number(1, 7)]
    value = values.sample
    return value
  elsif sun_radius >= 5 and sun_radius < 20
    values = [ dynamic_random_number(2, 8), dynamic_random_number(3, 9), dynamic_random_number(3, 12)]
    value = values.sample
    return value
  elsif sun_radius >=20
    values = [ dynamic_random_number(2, 8), dynamic_random_number(4, 10), dynamic_random_number(8, 20)]
    value = values.sample
    return value
  end
end


def random_solar_distance
  rand(0.0001...4.0000)
end

def galaxy_type
  types = ["spiral","elliptical","irregular","lenticular"]
  types.sample
end





class Galaxy < ActiveRecord::Base
  has_many :suns, dependent: :destroy

  def self.constructor

    @random_number_of_sun = rand(50..500)
    @galaxy = Galaxy.new
    @galaxy.name = polymorph_name(@galaxy)
    @galaxy.number_of_suns = @random_number_of_sun
    @galaxy.galaxy_type = galaxy_type
    @galaxy.save

    @random_number_of_sun.times do

      @random_solar_distance = random_solar_distance
      @random_ecliptic_distance = random_ecliptic_distance
      @random_solar_mass = random_solar_numbers
      @random_solar_radius = random_solar_numbers
      @random_number_of_planet = random_planet_number(@random_solar_radius)
      @solar_class = solar_class(@random_solar_radius, @random_solar_mass)
      @solar_type = solar_type(@solar_class)
      @chromaticity = solar_chromaticity(@solar_class)
      @solar_color = solar_color(@chromaticity)
      @sun = Sun.create(solar_distance: @random_solar_distance,
                        number_of_planets: @random_number_of_planet,
                        galaxy_id: @galaxy.id,
                        mass: @random_solar_mass,
                        solar_type: @solar_type,
                        solar_class: @solar_class,
                        chromaticity: @chromaticity,
                        solar_color: @solar_color,
                        radius: @random_solar_radius,
                        ecliptic_distance: @random_ecliptic_distance)
      @sun.name = polymorph_name(@sun)
      @sun.save


      @random_number_of_planet.times do

        @temp_planet_radius = fullrange
        @temp_planet_mass = fullrange

        if @sun.planets.any?
          @last_planet = @sun.planets.last
          @random_solar_to_planet_distance = adjusted_planet_distance(@temp_planet_radius, @last_planet)
        else
          @random_solar_to_planet_distance = fullrange_dist
        end


        @random_planet_radius = @temp_planet_radius
        @random_planet_mass = @temp_planet_mass
        @orbital_period = orbital_period(@random_solar_radius, @random_solar_mass, @random_solar_to_planet_distance)
        @orbital_speed = orbital_speed(@random_solar_radius, @random_solar_mass, @random_solar_to_planet_distance)
        @gravity = gravity(@random_planet_mass, @random_planet_radius)
        @temperature = temperature(@random_solar_to_planet_distance)
        @planet_type = planet_type(@random_solar_to_planet_distance, @random_planet_radius)
        @water = presence_of_water(@random_solar_to_planet_distance, @temperature)
        @liquid_water = presence_of_liquid_water(@temperature, @water)
        @atmosphere = atmosphere(@planet_type)
        @planet_color = planet_color(@planet_type)
        @life = presence_of_life(@temperature, @liquid_water)
        @rotation_period = fullrange_dist
        @random_moon_number = random_moon_number(@random_solar_to_planet_distance)


        @planet = Planet.create(radius: @random_planet_radius,
                      mass: @random_planet_mass,
                      sun_id: @sun.id,
                      solar_distance: @random_solar_to_planet_distance,
                      solar_radius: @random_solar_radius,
                      orbital_period: @orbital_period,
                      orbital_speed: @orbital_speed,
                      gravity: @gravity,
                      rotation_period: @rotation_period,
                      temperature: @temperature,
                      planet_type: @planet_type,
                      planet_color: @planet_color,
                      water: @water,
                      liquid_water: @liquid_water,
                      atmosphere: @atmosphere,
                      life: @life,
                      moon_number: @random_moon_number,
                      solar_mass: @random_solar_mass)
        @planet.name = polymorph_name(@planet)
        @planet.save

            @random_moon_number.times do
              @random_moon_distance = random_moon_distance(@planet.radius)
              @random_moon_orbital = random_moon_orbital_period(@random_moon_distance)
              Moon.create(name: "#{@random_planet_name}",
                      radius: @random_planet_radius,
                      mass: @random_planet_mass,
                      planet_id: @planet.id,
                      rotation: @rotation_period,
                      temperature: @temperature,
                      distance_from_planet: @random_moon_distance,
                      atmosphere: false,
                      orbital_period: @random_moon_orbital)
            end
      end
    end

  end

end
