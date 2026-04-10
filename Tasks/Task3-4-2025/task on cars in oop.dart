import 'dart:io';
import 'Cars.dart';
void main() {
  List<Car> carsList = [];
  print("enter the number of cars that you will add");
  int n = int.parse(stdin.readLineSync()!);
  print("--- Enter Info for $n Cars ---");
  for (int i = 1; i <= n; i++) {
    print("Enter details for Car $i:");
    Car c = Car();
    c.fillDataByUser();
    carsList.add(c);
  }
  Car.printAllCars(carsList);
  double total = Car.calculateTotal(carsList);
  print("Total Price of all cars: $total");
  Car.printDiscountReport(carsList);
  Car.printMaxMin(carsList);
}