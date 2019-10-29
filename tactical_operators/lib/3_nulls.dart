import 'package:flutter/material.dart';

void withoutCoalescing() {
  String myValue;
  String fallbackValue = 'fallback';

  String result;
  if (myValue == null)
    result = fallbackValue;
  else
    result = myValue;

  final resultTernary = myValue == null ? fallbackValue : myValue;

  print(result);
  print(resultTernary);
}

void withCoalescing() {
  String myValue;
  String fallbackValue = 'fallback';

  final result = myValue ?? fallbackValue;
  print(result);
}

void assignment() {
  String uninitializedValue;
  String initializedValue = 'something';

  uninitializedValue ??= 'new value';
  initializedValue ??= 'new value';

  print(uninitializedValue);
  print(initializedValue);
}

void access() {
  String uninitializedValue;
  String initializedValue = 'something';

  print(uninitializedValue?.toUpperCase());
  print(initializedValue?.toUpperCase());
}

void spread() {
  List<int> collection;
  final otherCollection = [4, 5, 6];
  final result = [...?collection, ...?otherCollection];
  print(result);
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // withoutCoalescing();
    // withCoalescing();
    // assignment();
    // access();
    spread();
    return Container();
  }
}
