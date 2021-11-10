puts "Creating companies..."
Company.create(name: "Google", founding_year: 1998)
Company.create(name: "Facebook", founding_year: 2004)
Company.create(name: "Dunder Mifflin", founding_year: 2002)
Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
Dev.create(name: "Rick")
Dev.create(name: "Morty")
Dev.create(name: "Mr. Meseeks")
Dev.create(name: "Gazorpazop")

puts "Creating freebies..."

20.times do
    Freebie.create(
        item_name: Faker::Tea.variety, 
        value: rand(0..60),
        dev_id: Dev.all.sample.id,
        company_id: Company.all.sample.id
    )
end

puts "Seeding done!"
