require 'pg'

def setup_test_database
  connection = PG.connect(dbname: 'bookmark_manager_test')
  connection.exec("TRUNCATE TABLE bookmarks;")
  p connection.exec("SELECT * FROM bookmarks;")
end