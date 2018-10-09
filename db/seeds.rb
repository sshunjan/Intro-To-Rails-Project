# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Read.destroy_all
Reader.destroy_all
Book.destroy_all
Address.destroy_all
Country.destroy_all


countries = SmarterCSV.process("/mnt/c/vagrant-rails/Rails/Intro-To-Rails-Project/storage/countries.csv")
books = SmarterCSV.process("/mnt/c/vagrant-rails/Rails/Intro-To-Rails-Project/storage/books.csv")

books.each do |books|
  Book.create(name: books[:original_title],
              isbn: books[:isbn],
              author: books[:authors],
              year: books[:original_publication_year])

end

countries.each do |country|

  new_country = Country.create(name: country[:country],
                               region: country[:region],
                               population: country[:population],
                               area: country[:area],
                               gdp: country[:gdp])

  5.times do
    reader = Reader.new
    reader.name = Faker::Name.name

    address = Address.create(full_address: Faker::Address.full_address,
                             latitude:     Faker::Address.latitude,
                             longitude:    Faker::Address.latitude)

    reader.address = address
    reader.phone = Faker::Number.number(10)
    reader.email = Faker::Internet.email
    reader.country = new_country
    reader.save

    book1 = Book.find(rand(Book.count))
    book2 = Book.find(rand(Book.count))

    Read.create(reader: reader,
                book: book1)

    Read.create(reader: reader,
                book: book2)

  end
end


