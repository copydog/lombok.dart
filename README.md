# Lombok (Dart Version)

## Reference
[lombok (Java)](https://projectlombok.org)

## Feature
- [x] @data / @Data() 
  - [ ] full configuration
  - [ ] toString
  - [ ] @EqualAndHashCode
  
- [x] @getter / @Getter()
  - [ ] full configuration
  - [ ] support use on field
  
- [x] @setter / @Getter()
  - [ ] full configuration
  - [ ] support use on field
  
- [ ] @equalsAndHashCode / @EqualsAndHashCode()
  - [ ] full configuration
  
- [ ] @toString / @ToString()
  - [ ] full configuration
  
- [ ] Other
  - [ ] @NonNull
  - [ ] @Cleanup
  - [ ] @NoArgsConstructor, @RequiredArgsConstructor, @AllArgsConstructor
  - [ ] @Value
  - [ ] @Builder
  - [ ] @SneakyThrows
  - [ ] @Synchronized
  - [ ] @Log
  - [ ] experimental
  - [ ] etc.
  
## Usage

A simple usage example:

```dart
// file: some_class.dart

part 'some_class.g.dart';

@data
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
