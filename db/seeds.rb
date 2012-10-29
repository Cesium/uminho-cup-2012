PlayAuth::Engine.load_seed
PlayFutsal::Engine.load_seed

puts 'Creating admin'

admin = PlayAuth::User.create  :email => 'admin@uminho.cup',
                    :first_name       => 'Miguel',
                    :last_name        => 'Palhas',
                    :password         => ENV['UMINHO_CUP_PASSWORD'],
                    :confirmed_at     => Time.now

admin.confirm!
admin.save

puts 'Generating test data. This might take a while...'
FactoryGirl.find_definitions
FactoryGirl.create_list :full_group_with_matches, 2