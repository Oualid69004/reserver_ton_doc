

Patient.destroy_all

Doctor.destroy_all

Appointment.destroy_all

City.destroy_all

Specialty.destroy_all

DocSpecialty.destroy_all
puts "CITY"

10.times do |index|
  City.create(ville: Faker::Address.city)
  puts "#{index} villes crées"
end
puts "\n\nSPECIALITY"
10.times do |index|
  Specialty.create(special: Faker::Job.title)
  puts "#{index} spécialitées crées"
end
puts "\n\nDCOTORS & PATIENTS"
10.times do |index|
  Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city: City.find(rand(1..10)))
  Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city: City.find(rand(1..10)))
  puts "#{index} docteurs et patients crées"
end
puts "\n\nDOC_SPEC"
10.times do |index|
  DocSpecialty.create(doctor: Doctor.find(rand(1..10)), specialty: Specialty.find(rand(1..10)))
  puts "#{index} doc_spec crées"
end
10.times do |index|
  Appointment.create(date:Faker::Date.forward(23), doctor: Doctor.find(rand(1..10)),patient: Patient.find(rand(1..10)),city: City.find(rand(1..10)))
  puts "#{index} rdv crées"
end