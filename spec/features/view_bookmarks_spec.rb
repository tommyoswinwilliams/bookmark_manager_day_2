feature "view bookmarks" do
  scenario "user will view all bookmarks saved" do
    visit("/bookmarks")
    expect(page).to have_content("https://www.google.co.uk/")
    expect(page).to have_content("https://www.elsevier.com/en-gb")
    expect(page).to have_content("https://www.moogmusic.com/")
  end
end
