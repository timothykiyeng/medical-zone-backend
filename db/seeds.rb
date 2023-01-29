Department.destroy_all
Patient.destroy_all
Doctor.destroy_all
Appointment.destroy_all
MedicalHistory.destroy_all

require 'faker'
puts 'Seeding departments..'
Department.create(name: 'Anesthesiology', image: 'https://www.flaticon.com/free-icon/anesthesia_993273')
Department.create(name: 'Cardiology', image: 'https://www.flaticon.com/free-icon/heart-rate_5935895?term=cardiology&related_id=5935895')
Department.create(name: 'Ear, Nose, and Throat (ENT)', image: 'https://www.flaticon.com/free-icon/throat_392924?term=ent&page=1&position=14&origin=search&related_id=392924')
Department.create(name: 'Pediactrics', image: 'https://www.flaticon.com/free-icon/pediatrics_8123474?term=pediatrics&page=1&position=5&origin=search&related_id=8123474')
Department.create(name: 'Emergency Medicine', image: 'https://www.flaticon.com/free-icon/aid-kit_6338213?term=emergency+medicine&page=1&position=37&origin=search&related_id=6338213')
Department.create(name: 'General Surgery', image: 'https://www.flaticon.com/free-icon/anesthesia_5506757?related_id=5506757')
Department.create(name: 'Hematology', image: 'https://www.flaticon.com/free-icon/hematology_6466767?term=hematology&page=1&position=23&origin=search&related_id=6466767')
Department.create(name: 'Oncology', image: 'https://www.flaticon.com/free-icon/oncology_2885298?term=oncology&page=1&position=3&origin=search&related_id=2885298')
Department.create(name: 'Vascular', image: 'https://www.flaticon.com/free-icon/heart-disease_6349813?term=vascular&page=1&position=47&origin=search&related_id=6349813')
Department.create(name: 'Neurology', image: 'https://www.flaticon.com/free-icon/neurology_9133531?term=neurology&page=1&position=31&origin=search&related_id=9133531')

puts 'Seeding patients..'
Patient.create(name: "Timothy Kiyeng", age: rand(18..65), birthdate: Faker::Date.birthday(min_age: 18, max_age: 65), email: "tim@gmail.com", gender: 'male', password: "123", doc: false)
20.times do
  Patient.create(
    name: Faker::Name.name_with_middle,
    age: rand(18..65),
    birthdate: Faker::Date.birthday(min_age: 18, max_age: 65),
    email: Faker::Internet.free_email,
    gender: Faker::Gender.binary_type,
    password: Faker::Internet.password,
    doc: false
  )
end
  
