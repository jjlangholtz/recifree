def tag
  Faker::Hacker.send([:ingverb, :adjective, :noun, :abbreviation].sample)
end

def tag_list
  tags = []
  rand(2..10).times { tags << tag }
  tags.join(", ")
end

namespace :random do
  desc "Generate random recipes"
  task :recipes, [:count] => :environment do |t, args|
    count = args[:count].to_i
    count = 10 if count <= 0

    count.times do
      tempfile = Dir::Tmpname.create(['identicon', '.png']) { }
      Identicon.file_for("Sample Recipe", tempfile, 300, [255,255,255])

      Recipe.create!(name: "Sample Recipe",
                   tag_list: tag_list,
                   photo: File.new(tempfile),
                   directions: Faker::Lorem.paragraph,
                   user_id: User.first.id)
    end
  end

  desc "Generate random users"
  task :users, [:count] => :environment do |t, args|
    count = args[:count].to_i
    count = 10 if count <= 0

    count.times do
      User.create!(:name => Faker::Name.name,
                   :email => Faker::Internet.email,
                   :password => "password")
    end
  end
end
