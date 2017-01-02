class PlanetsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  before_action :find_sun, only: [ :new, :create, :edit, :update, :destroy, :show, :index ]

  def index
    @planets = @sun.planets
  end

  def show
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
    params.require(:planet).permit(:name, :radius, :sun_id)
  end

  def find_sun
    @sun = Sun.find(params[:sun_id])
  end

end
