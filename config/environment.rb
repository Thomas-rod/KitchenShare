# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

my_date_formats = { :default => '%d/%m/%Y' }

config.active_storage.service = :cloudinary
