[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-24ddc0f5d75046c5622901739e7c5dd533143b0c8e959d652212380cedb1ea36.svg)](https://classroom.github.com/a/syDSSnTt)
# APCS2 Final Project
## Group Info
Naomi Lai\
Battleship
## Overview
Battleship is a guessing game for two players. Players arrange a total of five ships on a 10 by 10 board with any orientation (horizontal or vertical). Ships may not overlap. Once the ships have been arranged, players take turns guessing where the opponent's ships are. If a player successfully guesses the location of one ship, they may continue guessing. This continues until all of either player's ships have been sunk.

In my version of the game, the player competes against a computer (randomly generated setup and moves). The player can drag and rotate their ships onto a board during the setup phase. During the player’s turn, they may select a target position to guess the opponent fleet’s location. The opponent's turn may not begin until a valid target has been chosen (not overlapping with a previous guess). 

## Instructions

Setup phase: arrange the ships during setup! You may only arrange ships once, so choose wisely. The ships may be dragged with the mouse and rotated using 'r'. Select "End setup" to continue.\
Player 1's turn: drag the target (highlighted square) to guess where your opponent's ships are. Select "confirm target" to continue.\
Player 2's turn: select the button to continue. This causes the computer to randomly guess a position.

If either you or the computer guesses a location correctly, their turn is repeated.

### Shortcuts
0 - resets the game/begins a new game\
t- toggles the opponent's ships on/off\
r- rotates ship during setup\
s- randomly sets up player's ships

### Potential Bugs
If the button does not work, that means the move is not valid! Make sure all ships have been placed and the target does not overlap with a previous guess (the target should not share a position with an existing pin).

## Presentation Link
This is my presentation: [battleship](https://drive.google.com/file/d/1kKMmbx0ex4Xkh77gCbiSl7HosK5ne9fH/view?usp=sharing).
