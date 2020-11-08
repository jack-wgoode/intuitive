class TechsController < ApplicationController

    def index
        @techs = Tech.all
    end

    def new
        @tech = Tech.new
    end

    def create
        @tech = Tech.new(tech_params)  //think this through- how is it associated with the end_user and ticket?
        if @tech.save
            //show page
        else
            :new
    end




        def tech_params
            permitted = params.require(:name, :department, :cert_level, :email).permit(:name, :department, :cert_level, :email)
        end
end
