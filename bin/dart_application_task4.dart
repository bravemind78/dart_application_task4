// ignore_for_file: non_constant_identifier_names

import 'dart:io';

void main() {
  String exit;
  do {
    print("Welcome in Delta Insurance validity checker ");
    stdout.write("what is your name  ");
    String name = stdin.readLineSync()!;
    stdout.write("welcome $name kindly tell us about your gender? M or F  ");
    String gender = stdin.readLineSync()!;
    stdout.write("Age is just a number: tell us about your Age ;)   ");
    int Age = int.parse(stdin.readLineSync()!);
    if (gender == "M" || gender == "m") {
      if (Age > 35) {
        print("Congratulations $name, you qualify for our insurance program");
      } else {
        print(
            "We are very sorry $name, you are not eligible for our insurance program");
      }
    } else if (gender == 'F' || gender == 'f') {
      if (Age > 25) {
        print("Congratulations $name, you qualify for our insurance program");
      } else {
        print(
            "We are very sorry $name, you are not eligible for our insurance program");
      }
    } else {
      print("please Enter Right Gender");
    }
    stdout.write("are you want to exit the program? Y or N ");
    exit = stdin.readLineSync()!.toLowerCase();
  } while (exit != 'Y' && exit != 'y');
}
