configure :production, :development do
	db = URI.parse(ENV['DATABASE_URL'] || 'localhost')

	ActiveRecord::Base.establish_connection(
		:adapter => db.scheme == 'postgres' ? 'postgresql' : db.scheme,
		# :lat => db.lat,
		# :long => db.long,
		# :ppsqft => db.ppsqft,
		# :datesold => db.datesold,
		:host => db.host,
		:username => db.user,
		:password => db.password,
		:database => db.path[1..-1],
		:encoding => 'utf8'
	)
end
