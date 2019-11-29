Contact.destroy_all
Group.destroy_all

group_ids = []

group_ids << Group.create(name: "Client").id
group_ids << Group.create(name: "Friend").id
group_ids << Group.create(name: "Family").id

p "#{group_ids.count} group created"

group_count = group_ids.length
number_of_contacts = 20
contacts = []

number_of_contacts.times do |i|
    new_contact = {
        name: Faker::Name.name,
        email: Faker::Internet.email,
        company: Faker::Company.name,
        phone: Faker::PhoneNumber.cell_phone,
        address: "#{Faker::Address.street_address} #{Faker::Address.zip} #{Faker::Address.city}",
        group_id: group_ids[Random.rand(0...group_count)]
    }
    contacts.push(new_contact)
end

Contact.create(contacts)

p "#{number_of_contacts} contacts created"