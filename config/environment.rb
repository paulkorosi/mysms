# Load the rails application
require File.expand_path('../application', __FILE__)

# https://stackoverflow.com/questions/57686990/establish-connection-database-configuration-specifies-nonexistent-mysql2-adapt
require File.expand_path('../initializers/abstract_mysql2_adapter', __FILE__)

# Initialize the rails application
Mysms::Application.initialize!
