require 'active_record'




options = {
	adapter: 'postgresql',
	database: 'foodmoods',
}

#ActiveRecord::Base.establish_connection(options)
ActiveRecord::Base.establish_connection( ENV['DATABASE_URL'] || options)