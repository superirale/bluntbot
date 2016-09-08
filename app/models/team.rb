class Team
	include DataMapper::Resource

	property :id,         Serial    # An auto-increment integer key
	property :name,       String    # A varchar type string, for short strings
	property :created_at, DateTime  # A DateTime, for any date you might like.
	property :updated_at, DateTime  # A DateTime, for any date you might like.

	# relationship with user model
	has n, :users

	def created_at=date
		super Date.strptime(date, '%m/%d/%Y')
	end

	def updated_at=date
		super Date.strptime(date, '%m/%d/%Y')
	end

	# DataMapper.auto_upgrade!
	# DataMapper.finalize
end