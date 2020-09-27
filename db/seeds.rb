# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

9.times do |i|
    Giftbox.create(
      organization: "Recipe #{i + 1}",
      category: "Category #{i + 1}",
      title: "Title #{i + 1}",
      description: "Description #{i + 1}"
    )
  end