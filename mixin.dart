mixin A {
  void doA() {
    print('doa');
  }
}

class B with A {
  void doA() {
    print('doa override');
  }
}

void main() {
  var a = B();
  a.doA();
}
