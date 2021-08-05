require 'active_record/connection_adapters/mysql2_adapter'

class ActiveRecord::ConnectionAdapters::Mysql2Adapter
    NATIVE_DATABASE_TYPES[:primary_key] = "int(11) auto_increment PRIMARY KEY"
end

# https://stackoverflow.com/questions/40758226/mysql2error-all-parts-of-a-primary-key-must-be-not-null-if-you-need-null-in
