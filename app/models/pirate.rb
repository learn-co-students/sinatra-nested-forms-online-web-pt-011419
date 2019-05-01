class Pirate

  attr_accessor :name, :weight, :height

  PIRATES =[]

  def intialize (params)
    @name = params[:name]
    @weight = params[:weight]
    @height = height [:height]
    PIRATES << self
  end

  def self.all
    PIRATES
  end

end
