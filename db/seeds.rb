# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Keyword.create(keyword_name: 'Evasion', keyword_description: 'Allows this unit to bypass blocking enemies.')
Keyword.create(keyword_name: 'Tank', keyword_description: "Allows this unit to block a single enemy's attack.")

Card.create(card_name: 'Death Corgi', hit_points: 2, attack_points: 2)
Card.create(card_name: 'Corgi Pope', hit_points: 3, attack_points: 1)
