class EquipmentController < ApplicationController
    def index
        @equiptments = Equipment.all
    end

    def show
        @equiptment = Equipment.find(params[:id])
    end

    def new
        @equiptment = Equipment.new
    end

    def create
        @equiptment = Equipment.new(equiptment_params)
        if @equiptment.save
            redirect_to equipment_index_url
        else
            render :new
        end 
    end

    def edit
        @equiptment = Equipment.find(params[:id])
    end
 
    def update
        @equiptment = Equipment.find(params[:id])
        if @equiptment.update(equiptment_params)
            redirect_to equipment_index_url
        else
            render :edit
        end
    end

    def destroy
        @equiptment = Equipment.find(params[:id])
        @equiptment.destroy

        redirect_to  equipment_index_url
    end

    private
        def equiptment_params
            params.require(:equipment).permit(:description, :make_manufacturer, :country_of_origin, :serial_number, :quantity, :acquisition_date, :acquisition_cost, :estimated_useful_years, :year_commissioned, :operational, :out_of_order, :operational_with_issues, :unverifiable, :department_location, :total, :remarks)      
        end
end
