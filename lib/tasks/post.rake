namespace :post do
  desc "updates comments in posts table"
  task :update_comments => :environment do
    Post.find_each do |post|
      post.comments = rand(1..100)
      post.save!
    end
  end
  desc "assigning random users to the posts"
  task :random_user_ids => :environment do
    Post.find_each do |post|
      post.user_id = rand(1..10)
      post.save!
    end
  end
  desc "changing the date for the posts"
  task :change_date => :environment do |t, args|
    d = DateTime.new(2014, 01, 01)
    Post.limit(300).each_with_index do  |post, index |
      new_day =  d + index.day
      post.update_attributes(:created_at => new_day)
    end
  end
end