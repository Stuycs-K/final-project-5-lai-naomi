# Work Log

## GROUP MEMBER 1 - Naomi

### 5/29

1. finished dragging-- the boats can be dragged around the board
2. added boundaries for the boats-- the boats cannot be dragged outside of the window/board

### 5/30

1. added rotation-- by pressing r, the ship rotates (vertical vs. horizontal)
2. setup phase-- the ships can only be dragged during setup. if the spacebar is pressed, the ships are locked in place
3. ships move along a grid-- when dragged, the ships lock into the grid

### 5/31
1. fixed rotation-- when the ships are rotated, they are anchored to one grid spot (the rotation is more predictable)
2. worked on pin location-- when setup is finished, the ships store info about their location
3. adjust ship and grid alignment

### 6/1
1. fixed location-- when the ship is dragged, the location is accurately displayed. previously, ships on A1 would appear as B1.
2. organized game-- main 'battleship' tab is less cluttered and created Game class
3. draggable class-- incorporate ship dragging and target dragging

### 6/2
1. target dragging-- target can be dragged
2. minor changes-- location, target dragging, board mechanics (staying on board, boundaries, rotation)
3. began button-- clicking button enters next phase
4. opponent ships-- opponents ships are randomly generated
5. ship creation-- ships can be created using their grid location
6. toggle opponent-- (for demo purposes) opponents ships can be toggled on/off

### 6/6
1. completed pin-- constructs pins using location (ex. "A1")
2. confirm target-- when target is confirmed, board's pins are updated and can be drawn

### 6/8
1. oppBoard-- added to keep track of which ships are down
2. updateships-- when the pin is confirmed, the ship's information is updated. if the pin location corresponds to a ship, the ship's pin info is updated.

### 6/9
1. fixed opponent pins-- the pins appear on the right board
2. sink ships-- if the player has guessed each of a ship's pins, the ship sinks and is visible to opposing team
3. restrictions-- the next phase can only be entered is all ships have been placed and a successful target is chosen
4. reformatted random ships
5. game over-- when no ships remain, game is over!
