# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
user = User.create(first_name: "ammar", last_name: "qadir", email:"ammar@pseudosquare", password_digest:"pass", role:"admin", contact:3099010721 , image:"text_image-url")
user = User.create(first_name: 'Alex', last_name: 'finix', email:'pseudo@lms', password_digest:'password', role:"employee", contact:12345678912 ,image:"image-url")
user = User.create(first_name: 'Alex', last_name: 'finix', email:'pseudo@lms', password_digest:'password', role:"admin", contact:12345678912 ,image:"image-url")
user = User.create(first_name: 'Alex', last_name: 'finix', email:'pseudo@lms', password_digest:'password', role:"admin", contact:12345678912 ,image:"image-url")

leave =Leave.create(leave_from:"2022-12-14 ", leave_to:"2022-12-16 ", leave_status:"pending", approval_date:"", remarks:"waiting for approval", user_id:"1", leave_type:"sick")
# create_table :users do |t|
#     t.string :first_name
#     t.string :last_name
#    #t.string :username
#     t.string :email
#    #t.text :password
#     t.string :password_digest
#     t.string :role
#     t.integer :contact
#     t.text :image  
#     t.timestamps