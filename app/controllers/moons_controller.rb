class MoonsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  before_action :find_planet, only: [ :new, :create, :edit, :update, :destroy, :show, :index ]

  def index
    @moons = @planet.moons
  end

  def show
    @moon = Moon.find(params[:id])
  end

  def new
    @moon = Moon.new
  end

  def create
    @moon = @planet.moons.build(moon_params)
    @moon.save
  end

  def moon_params
    params.require(:moon).permit(:name,
                                   :radius,
                                   :planet_id,
                                   :distance_from_planet,
                                   :orbital_period,
                                   :mass,
                                   :atmosphere,
                                   :rotation,
                                   :temperature)
  end

  def find_planet
    @planet = Planet.find(params[:planet_id])
  end
end
