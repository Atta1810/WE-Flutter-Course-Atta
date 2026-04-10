import 'dart:io';

class Car {
  late int _code;
  late String _color;
  late double _price;
  late String _model;

  Car({int code = 1232, String color = "red", double price = 122323, String model = "ferrari"}) {
    this._code = code;
    this._color = color;
    this._price = price;
    this._model = model;
  }
  void setCode(int value) => this._code = value;
  int get code => this._code;

  void setColor(String value) => this._color = value;
  String get color => this._color;

  void setPrice(double value) => this._price = value;
  double get price => this._price;

  void setModel(String value) => this._model = value;
  String get model => this._model;

  void fillDataByUser() {
    print("Code: ");
    this._code = int.parse(stdin.readLineSync()!);
    print("Model: ");
    this._model = stdin.readLineSync()!;
    print("Color: ");
    this._color = stdin.readLineSync()!;
    print("Price: ");
    this._price = double.parse(stdin.readLineSync()!);
  }

  static void printAllCars(List<Car> cars) {
    print("--- All Cars Info ---");
    for (int i = 0; i < cars.length; i++) {
      print("Car num ${i + 1} => Code ${cars[i].code} -- Model -> ${cars[i].model} Color -> ${cars[i].color} Price -> ${cars[i].price}");
    }
  }

  static double calculateTotal(List<Car> cars) {
    double total = 0;
    for (int i = 0; i < cars.length; i++) {
      total += cars[i].price;
    }
    return total;
  }

  static void printDiscountReport(List<Car> cars) {
    print("--- Discount (15%) for each car ---");
    for (int i = 0; i < cars.length; i++) {
      double oldPrice = cars[i].price;
      double newPrice = oldPrice - (oldPrice * 0.15);
      print("Car [Code: ${cars[i].code}]");
      print("  Price Before: $oldPrice");
      print("  Price After : $newPrice");
    }
  }

  static void printMaxMin(List<Car> cars) {
    if (cars.isNotEmpty) {
      Car maxCar = cars[0];
      Car minCar = cars[0];
      for (int i = 1; i < cars.length; i++) {
        if (cars[i].price > maxCar.price) maxCar = cars[i];
        if (cars[i].price < minCar.price) minCar = cars[i];
      }
      print("###############################################");
      print("Max Car Price: ${maxCar.price} (Model: ${maxCar.model})");
      print("Min Car Price: ${minCar.price} (Model: ${minCar.model})");
    }
  }
}