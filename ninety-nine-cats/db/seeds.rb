# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


Cat.destroy_all

%w(cats).each do |table_name|
    ApplicationRecord.connection.reset_pk_sequence!(table_name)
end

#cats
c1 = Cat.create!(birth_date: '2015/01/02', color: 'black', name: 'Casper', sex: 'M', description: 'shadow-like')
c2 = Cat.create!(birth_date: '2013/03/03', color: 'black', name: 'Midnight', sex: 'M', description: 'born at midnight')
c3 = Cat.create!(birth_date: '2016/11/15', color: 'brown', name: 'Autumn', sex: 'F', description: 'likes to play with leaves')
c4 = Cat.create!(birth_date: '2019/08/02', color: 'white', name: 'Simba', sex: 'M', description: 'loves Lion King')
c5 = Cat.create!(birth_date: '2018/01/14', color: 'orange', name: 'Garfeild', sex: 'F', description: 'hates mondays')
c6 = Cat.create!(birth_date: '2008/12/25', color: 'orange', name: 'Baby Jesus', sex: 'F', description: 'prophet')