puts 'Seeding doctors..'
Doctor.create(title: 'MD', name: 'Bruno Rodrigues', bio: 'Bruno Rodrigues is a doctor (MD or DO) who practices anesthesia. Anesthesiologists are physicians specializing in perioperative care, developing anesthetic plans, and the administration of anesthetics.', department_id: 1, patient_id: 1, email: 'bruno@medizone.com', password: '123', image_url:'https://images.unsplash.com/photo-1622253692010-333f2da6031d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1964&q=80', doc: true, is_available: true)
Doctor.create(title: 'DO', name: 'Mark Moses', bio: 'Mark Moses is an expert in heart and blood vessel diseases. He can treat heart diseases and help keep you from getting heart diseases.', department_id: 2, patient_id: 2, email: 'mark@medizone.com', password: '456', image_url:'https://img.freepik.com/free-photo/portrait-successful-young-doctor-with-folder-stethoscope_1262-12410.jpg?size=626&ext=jpg&ga=GA1.1.1287727828.1673614897', doc: true, is_available: true)
Doctor.create(title: 'MD', name: 'Diana Adams', bio: 'Diana Adams is an ear, nose, and throat doctor (ENT). She specializes in everything having to do with those parts of the body.', department_id: 3, patient_id: 3, email: 'dianaadams@medizone.com', password: 'Power123!', image_url:'https://images.unsplash.com/photo-1643297654416-05795d62e39c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=853&q=80', doc: true, is_available: true)
Doctor.create(title: 'DO', name: 'Mary Peters', bio: 'Mary Peters is a medical practitioner specializing in children and their diseases.', department_id: 4, patient_id: 4, email: 'mary@medizone.com', password: '123', image_url:'https://sokodirectory.com/wp-content/uploads/2021/07/Nurse-e1627632051412.jpg', doc: true, is_available: true)
Doctor.create(title: 'MD', name: 'Nancy Kunyiha', bio: 'Nancy Kunyiha is a doctor who stabilizes and treats patients who are experiencing acute health problems or traumatic injuries.', department_id: 5, patient_id: 5, email: 'kunyiha@medizone.com', password: '123', image_url:'https://images.unsplash.com/photo-1559839734-2b71ea197ec2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80', doc: true, is_available: true)
Doctor.create(title: 'DO', name: 'Annita Daniels', bio: 'Annita Daniels is a general surgeon that focuses on alimentary canal and abdominal contents including the esophagus, stomach, small intestine, large intestine, liver, pancreas, gallbladder, appendix and bile ducts, and often the thyroid gland.', department_id: 6, patient_id: 6, email: 'annita@medizone.com', password: '123', image_url:'https://cms.thenairobihosp.org/uploads/home_about_hosi_0f702bbc5f.jpg', doc: true, is_available: true)
Doctor.create(title: 'MD', name: 'Joseph Odhiambo', bio: 'Joseph Odhiambo is an internal medical doctor who has extra training in disorders related to your blood, bone marrow, and lymphatic system.', department_id: 7, patient_id: 7, email: 'joseph@medizone.com', password: '123', image_url:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHy-tAACNZc0afsfJ533RXKMY6kzZMSiYVpViKzUiorXybFt-oPFHEFTwe3Pi5Kjt2pS0&usqp=CAU', doc: true, is_available: true)
Doctor.create(title: 'DO', name: 'Paul Patrick', bio: 'Paul Patrick is a doctor who treats cancer and provides medical care for a person diagnosed with cancer.', department_id: 8, patient_id: 8, email: 'paul@medizone.com', password: '123', image_url:'https://images.unsplash.com/photo-1612636322033-f48f76c34bab?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80', doc: true, is_available: true)
Doctor.create(title: 'MD', name: 'June Michaels', bio: 'June Michaels is a specialist who is highly trained to treat diseases of the vascular system.', department_id: 9, patient_id: 9, email: 'june@medizone.com', password: '123', image_url:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXv-N1ZV6Osz2mr_4RTUAcfroUQTTmFl4Pnw&usqp=CAU', doc: true, is_available: true)
Doctor.create(title: 'DO', name: 'Peter Williams', bio: 'Paul Williams is a specialist who treats diseases of the brain and spinal cord, peripheral nerves and muscles.', department_id: 10, patient_id: 10, email: 'peter@medizone.com', password: '123', image_url:'https://img.freepik.com/free-photo/male-nurse-working-clinic_23-2149868924.jpg?w=2000', doc: true, is_available: true)

# .strftime('%a %b %d %Y %H:%M:%S GMT-0400 (Eastern Daylight Time)')
puts 'Seeding appointments..'
40.times do
  Appointment.create(
    doctor_id: 1,
    patient_id: rand(1..Patient.all.size),
    title: Faker::Book.title,
    location: Faker::Team.state,
    startDate: DateTime.new(2023,1,rand(1..30),rand(1..19),rand(1.60)),
    endDate: DateTime.new(2023,1,rand(1..30),rand(6..19),rand(1.60)),
    description: Faker::Fantasy::Tolkien.poem
  )
end

puts 'Seeding results..'
    MedicalHistory.create(
    diagnosis: 'Anemia: This involves the body producing too few healthy red blood cells to carry enough oxygen around the body.',
    patient_id: 2,
    test_date: DateTime.new(2023,1,rand(1..30),rand(1..19),rand(1.60))
  )

  MedicalHistory.create(
    diagnosis: 'Chickenpox: Viral rashes in babies, toddlers and kids are caused by a variety of different viruses.',
    patient_id: 1,
    test_date: DateTime.new(2023,1,rand(1..30),rand(1..19),rand(1.60))
  )

  MedicalHistory.create(
    diagnosis: 'Bone Caner: Bone scans are a type of nuclear scan that check for abnormal areas or damage in the bones.',
    patient_id: 3,
    test_date: DateTime.new(2023,1,rand(1..30),rand(1..19),rand(1.60))
  )

  MedicalHistory.create(
    diagnosis: 'Epilepsy',
    patient_id: 4,
    test_date: DateTime.new(2023,1,rand(1..30),rand(1..19),rand(1.60))
  )
puts "🌱 Seeding done..."



