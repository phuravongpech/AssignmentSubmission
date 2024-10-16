void main() {

  //const initialized at compile time, which needs to be init before running the code
  //cosnt cant be changed during runtime
  // if use const for 1+2, the prograam knows the answer during compile time
  //but for date time, only when the program is run, then the runtime assign value to it

  //final should be used, if we dont know value at compile time, but value is assigned at runtime
  //used for database.., read from localfile

  //both final and const are used for variables that need to be reassigned during execution
  
  //should use var for variable that we need to reassign its value, inferred

  // 1 - iLike
  const String iLike = 'I like pizza';

  // 2 - toppings
  String toppings = 'with tomatoes';
  toppings += " and cheese";

  // 3 - message 
  //because message can only know its actual value after run the program, and the program checks to see the 
  //value oof $iLike and toppings..
  final message = '$iLike $toppings';
  print(message);

  // 4 - rbgColors
  const List<String> rbgColors = ['red', 'blue', 'green'];
  print(rbgColors);

  //add functions mean reassigning weekDays, so weekday should be a regular var
  // 5 - weekDays
  List<String> weekDays = ['monday', 'tuesday', 'wednesday'];
  weekDays.add('thursday');
  print(weekDays);

  //same for here
  // 6 - scores
  List<int> scores = [45,35,50];
  scores = [45,35,50, 78];
  print(scores);
}


