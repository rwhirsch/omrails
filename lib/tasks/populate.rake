namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    104.times do |n|
      puts "[DEBUG] creating user #{n+1} of 10"
      name = Faker::Name.name
      email = "user-#{n+12}@example.com"
      password = "password"
      User.create!( name: name,
                    email: email,
                    password: password,
                    password_confirmation: password)
    end

    User.all.each do |user|
      puts "[DEBUG] uploading sample data for user #{user.id} of #{User.last.id}"
      104.times do |n|
        data = File.open(Dir.glob(File.join(Rails.root, 'CodedUncoded', '*')).sample)
      end
    end
  end
end