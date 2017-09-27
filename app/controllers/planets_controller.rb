class PlanetsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show, :secondshow ]
  before_action :find_sun, only: [ :new, :create, :edit, :update, :destroy, :show, :index ]

  def index
    @planets = @sun.planets
  end

  def show
    @planet = Planet.find(params[:id])
  end

  def secondshow
    @planet = Planet.find(params[:id])
  end

  def new
    @planet = Planet.new
  end

  def create
    @planet = @sun.planets.build(planet_params)
    @planet.save
  end

  def planet_params
    params.require(:planet).permit(:name,
                                   :radius,
                                   :sun_id,
                                   :solar_distance,
                                   :solar_radius,
                                   :solar_mass,
                                   :orbital_period,
                                   :mass,
                                   :orbital_speed,
                                   :gravity,
                                   :planet_type,
                                   :atmosphere,
                                   :water,
                                   :liquid_water,
                                   :moon_number,
                                   :rotation_period,
                                   :life,
                                   :planet_color,
                                   :temperature)
  end

  def find_sun
    @sun = Sun.find(params[:sun_id])
  end

end
