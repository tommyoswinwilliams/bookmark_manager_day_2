feature "view bookmarks" do
  scenario "user will view all bookmarks saved" do
    Bookmark.add('https://www.bbc.co.uk/')
    Bookmark.add('https://makers.tech/')

    visit("/bookmarks")
    expect(page).to have_content("https://www.bbc.co.uk/")
    expect(page).to have_content("https://makers.tech/")
  end
end
