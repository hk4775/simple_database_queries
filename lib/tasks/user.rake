namespace :user do
  desc "creating some fake users"
  task :fake_users => :environment do
    10.times do |number|
      User.create!(:name => "User #{number + 1}")
    end
  end
end