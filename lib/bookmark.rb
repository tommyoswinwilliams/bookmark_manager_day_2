require 'pg'

class Bookmark
  def self.all
    bookmarks = []
    connect = PG.connect( dbname: 'bookmark_manager' )
    rows = connect.exec "SELECT * FROM bookmarks"
    rows.each do |bookmark|
      bookmarks << bookmark["url"]
    end
  bookmarks
  end
end
