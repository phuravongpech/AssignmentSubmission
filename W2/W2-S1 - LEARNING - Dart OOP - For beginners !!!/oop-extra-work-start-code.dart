void main() {
  Address a1 = Address(country: Country.Cambodia, city: 'PP');
  House h1 = House(a1);
  Tree t1 = Tree(type: 'A', height: 10);
  Tree t2 = Tree(type: 'B', height: 10);
  h1.addTree(t1);
  h1.addTree(t2);

  h1.addObject([Roof(type: 'triangle')]);
  h1.addObject([Window(color: "red"), Window(color: "blue")]);
  h1.addObject(
      [Window(color: "red"), Door(color: "black"), Window(color: "blue")]);

  print(h1);

  print('===================================');

  displayFloor(h1);
}

void displayFloor(House h1) {
  for (var i = (h1.floor.length - 1); i >= 0; i--) {
    print('Floor${i} ${h1.floor[i]}');
  }
}

// Class House
class House {
  Address? address;
  List<Tree> trees = []; // by default empty

  List<List<Object>> floor = [];

  House(this.address);

  void addObject(List<Object> ex) {
    this.floor.add(ex);
  }

  void addTree(Tree newTree) {
    this.trees.add(newTree);
  }

  @override
  String toString() {
    return "[Address = $address, Trees = [$trees], Floor = ]";
  }
}

enum Country { Cambodia, China }

class Address {
  final Country? country;
  final String? city;

  Address({this.country, this.city});

  @override
  String toString() {
    return '[Address = $country, $city]';
  }
}

class Roof {
  final String? type;

  Roof({this.type});

  String toString() {
    return '[Roof = $type]';
  }
}

class Door {
  final String? color;

  Door({this.color});

  String toString() {
    return '[Door color = $color]';
  }
}

class Window {
  final String? color;

  Window({this.color});

  String toString() {
    return '[Window color = $color]';
  }
}

// Class Tree
class Tree {
  final String? type;
  final double? height;

  Tree({this.type, this.height});

  String toString() {
    return '[Tree = [$type, $height]]';
  }
}
