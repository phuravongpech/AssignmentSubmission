void main() {
  // List of student scores
  List<int> scores = [45, 67, 82, 49, 51, 78, 92, 30];

  // You code
  List<int> pass = scores.where((scores) => scores >= 50).toList();

  print(pass);
  print(pass.length.toString() + 'has passed');
}