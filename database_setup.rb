# Load/create our database for this program.
CONNECTION = SQLite3::Database.new("api.db")

# Make the tables.
CONNECTION.execute("CREATE TABLE IF NOT EXISTS assignments (id INTEGER PRIMARY KEY, name TEXT, assignmentlink TEXT, contributor_id INTEGER);")

CONNECTION.execute("CREATE TABLE IF NOT EXISTS groupmembers (id INTEGER PRIMARY KEY, name TEXT);")

CONNECTION.execute("CREATE TABLE IF NOT EXISTS articlesorvideos (id INTEGER PRIMARY KEY, medialink TEXT, assignment_id INTEGER);")

# Get results as an Array of Hashes.
CONNECTION.results_as_hash = true


