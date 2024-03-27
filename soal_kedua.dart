import 'dart:io';

void main() {
  print("Masukkan massa Mark (kg): ");
  var markMass = double.parse(stdin.readLineSync()!);
  print("Masukkan tinggi Mark (m): ");
  var markHeight = double.parse(stdin.readLineSync()!);

  print("Masukkan massa John (kg): ");
  var johnMass = double.parse(stdin.readLineSync()!);
  print("Masukkan tinggi John (m): ");
  var johnHeight = double.parse(stdin.readLineSync()!);

  var markBMI = calculateBMI(markMass, markHeight);
  var johnBMI = calculateBMI(johnMass, johnHeight);

  var markHigherBMI = markBMI > johnBMI;

  print("BMI Mark: ${markBMI.toStringAsFixed(2)}");
  print("BMI John: ${johnBMI.toStringAsFixed(2)}");
  if (markHigherBMI) {
    print("Mark Memiliki BMI yang lebih tinggi");
  }else{
    print("John Memiliki BMI yawng lebih tinggi");
  }
}

double calculateBMI(double mass, double height) {
  return mass / (height * height);
}
