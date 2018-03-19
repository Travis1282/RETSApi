configure :production, :development do
	# db = URI.parse(ENV['DATABASE_URL'] || 'postgres://bqfijbgmuddtse:3fa9eb5a571f463e4a3ec34c5eb63f2bbb9735031ea679a5ff76391e51731707@ec2-54-235-146-51.compute-1.amazonaws.com:5432/dbrfa0slmcut3m')
	db = URI.parse(ENV['DATABASE_URL'] || 'localhost')

	ActiveRecord::Base.establish_connection(
		:adapter => db.scheme == 'postgres' ? 'postgresql' : db.scheme,
		# :lat => db.lat,
		# :long => db.long,
		# :ppsqft => db.ppsqft,
		# :datesold => db.datesold,
		:host => db.host,
		# :username => db.user,
		# :password => db.password,
		:database => db.path[1..-1],
		:encoding => 'utf8'
	)

end
