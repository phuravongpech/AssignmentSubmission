void main() {
  House h1 = House('PhnomPenh');
  Tree t1 = Tree('A', 10);
  Tree t2 = Tree('B', 10);
  h1.addTree(t1);
  h1.addTree(t2);

  h1.addObject([Roof('triangle')]);
  h1.addObject([Window("red"), Window("blue")]);
  h1.addObject([Window("red"), Door("black"), Window("blue")]);

  print(h1.trees);

  print(h1.floor.length);

  for (var i = (h1.floor.length - 1); i >= 0; i--) {
    print('Floor$i ${h1.floor[i]}');
  }
}

// Class House
class House {
  String address;
  List<Tree> trees = []; // by default empty

  List<List<Object>> floor = [];

  House(this.address);

  void addObject(List<Object> ex) {
    this.floor.add(ex);
  }

  void addTree(Tree newTree) {
    this.trees.add(newTree);
  }
}

class Roof {
  String type;

  Roof(this.type);

  String toString() {
    return '[Roof = $type]';
  }
}

class Door {
  String color;

  Door(this.color);

  String toString() {
    return '[Door color = $color]';
  }
}

class Window {
  String color;

  Window(this.color);

  String toString() {
    return '[Window color = $color]';
  }
}

// Class Tree
class Tree {
  String type;
  double height;

  Tree(this.type, this.height);

  String toString() {
    return '[Tree = [$type, $height]]';
  }
}
