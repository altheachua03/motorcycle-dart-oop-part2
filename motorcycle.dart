abstract class Motorcycle {
  String brand;
  String model;
  int year;
  double _price;

  Motorcycle(this.brand, this.model, this.year, this._price);

  double getPrice() {
    return _price;
  }

  void setPrice(double newPrice) {
    if (newPrice > 0) {
      _price = newPrice;
    } else {
      print("Invalid price!");
    }
  }

  String describeMotorcycle();

  void displayInfo() {
    print("Brand: $brand");
    print("Model: $model");
    print("Year: $year");
    print("Price: PHP ${_price.toStringAsFixed(2)}");
    print("Description: ${describeMotorcycle()}");
    print("-------------------------");
  }
}

class HondaMotorcycle extends Motorcycle {
  HondaMotorcycle(String brand, String model, int year, double price)
    : super(brand, model, year, price);

  @override
  String describeMotorcycle() {
    return "A Honda motorcycle for everyday riding.";
  }

  @override
  void displayInfo() {
    print("HONDA MOTORCYCLE");
    super.displayInfo();
  }
}

class YamahaMotorcycle extends Motorcycle {
  YamahaMotorcycle(String brand, String model, int year, double price)
    : super(brand, model, year, price);

  @override
  String describeMotorcycle() {
    return "A Yamaha motorcycle for comfortable city travel.";
  }

  @override
  void displayInfo() {
    print("YAMAHA MOTORCYCLE");
    super.displayInfo();
  }
}

mixin MaintenanceReminder {
  void showMaintenanceReminder() {
    print("Reminder: Check the tires, brakes, and engine regularly.");
  }
}

class MotorcycleMaintenance with MaintenanceReminder {}

void main() {
  Motorcycle motorcycle1 = HondaMotorcycle(
    "Honda",
    "Click 125i",
    2025,
    81900.00,
  );

  Motorcycle motorcycle2 = YamahaMotorcycle(
    "Yamaha",
    "Mio Fazzio",
    2025,
    93900.00,
  );

  List<Motorcycle> motorcycles = [motorcycle1, motorcycle2];

  print("MOTORCYCLE BRANDS");
  print("=========================");

  for (Motorcycle motorcycle in motorcycles) {
    motorcycle.displayInfo();
  }

  print("ENCAPSULATION");
  print("=========================");
  print("Original price: PHP ${motorcycle1.getPrice().toStringAsFixed(2)}");

  motorcycle1.setPrice(85000.00);

  print("Updated price: PHP ${motorcycle1.getPrice().toStringAsFixed(2)}");

  print("\nMIXIN DEMONSTRATION");
  print("=========================");

  MotorcycleMaintenance maintenance = MotorcycleMaintenance();
  maintenance.showMaintenanceReminder();
}
