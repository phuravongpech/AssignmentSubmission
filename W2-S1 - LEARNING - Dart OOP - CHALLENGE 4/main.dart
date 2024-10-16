void main() {
  Distance d1 = Distance.cms(1);
  Distance d2 = Distance.meters(1);

  print((d1+d2).distance);
}

class Distance {
  double _distance;

  Distance.kms(this._distance);
  Distance.cms(this._distance) {
    this._distance = _distance * 100000;
  }
  Distance.meters(this._distance) {
    this._distance = _distance * 1000;
  }

  num get distance => _distance;

  Distance operator +(Distance d) => new Distance.kms(_distance + d.distance);
}
