feature 'displays hitpoints' do
  scenario 'HP at start of game' do
    sign_in_and_play
    expect(page).to have_content("Chris's Hit Points: 100")
  end
end
