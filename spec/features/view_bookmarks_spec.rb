feature "view bookmarks" do
  scenario "user will view all bookmarks saved" do
    Bookmark.add('https://www.bbc.co.uk/', 'BBC')
    Bookmark.add('https://makers.tech/', 'Makers')

    visit("/bookmarks")
    expect(page).to have_link "BBC", href: 'https://www.bbc.co.uk/'
    expect(page).to have_link "Makers", href: 'https://makers.tech/'
  end
end
