BATTLE
==================

#### *A basic web app game*

___••Installation instructions••___
- Bullet point how to install dependancies to the run the program
    ```bash
    ```

## User-spec fulfilment
```ruby
# As two Players,
# So we can play a personalised game of Battle,
# We want to Start a fight by entering our Names and seeing them
feature 'Enter names' do
  scenario 'Can input player names' do
    visit('/')
    fill_in('player_one_name', with: 'Raiden')
    fill_in('player_two_name', with: 'Goro')
    click_button 'Submit'
    expect(page).to have_content 'Raiden vs Goro'
  end
end
# As Player 1,
# So I can see how close I am to winning
# I want to see Player 2's Hit Points

# As Player 1,
# So I can win a game of Battle,
# I want to attack Player 2, and I want to get a confirmation

# As Player 1,
# So I can start to win a game of Battle,
# I want my attack to reduce Player 2's HP by 10

# As two Players,
# So we can continue our game of Battle,
# We want to switch turns
#
# As Player 1,
# So I can see how close I am to losing,
# I want to see my own hit points
#
# As Player 1,
# So I can lose a game of Battle,
# I want Player 2 to attack me, and I want to get a confirmation
#
# As Player 1,
# So I can start to lose a game of Battle,
# I want Player 2's attack to reduce my HP by 10
#
# As a Player,
# So I can Lose a game of Battle,
# I want to see a 'Lose' message if I reach 0HP first
```

## How to use

__**IRB**__
```ruby
#Paste a basic usage outline from IRB here
```