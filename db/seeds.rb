# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
months = {
  "1": {
    name: "January",
    days: 31
  },
  "2": {
    name: "February",
    days: 28
  },
  "3": {
    name: "March",
    days: 31
  },
  "4": {
    name: "April",
    days: 30
  },
  "5": {
    name: "May",
    days: 31
  },
  "6": {
    name: "June",
    days: 30
  },
  "7": {
    name: "July",
    days: 31
  },
  "8": {
    name: "August",
    days: 31
  },
  "9": {
    name: "September",
    days: 30
  },
  "10": {
    name: "October",
    days: 31
  },
  "11": {
    name: "November",
    days: 30
  },
  "12": {
    name: "December",
    days: 31
  }
};

years = (2019..2050).to_a

year_instances = years.map {|year| Year.create(name: year)}

year_instances.each do |year_instance|
    months.each do |key, data|
        month_instance = Month.create(name: data[:name], number_of_days: data[:days], year: year_instance, month_number: key)
        monthDays = data[:days] + 1
        monthDays.times do |day|
            Day.create(number: day, month: month_instance)
        end
    end
end


puts "success!"
