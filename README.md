Lombok (Dart Version)

## Reference
[lombok (Java)](https://projectlombok.org)

## Usage

A simple usage example:

```dart
// file: some_class.dart

part 'some_class.g.dart';

@Data
class SomeClass with _$SomeClassLombok {
  int counter = 1;
}

// Equal to
class SomeClass {
  int counter = 1;
  
  int getCounter() {
    return counter;
  }
  
  void setCounter(int counter) {
    this.counter = counter;
  }
}

```
