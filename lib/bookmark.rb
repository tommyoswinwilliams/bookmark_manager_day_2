require 'pg'

class Bookmark
  def self.all
    connect = connection
    rows = connect.exec "SELECT * FROM bookmarks"
    return rows.map { |bookmark| bookmark["url"] }
  end

  def self.add(url)
    connect = connection
    connect.exec "INSERT INTO bookmarks (url) VALUES('#{url}')"
  end

  private
  def self.connection
    db_name = ENV['ENVIRONMENT'] == 'test' ? 'bookmark_manager_test' : 'bookmark_manager'
    return PG.connect(dbname: db_name)
  end
end
