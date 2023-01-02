# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
user = User.create(first_name: "ammar", last_name: "qadir", username: 'ammarqadir99', email:"ammar@pseudosquare", password:"pass", contact:3099010721 , image:"image-url", role_id:'employee')
user = User.create(first_name: 'Alex', last_name: 'finix', username: 'alexfinix01', email:'pseudo@pseudosquare', password:'password',  contact:12345678901 ,image:"image-url", role_id:'employee')
user = User.create(first_name: 'Alex', last_name: 'finix', username: 'alexfinix02', email:'pseudo@pseudosquare', password:'password', contact:12345678901 ,image:"image-url", role_id:'employee')
user = User.create(first_name: 'Alex', last_name: 'finix', username: 'alexfinix03', email:'pseudo@pseudosquare', password:'password', contact:12345678901 ,image:"image-url", role_id:'employee')

leave =Leave.create(leave_from:"2022-12-14 ", leave_to:"2022-12-16 ", leave_status:"pending", approval_date:"", remarks:"waiting for approval", user_id:"1", leave_types_id:"1")
leave =Leave.create(leave_from:"2022-12-14 ", leave_to:"2022-12-16 ", leave_status:"pending", approval_date:"", remarks:"for sick leave", user_id:"1", leave_types_id:"2")
