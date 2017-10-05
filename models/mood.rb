class Mood < ActiveRecord::Base
	has_many :recipes
end



#Take a dump: pg_dump -Fc --no-acl --no-owner -h localhost -U jessisaenz foodmoods > db.dump
#https://github.com/CitizenofWorld/food_mood_app/blob/master/db.dump?raw=true
#heroku pg:backups:restore 'https://github.com/CitizenofWorld/food_mood_app/blob/master/db.dump?raw=true' DATABASE_URL

