# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Bike.destroy_all
Company.destroy_all

# c1 = Company.create(total_stock: 5, pro_deal: true, name: 'Santa Cruz', location: 'California')
# c2 = Company.create(total_stock: 15, pro_deal: false, name: 'Trek', location: 'Wisconsin')
# c3 = Company.create(total_stock: 25, pro_deal: true, name: 'Niner', location: 'Colorado')
#
# chameleon = c1.bikes.create!(name: 'Chameleon', full_suspension: false, front_travel: 130)
# v10 = c1.bikes.create!(name: 'V10', full_suspension: true, front_travel: 200)
# tallboy = c1.bikes.create!(name: 'Tallboy', full_suspension: true, front_travel: 130)
#
# slash = c2.bikes.create!(name: 'Slash', full_suspension: true, front_travel: 150)
# stache = c2.bikes.create!(name: 'Stache', full_suspension: false, front_travel: 130)
# fuel = c2.bikes.create!(name: 'Fuel', full_suspension: true, front_travel: 130)
#
# wfo = c3.bikes.create!(name: 'WFO', full_suspension: true, front_travel: 170)
# sir = c3.bikes.create!(name: 'SIR', full_suspension: false, front_travel: 120)
# rip = c3.bikes.create!(name: 'RIP', full_suspension: true, front_travel: 150)
@c1 = Company.create!(total_stock: 5, pro_deal: true, name: 'Santa Cruz', location: 'California')
@c2 = Company.create!(total_stock: 15, pro_deal: false, name: 'Trek', location: 'Wisconsin')
@c3 = Company.create!(total_stock: 25, pro_deal: true, name: 'Niner', location: 'Colorado')

@chameleon = @c1.bikes.create!(name: 'Chameleon', full_suspension: false, front_travel: 130)
@v10 = @c1.bikes.create!(name: 'V10', full_suspension: true, front_travel: 200)
@tallboy = @c1.bikes.create!(name: 'Tallboy', full_suspension: true, front_travel: 130)

@slash = @c2.bikes.create!(name: 'Slash', full_suspension: true, front_travel: 150)
@stache = @c2.bikes.create!(name: 'Stache', full_suspension: false, front_travel: 130)
@fuel = @c2.bikes.create!(name: 'Fuel', full_suspension: true, front_travel: 130)

@wfo = @c3.bikes.create!(name: 'WFO', full_suspension: true, front_travel: 170)
@sir = @c3.bikes.create!(name: 'SIR', full_suspension: false, front_travel: 120)
@rip = @c3.bikes.create!(name: 'RIP', full_suspension: true, front_travel: 150)
