class MonthsController < ApplicationController
    def show
        arr = params[:id].split("-")
        year = arr[0]
        month = arr[1]
        year_instance = Year.find_by(name: year)
        month_instance = year_instance.months.find_by(month_number: month)
        render json: month_instance, include: [:year, :days => {include: :tasks}]
    end
end
