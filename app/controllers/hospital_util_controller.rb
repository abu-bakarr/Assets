class HospitalUtilController < ApplicationController
    def index

    end
    
    def new
    
    end

    def create
        render plain: params[:hospital_util].inspect
    end 
end
