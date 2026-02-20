import 'dart:io';

void main() {
  String producta = "biscuit";
  double pricea = 25.50;
  double disA = 15.0;
  print("Enter quantity for $producta:");
  int qa = int.parse(stdin.readLineSync()!);
  double TA = pricea * qa;
  double DA;
  if (qa >= 5) {
    DA = TA - (TA / 100 * disA);
  } else {
    DA = TA;
  }
  String productv = "cookies";
  double pricev = 30.25;
  double disV = 7.5;
  print("Enter quantity for $productv:");
  int qv = int.parse(stdin.readLineSync()!);
  double TV = pricev * qv;
  double DV;
  if (qv >= 5) {
    DV = TV - (TV / 100 * disV);
  } else {
    DV = TV;
  }
  String productc = "cheese";
  double pricec = 90.00;
  double disC = 10.0;
  print("Enter quantity for $productc:");
  int qc = int.parse(stdin.readLineSync()!);
  double TC = pricec * qc;
  double DC;
  if (qc >= 5) {
    DC = TC - (TC / 100 * disC);
  } else {
    DC = TC;
  }
  String productu = "oil";
  double priceu = 45.75;
  double disU = 15.0;
  print("Enter quantity for $productu:");
  int qu = int.parse(stdin.readLineSync()!);
  double TU = priceu * qu;
  double DU;
  if (qu >= 5) {
    DU = TU - (TU / 100 * disU);
  } else {
    DU = TU;
  }

  print("Product $producta  Quantity: $qa  Total: $TA  Final: $DA");
  print("Product $productv  Quantity: $qv  Total: $TV  Final: $DV");
  print("Product $productc   Quantity: $qc  Total: $TC  Final: $DC");
  print("Product $productu      Quantity: $qu  Total: $TU  Final: $DU");

  print("---------------");

  double finalBefore = TA + TV + TC + TU;
  double finalAfter = DA + DV + DC + DU;

  print("Total Before Discount: $finalBefore");
  print("Total After Discount:  $finalAfter");
}
