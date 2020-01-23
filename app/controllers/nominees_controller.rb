class NomineesController < ApplicationController

    def index
        @nominees = Nominee.all 
        render json: @nominees
    end

    def show 
        @nominee = Nominee.find_by(id: params[:id])
        render json: @nominee
    end

end
