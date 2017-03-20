require 'sqlite3'

db = SQLite3::Database.new('chinook.db')
db.results_as_hash = true

print db.execute('SELECT * FROM artist LIMIT 1;')

#
# module SQLite3
#
#   class Database
#
#     def initialize(filename)
#
#     end
#
#     def execute
#
#     end
#
#     def results_as_hash=(results_as_hash)
#
#     end
#   end
# end
