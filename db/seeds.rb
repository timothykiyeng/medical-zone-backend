
require 'faker'

puts "🌱 Seeding spices..."
puts 'Seeding departments..'
Department.create(name: 'Anesthesiology', image_url: 'https://www.flaticon.com/free-icon/anesthesia_993273')
Department.create(name: 'Cardiology', image_url: 'https://www.flaticon.com/free-icon/heart-rate_5935895?term=cardiology&related_id=5935895')
Department.create(name: 'Ear, Nose, and Throat (ENT)', image_url: 'https://www.flaticon.com/free-icon/throat_392924?term=ent&page=1&position=14&origin=search&related_id=392924')
Department.create(name: 'Pediactrics', image_url: 'https://www.flaticon.com/free-icon/pediatrics_8123474?term=pediatrics&page=1&position=5&origin=search&related_id=8123474')
Department.create(name: 'Emergency Medicine', image_url: 'https://www.flaticon.com/free-icon/aid-kit_6338213?term=emergency+medicine&page=1&position=37&origin=search&related_id=6338213')
Department.create(name: 'General Surgery', image_url: 'https://www.flaticon.com/free-icon/anesthesia_5506757?related_id=5506757')
Department.create(name: 'Hematology', image_url: 'https://www.flaticon.com/free-icon/hematology_6466767?term=hematology&page=1&position=23&origin=search&related_id=6466767')
Department.create(name: 'Oncology', image_url: 'https://www.flaticon.com/free-icon/oncology_2885298?term=oncology&page=1&position=3&origin=search&related_id=2885298')
Department.create(name: 'Vascular', image_url: 'https://www.flaticon.com/free-icon/heart-disease_6349813?term=vascular&page=1&position=47&origin=search&related_id=6349813')
Department.create(name: 'Neurology', image_url: 'https://www.flaticon.com/free-icon/neurology_9133531?term=neurology&page=1&position=31&origin=search&related_id=9133531')

puts 'Seeding patients..'
Patient.create(name: "Ben Anthony", age: rand(18..65), birthdate: Faker::Date.birthday(min_age: 18, max_age: 65), email: "ba1@gmail.com", password: "123", doc: false)
20.times do
  Patient.create(
    name: Faker::Movies::LordOfTheRings.character,
    age: rand(18..65),
    gender: Faker::Gender.type,
    birthdate: Faker::Date.birthday(min_age: 18, max_age: 65),
    email: Faker::Internet.free_email,
    password: Faker::Internet.password,
    doc: false
  )
end

puts 'Seeding doctors..'
Doctor.create(title: 'MD', name: 'Diana Adams', bio: Faker::Movies::Hobbit.quote, department_id: 10, patient_id: 2, email: 'dianaadams@medizone.com', password: '123', doc: true)
15.times do
  Doctor.create(
    title: 'DO',
    name:Faker::Movies::LordOfTheRings.character,
    bio: Faker::Movies::Hobbit.quote,
    department_id: rand(1..Department.all.size),
    patient_id: rand(1..Patient.all.size),
    email: "#{Faker::Internet.username}@medizone.com",
    password: Faker::Internet.password,
    doc: true
  )
end

# .strftime('%a %b %d %Y %H:%M:%S GMT-0400 (Eastern Daylight Time)')
puts 'Seeding appointments..'
50.times do
  Appointment.create(
    doctor_id: 1,
    patient_id: rand(1..Patient.all.size),
    title: Faker::Movie.title,
    start_date: DateTime.new(2022,6,rand(1..30),rand(1..19),rand(1.60)),
    end_date: DateTime.new(2022,6,rand(1..30),rand(6..19),rand(1.60)),
    notes: Faker::Fantasy::Tolkien.poem
  )
end

puts 'Seeding results..'
5.times do 
    MedicalHistory.create(
    diagnosis: Faker::Lorem.paragraph(sentence_count: rand(1..5)),
    patient_id: 1,
    test_date: DateTime.new(2022,6,rand(1..30),rand(1..19),rand(1.60))
  )
end
puts "🌱 Seeding done..."

