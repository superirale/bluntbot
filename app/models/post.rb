class Post
	include DataMapper::Resource

	property :id,         Serial    # An auto-increment integer key
	property :user_id,    Integer   # An integer key
	property :title,      String    # A varchar type string, for short strings
	property :body,       Text      # A text block, for longer string data.
	property :created_at, DateTime  # A DateTime, for any date you might like.
	property :updated_at, DateTime  # A DateTime, for any date you might like.

	# relationship with user model
	belongs_to :user

	def created_at=date
		super Date.strptime(date, '%m/%d/%Y')
	end

	def updated_at=date
		super Date.strptime(date, '%m/%d/%Y')
	end

	# DataMapper.auto_upgrade!
	# DataMapper.finalize
end