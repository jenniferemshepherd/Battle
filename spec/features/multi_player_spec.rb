feature 'displays hitpoints' do
  scenario 'HP at start of game' do
    sign_in_and_play
    expect(page).to have_content("Chris's HP: 100")
    expect(page).to have_content("Jennifer's HP: 100")
  end
end

feature 'multiplayer' do
  scenario 'Can receive 2 names' do
    sign_in_and_play
    expect(page).to have_text("Jennifer vs. Chris")
  end

  scenario 'switch button switches to player 2 (Chris)' do
    sign_in_and_play
    click_button("Switch players")
    expect(page).to have_content("It's Chris's turn")
    expect(page).not_to have_content("It's Jennifer's turn")
  end
end

feature 'attack player' do
  scenario 'uses attack button' do
    sign_in_and_play
    click_button("Attack!")
    expect(page).to have_content("Chris has been struck!")
  end

  scenario 'active player (Chris) attacks' do
    sign_in_and_play
    click_button("Switch players")
    click_button("Attack!")
    expect(page).to have_content("Jennifer has been struck!")
  end

  scenario 'opponent (Jennifer) HP suffers' do
    sign_in_and_play
    click_button("Switch players")
    click_button("Attack!")
    expect(page).to have_content("Jennifer's HP is now 90.")
  end

  scenario 'lose' do
    sign_in_and_play
    knock_out
    expect(page).to have_content("Chris has lost!!!!!!")
  end

end
