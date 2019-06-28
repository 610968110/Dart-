main() {
  final v = new Vector(2, 3);
  final w = new Vector(2, 3);
  var n = v + w;
  print("n -> ${n.x}  ${n.y}");
}

class Vector {
  final int x;
  final int y;

  const Vector(this.x, this.y);

  // Overrides + (a + b).
  Vector operator +(Vector v) {
    return new Vector(x + v.x, y + v.y);
  }
}
