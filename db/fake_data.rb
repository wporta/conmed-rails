# Let's use Faker to create 100 pacients to test our system
(1..100).each do |i|
  Pacient.create! do |a|
    a.first_name = Faker::Name.unique.name
    a.last_name =  Faker::Name.name
    a.id_number = Faker::Number.unique.number(10)
    a.email = Faker::Internet.unique.email
    a.age = Faker::Number.number(2)
    a.gender_id = Faker::Number.between(1,2)
    a.record_number = Faker::Number.unique.number(10)
    a.pacient_active = true
  end
end