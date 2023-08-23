import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';

class Counter extends Equatable {
  int value;
  Counter({this.value = 0});
  increament() => value++;
  decreament() => value--;
  @override
  List<Object?> get props => [value];
}
