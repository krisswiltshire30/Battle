feature 'View hit points' do
    scenario 'see Player 2 hit points' do
        visit('/')
        fill_in :player_one_name, with: 'Ophelia'
        fill_in :player_two_name, with: 'Mercedes'
        click_button 'Submit'
        expect(page).to have_content 'Mercedes: 60HP'
    end
end