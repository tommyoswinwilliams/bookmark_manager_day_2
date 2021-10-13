require 'pg'

class Bookmark
  def self.all
    bookmarks = []
    if ENV['ENVIRONMENT'] == 'test'
      connect = PG.connect( dbname: 'bookmark_manager_test' )
    else
      connect = PG.connect( dbname: 'bookmark_manager' )
    end
    rows = connect.exec "SELECT * FROM bookmarks"
    rows.each do |bookmark|
      bookmarks << bookmark["url"]
    end
  bookmarks
  end
end
