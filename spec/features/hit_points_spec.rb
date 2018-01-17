feature 'displays hitpoints' do
  scenario 'HP at start of game' do
    visit('/')
    fill_in "name_1", :with => "Jennifer"
    fill_in "name_2", :with => "Chris"
      click_button "Submit"
    expect(page).to have_content("Chris's Hit Points: 100")
  end
end
