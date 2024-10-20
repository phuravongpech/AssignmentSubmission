enum Direction { north, east, south, west }

int x = 7;
int y = 3;
Direction direction = Direction.north;

void move(String instructions) {
  for (var char in instructions.split('')) {
    print(char);
    switch (direction) {
      case Direction.north:
        if (char == 'A') {
          y++;
          print(y);
        } else if (char == 'R') {
          direction = Direction.east;
        } else if (char == 'L') {
          direction = Direction.west;
        } else {
          print('$char input is invalid');
        }
        break;

      case Direction.east:
        if (char == 'A') {
          x++;
          print(x);
        } else if (char == 'R') {
          direction = Direction.south;
        } else if (char == 'L') {
          direction = Direction.north;
        } else {
          print('$char input is invalid');
        }
        break;

      case Direction.south:
        if (char == 'A') {
          y--;
        } else if (char == 'R') {
          direction = Direction.west;
        } else if (char == 'L') {
          direction = Direction.east;
        } else {
          print('$char input is invalid');
        }
        break;

      case Direction.west:
        print('east');
        if (char == 'A') {
          x--;
          print(x);
        } else if (char == 'R') {
          direction = Direction.north;
        } else if (char == 'L') {
          direction = Direction.south;
        } else {
          print('$char input is invalid');
        }
        break;

      default:
    }
  }
}

void main() {
  // Initial position {7, 3} and facing north

  // Example instruction sequence
  const instructions = "RAALAL";

  // Process the instructions and get the final position and direction
  move(instructions);

    // Print the final position and direction
  print("Final position:  $x, $y");
  print("Facing: $direction ");
}
