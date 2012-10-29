PlayAuth::Engine.load_seed
PlayFutsal::Engine.load_seed

puts 'Creating admin'

admin = PlayAuth::User.create  :email => 'mpalhas@gmail.com',
                    :first_name       => 'Miguel',
                    :last_name        => 'Palhas',
                    :password         => ENV['UMINHO_CUP_PASSWORD'],
                    :confirmed_at     => Time.now

admin.confirm!
admin.save