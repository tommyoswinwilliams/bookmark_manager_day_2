feature "Add new bookmark" do
  scenario "submit new bookmark" do
    visit ('/new')
    fill_in 'url', with: 'frontendowl.com'
    fill_in 'title', with: 'Front End Owl'
    click_button 'Add'

    expect(page).to have_link "Front End Owl", href: 'frontendowl.com'
  end
end
