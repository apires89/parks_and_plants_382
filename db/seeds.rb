# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Garden.destroy_all

Garden.create!(
  name: "Primavera",
  banner_url: "https://images.unsplash.com/photo-1548403374-728475ca2813?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2167&q=80"
  )

Garden.create!(
  name: "Sporting",
  banner_url: "https://media.slbenfica.pt/-/media/benficadp/images/departamento-de-comunicacao/epoca_2018_2019/futebol/equipa-a/competicoes/liga-nos/20-jornada-sporting-benfica/estadio/estadio-jose-alvalade-2-new.jpg?la=pt-pt&v=636848035090000000"
  )


