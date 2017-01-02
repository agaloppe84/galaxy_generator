class SunsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  before_action :find_galaxy, only: [ :new, :create, :edit, :update, :destroy, :show, :index ]

  def index
    @suns = @galaxy.suns
  end

  def show
    @sun = Sun.find(params[:id])
    @planets = @sun.planets
  end

  def new
    @sun = Sun.new
  end

  def create
    @sun = @galaxy.suns.build(sun_params)
    @sun.save
  end

  def sun_params
    params.require(:sun).permit(:name, :solar_distance, :number_of_planets, :galaxy_id, :mass, :radius, :solar_type, :chromaticity, :ecliptic_distance, :solar_class)
  end

  def find_galaxy
    @galaxy = Galaxy.find(params[:galaxy_id])
  end

end
