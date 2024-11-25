

import 'dart:io';
import 'package:dcli/dcli.dart';

void main() {
  var name = ask('name:', required: true,validator: Ask.alpha);
  print('Hello $name');

}