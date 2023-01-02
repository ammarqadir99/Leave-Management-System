class HolidaysController < ApplicationController
    def index
        @holidays =Holiday.all
        render json:@holidays
    end

    def show
        @holiday = Holiday.find_by(id: params[:id])
        if @holiday.nil?
            render json: "Holiday not found"
        else
            render json: @holiday
        end
    end

    def new
        @holiday = Holiday.new
        return render json: @holiday
    end

    def create
        @holiday = Holiday.new(holiday_params)
        if @holiday.save
            render json:@holiday, notice: 'Holiday was successfully created.'
        else
            render json: @holiday.errors, status: :unprocessable_entity
        end
    end

    def edit
        @holiday = Holiday.find(params[:id])
        if @holiday.update_attributes(params[:name, :date])
            render json:@holiday, notice: 'Holiday was successfully updated.'
        else
            render json: @holiday.errors, status: :unprocessable_entity
        end
    end

    def update
        @holiday = Holiday.find(params[:id])
        if @holiday.update(holiday_params)
            render json:@holiday, notice: 'Holiday was successfully updated.'
        else
            render json: @holiday.errors, status: :unprocessable_entity
        end
    end

    def destroy
        @holiday = Holiday.find(params[:id])
        @holiday.destroy
        redirect_to holiday_path(@holiday), notice: 'Holiday was successfully destroyed.'
    end

    def get_next_year_holidays
        @holidays = Holiday.all.where('date <= ?', DateTime.now.end_of_year).order('date DESC')
        render json: @holidays
    end

    private
        def holiday_params
            params.require(:holiday).permit(:id, :name, :date)
        end
end