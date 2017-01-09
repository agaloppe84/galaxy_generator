module PlanetsHelper
  EARTH_YEAR = 367.821
  EARTH_RADIUS = 6371.009
  EARTH_MASS = (5.9722*(10**24))
  EARTH_GRAVITY = 9.8196
  EARTH_DAY = 24.0
  ROTATION_PERIOD = 24
  DAY_IN_SECOND = 86400

  def revolution_in_years(days)
    y = days / EARTH_YEAR
    y.round(3)
  end

  def planet_radius_in_km(radius)
    r = radius * EARTH_RADIUS
    r.round(2)
  end

  def radius_in_earth(radius)
    r = radius / EARTH_RADIUS
    r.round(3)
  end

  def planet_mass_in_kg(mass)
    m = mass * EARTH_MASS
    m.to_f.round(4)
  end

  def mass_in_earth(mass)
    m = mass / EARTH_MASS
    m.round(3)
  end

  def speed_in_kms(speed)
    (speed/1000).round(3)
  end

  def gravity_in_g(gravity)
    g = gravity / EARTH_GRAVITY
    g.round(3)
  end

  def rotation_in_hours(days)
    hours = days * ROTATION_PERIOD
    hours.round(3)
  end

  def rotation_in_days(hours)
    d = hours / EARTH_DAY
    d.round(3)
  end

  def second_in_days(seconds)
    days = (seconds)/DAY_IN_SECOND
    days = days.round(3)
    days
  end

  def adjusted_solar_radius(solar_radius)
    if solar_radius < 10
      solar_radius
    elsif solar_radius < 20
      solar_radius / 2
    elsif solar_radius < 30
      solar_radius / 8
    elsif solar_radius < 50
      solar_radius / 16
    elsif solar_radius < 120
      solar_radius / 24
    else
      solar_radius / 32
    end
  end


  def hex_without_hashtag(color)
    c = color
    c.delete! '#'
  end












end
