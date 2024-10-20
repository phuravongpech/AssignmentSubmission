enum Skill { FLUTTER, DART, OTHER }

class Employee {
  String _name;
  final double _baseSalary = 40000;

  List<Skill> _skills = [];
  Address _address;
  int _yearOfExperience;

  double? _salary;

  Employee(
      {required String name,
      required List<Skill> skills,
      required Address address,
      required int yearOfExperience})
      : _name = name,
        _skills = skills,
        _address = address,
        _yearOfExperience = yearOfExperience {
    _salary = calculateSalary();
  }

  Employee.mobileDeveloper(
      {required String name,
      required Address address,
      required int yearOfExperience,
      List<Skill>? skills})
      : _name = name,
        _address = address,
        _yearOfExperience = yearOfExperience,
        _skills = [Skill.FLUTTER, Skill.DART] {
    _salary = calculateSalary();
  }

  void printDetails() {
    print(
        'Employee: $_name, Base Salary: \$${_baseSalary}, $_address, $_skills, $_yearOfExperience, $_salary');
  }

  double calculateSalary() {
    double bonus = 0.0;

    for (int i = 0; i < _skills.length; i++) {
      if (_skills.contains(Skill.FLUTTER)) {
        bonus += 5000;
      }
      if (_skills.contains(Skill.DART)) {
        bonus += 3000;
      }
      if (_skills.contains(Skill.OTHER)) {
        bonus += 1000;
      }
    }
    return _baseSalary + bonus + (_yearOfExperience*2000);
  }
}

class Address {
  String? _city;
  String? _street;
  int? _zipCode;

  Address(this._city, this._street, this._zipCode);

  @override
  String toString() {
    return '[address : $_city, $_street, $_zipCode]';
  }
}

void main() {
  var emp1 = Employee(
      name: 'Sokea',
      address: Address('PP', '2004', 100),
      skills: [Skill.DART],
      yearOfExperience: 5);
  emp1.printDetails();

  var emp2 = Employee.mobileDeveloper(
      name: 'Ronan', address: Address('PP', '2003', 10), yearOfExperience: 100);
  emp2.printDetails();
}
