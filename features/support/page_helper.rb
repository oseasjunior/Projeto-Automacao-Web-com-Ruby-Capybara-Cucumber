module PageHelper
  def construir_home
    @construir_home ||= HomePage.new
  end

  def construir_user
    @construir_user ||= UserPage.new
  end

  def construir_list
    @construir_list ||= ListPage.new

    
  end
end
