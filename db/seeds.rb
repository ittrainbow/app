# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.delete_all

Product.create(
    title: 'Rails 1',
    description: %{Книга 1. Первый текст для объема, не несущий никакой полезной информации},
    image_url: 'ruby1.png',
    price: 150
)

Product.create(
    title: 'Rails 2',
    description: %{Книга 2. Второй текст для объема, не несущий никакой полезной информации},
    image_url: 'ruby2.png',
    price: 200
)

Product.create(
    title: 'Rails 3',
    description: %{Книга 3. Третий текст для объема, не несущий никакой полезной информации},
    image_url: 'ruby3.png',
    price: 250
)