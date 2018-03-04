Battle Challenge
==================

Brief Summary of Approach
-------
I used diagramming to plan my objects and how they would interact with each other.  I then used the TDD cycle, with frequent diagram revisits to implement the program.  I feel a lot more confident with classes and delegation after this challenge.

Points for development:
* explore injecting dependencies
* customers can place orders via the text message

Instructions
-------
```
$ git clone git@github.com:maireadjenn/battle.git
$ cd battle
$ bundle
$ rackup (this is set as 9292 by default)
```

User stories
--------
```
As two Players,
So we can play a personalised game of Battle,
We want to Start a fight by entering our Names and seeing them

As Player 1,
So I can see how close I am to winning
I want to see Player 2's Hit Points

As Player 1,
So I can win a game of Battle,
I want to attack Player 2, and I want to get a confirmation

As Player 1,
So I can start to win a game of Battle,
I want my attack to reduce Player 2's HP by 10

As two Players,
So we can continue our game of Battle,
We want to switch turns

As Player 1,
So I can see how close I am to losing,
I want to see my own hit points

As Player 1,
So I can lose a game of Battle,
I want Player 2 to attack me, and I want to get a confirmation

As Player 1,
So I can start to lose a game of Battle,
I want Player 2's attack to reduce my HP by 10

As a Player,
So I can Lose a game of Battle,
I want to see a 'Lose' message if I reach 0HP first
```

Technologies Used:
--------
* Sinatra
* Capybara
* RSpec
* MVC pattern
* HTML
