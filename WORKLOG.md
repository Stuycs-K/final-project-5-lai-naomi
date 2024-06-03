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
