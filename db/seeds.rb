PlayAuth::Engine.load_seed
PlayFutsal::Engine.load_seed

admin = PlayAuth::Role.find_by_name('Admin').users.first

admin.update_attributes :email      => 'admin@uminhocup.com',
                        :first_name => 'UminhoCup',
                        :last_name  => 'Admin',
                        :password   => ENV['UMINHO_CUP_PASSWORD']
admin.confirm!
admin.save