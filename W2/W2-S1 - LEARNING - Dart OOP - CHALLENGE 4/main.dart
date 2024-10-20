void main() {
  Distance d1 = Distance.cms(3.4);
  Distance d2 = Distance.meters(1);
  Distance d3 = Distance.kms(1);

  print((d1 + d3).distance);
}

class Distance {
  double _distance;

  Distance.kms(this._distance) {
    this._distance = _distance * 0.001;
  }
  Distance.cms(this._distance) {
    this._distance = _distance * 100;
  }
  Distance.meters(this._distance) {
    this._distance = _distance;
  }

  num get distance => _distance;

  Distance operator +(Distance d) => new Distance.kms(_distance + d.distance);
}
