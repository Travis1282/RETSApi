class PropertyController < ApplicationController

  get '/:datesold' do
    str =  "%#{params[:datesold]}%"
    # binding.pry
    properties = Property.where("datesold LIKE ?", str)

    properties.to_json

  end

    get '/' do
    # binding.pry
    properties = Property.all

    properties.to_json

  end



end


