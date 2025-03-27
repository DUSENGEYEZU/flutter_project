import 'package:flutter/material.dart';
import 'package:function_app/gradient_container.dart';

void main() {
  const gradientStartColor = Color.fromARGB(255, 63, 1, 124);
const gradientEndColor = Color.fromARGB(255, 47, 3, 119);
const colors = [gradientStartColor, gradientEndColor];
  runApp( MyApp(colors:colors));
}
