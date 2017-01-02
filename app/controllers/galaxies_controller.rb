class GalaxiesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    @galaxies = Galaxy.all
  end

  def show
    @galaxy = Galaxy.find(params[:id])
    @suns = @galaxy.suns
    @f_stars = @galaxy.suns.where(:solar_class => "F")
    @f_stars_size = @f_stars.size
    @g_stars = @galaxy.suns.where(:solar_class => "G")
    @g_stars_size = @g_stars.size
    @o_stars = @galaxy.suns.where(:solar_class => "O")
    @o_stars_size = @o_stars.size
    @a_stars = @galaxy.suns.where(:solar_class => "A")
    @a_stars_size = @a_stars.size
    @b_stars = @galaxy.suns.where(:solar_class => "B")
    @b_stars_size = @b_stars.size
    @k_stars = @galaxy.suns.where(:solar_class => "K")
    @k_stars_size = @k_stars.size
    @m_stars = @galaxy.suns.where(:solar_class => "M")
    @m_stars_size = @m_stars.size
    @l_stars = @galaxy.suns.where(:solar_class => "L")
    @l_stars_size = @l_stars.size
    @t_stars = @galaxy.suns.where(:solar_class => "T")
    @t_stars_size = @t_stars.size
    @y_stars = @galaxy.suns.where(:solar_class => "Y")
    @y_stars_size = @y_stars.size
    @mbh_stars = @galaxy.suns.where(:solar_class => "MBH")
    @mbh_stars_size = @mbh_stars.size
    @bh_stars = @galaxy.suns.where(:solar_class => "BH")
    @bh_stars_size = @bh_stars.size
    @ne_stars = @galaxy.suns.where(:solar_class => "NE")
    @ne_stars_size = @ne_stars.size
    @byg_stars = @galaxy.suns.where(:solar_class => "BYG")
    @byg_stars_size = @byg_stars.size
  end

  def new
    @galaxy = Galaxy.new
  end

  def create
    @galaxy = Galaxy.new(galaxy_params)
    @galaxy.save
  end

  def galaxy_params
    params.require(:galaxy).permit(:name, :number_of_suns)
  end

end
