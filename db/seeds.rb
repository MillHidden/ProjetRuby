# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#

if Animateur.all.empty?
  Animateur.create(
    email: "admin@localhost.io",
    pseudo: "admin",
    nom: "Admin",
    prenom: "Super",
    annee_naissance: 2015,
    commune: 'SOMEWHERE',
    status: 'principal',
    sexe: 'F',
    password: "administrateur",
    password_confirmation: "administrateur",
    charte: true,
    confirmed_at: Time.now)
end

if Categorie.all.empty?
  ["Agriculture", "Énergie", "Entrepreneuriat", "Habitat", "Nature", "Services à la population", "Tourisme", "Autre"].each do |categorie|
    Categorie.create(nom: categorie)
  end
end

