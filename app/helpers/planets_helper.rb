module PlanetsHelper
  EARTH_YEAR = 367.821
  EARTH_RADIUS = 6371.009
  EARTH_MASS = (5.9722*(10**24))
  EARTH_GRAVITY = 9.8196

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

end
