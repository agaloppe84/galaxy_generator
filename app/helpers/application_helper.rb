module ApplicationHelper

  def sun_mass_color(mass)
    if mass >= 0 and mass < 1
      color = "#0AA0F6"
    elsif mass >= 1 and mass < 3
      color = "#1EE494"
    elsif mass >= 3 and mass < 10
      color = "#FFCD38"
    elsif mass >= 10 and mass < 20
      color = "#FC8A15"
    elsif mass >= 20
      color = "#FF2C2C"
    end
  end

  def sun_radius_color(radius)
    if radius >= 0 and radius < 1
      color = "#0AA0F6"
    elsif radius >= 1 and radius < 3
      color = "#1EE494"
    elsif radius >= 3 and radius < 10
      color = "#FFCD38"
    elsif radius >= 10 and radius < 20
      color = "#FC8A15"
    elsif radius >= 20
      color = "#FF2C2C"
    end
  end




end
