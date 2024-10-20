class MyDuration {
  int? _milliseconds;

  MyDuration({required int milliseconds}) : _milliseconds = milliseconds;

  MyDuration.fromHours(int hours) {
    _milliseconds = hours * 3600000;
  }

  MyDuration.fromMinutes(int minutes) {
    _milliseconds = minutes * 60000;
  }

  MyDuration.fromSeconds(int seconds) {
    _milliseconds = seconds * 1000;
  }

  bool operator >(MyDuration otherDuration) {
    return this._milliseconds! > otherDuration._milliseconds!;
  }

  MyDuration operator +(MyDuration other) {
    return MyDuration(milliseconds: this._milliseconds! + other._milliseconds!);
  }

  MyDuration operator -(MyDuration other) {
    try {
      if (this._milliseconds! < other._milliseconds!) {
        throw Exception('negative output');
      } 
    } catch (e) {
      print(e);
    }
    return MyDuration(milliseconds: this._milliseconds! - other._milliseconds!);
  }

  // Display the duration in a readable format
  @override
  String toString() {
    int seconds = (_milliseconds! / 1000).round();
    int minutes = (seconds / 60).floor();
    seconds = seconds % 60;
    int hours = (minutes / 60).floor();
    minutes = minutes % 60;
    return '$hours hours, $minutes minutes, $seconds seconds';
  }
}

void main() {
  MyDuration duration1 = MyDuration.fromHours(1); // 3 hours
  MyDuration duration2 = MyDuration.fromHours(45); // 45 minutes
  print(duration1);
  print(duration2);
  print(duration1 + duration2); // 3 hours, 45 minutes, 0 seconds
  print(duration1 > duration2); //true
  print(duration1 - duration2); // 3 hours, 45 minutes, 0 seconds

  try {
    // print(duration2 - duration1); // This will throw an exception
  } catch (e) {
    print(e);
  }
}
