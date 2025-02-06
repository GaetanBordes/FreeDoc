# db/seeds.rb

require 'faker'

# Créer des villes fictives
cities = []
5.times do
  cities << City.create!(name: Faker::Address.city)
end

# Créer des spécialités fictives
specialties = []
10.times do
  specialties << Specialty.create!(name: Faker::Job.field)
end

# Créer des docteurs fictifs et les associer à des villes et des spécialités
doctors = []
5.times do
  doctors << Doctor.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    city: cities.sample,  # Associer un docteur à une ville
    specialties: specialties.sample(2)  # Associer 2 spécialités au hasard
  )
end

# Créer des patients fictifs et les associer à des villes
patients = []
5.times do
  patients << Patient.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    city: cities.sample  # Associer un patient à une ville
  )
end

# Créer des rendez-vous fictifs pour chaque docteur et patient
appointments = []
10.times do
  appointments << Appointment.create!(
    date: Faker::Time.forward(days: 30, period: :morning),
    doctor: doctors.sample,  # Associer un rendez-vous à un docteur
    patient: patients.sample,  # Associer un rendez-vous à un patient
    city: cities.sample  # Associer un rendez-vous à une ville
  )
end

puts "Seeding complete! 🌱"