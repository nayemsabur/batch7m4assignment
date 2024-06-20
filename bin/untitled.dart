class Car {
  static int numberOfCars = 0;

  String brand;
  String model;
  int year;
  double milesDriven;

  Car(this.brand, this.model, this.year) : milesDriven = 0.0 {
    numberOfCars++;
  }

  void drive(double miles) {
    this.milesDriven += miles;
  }

  double getMilesDriven() {
    return this.milesDriven;
  }

  String getBrand() {
    return this.brand;
  }

  String getModel() {
    return this.model;
  }

  int getYear() {
    return this.year;
  }

  int getAge(int currentYear) {
    return currentYear - this.year;
  }
}

void main() {

  Car car1 = Car("Toyota", "Camry", 2019);
  Car car2 = Car("Honda", "Accord", 2015);
  Car car3 = Car("Tesla", "Model S", 2020);

  car1.drive(10000.5);
  car2.drive(7500.2);
  car3.drive(3000.7);

  print("Car 1:");
  print("Brand: ${car1.getBrand()}");
  print("Model: ${car1.getModel()}");
  print("Year: ${car1.getYear()}");
  print("Miles driven: ${car1.getMilesDriven()}");
  print("Age: ${car1.getAge(2024)}");

  print("\nCar 2:");
  print("Brand: ${car2.getBrand()}");
  print("Model: ${car2.getModel()}");
  print("Year: ${car2.getYear()}");
  print("Miles driven: ${car2.getMilesDriven()}");
  print("Age: ${car2.getAge(2024)}");

  print("\nCar 3:");
  print("Brand: ${car3.getBrand()}");
  print("Model: ${car3.getModel()}");
  print("Year: ${car3.getYear()}");
  print("Miles driven: ${car3.getMilesDriven()}");
  print("Age: ${car3.getAge(2024)}");
  print("\nTotal number of cars created: ${Car.numberOfCars}");
}
