# Motorcycle Brands

## Week 10 Activity: Dart Programming – OOP

**Student Name:** Althea Chua  
**Block:** 3.1BSIT  
**Activity:** Week 10 Activity

## Learning Objectives

To understand and apply Object-Oriented Programming (OOP) concepts in Dart, including inheritance, polymorphism, abstract classes, method overriding, and mixins, while retaining the encapsulation concepts learned in Week 9.

## Description

This Dart program extends the Week 9 Motorcycle Brands project by introducing inheritance and other advanced OOP concepts. It uses an abstract `Motorcycle` base class containing properties such as brand, model, year, and price.

Two derived classes, `HondaMotorcycle` and `YamahaMotorcycle`, inherit from the base class and override methods to display different motorcycle information and descriptions. The program also demonstrates encapsulation through a private price field and methods for retrieving and updating the price.

Additionally, an abstract method requires each derived class to provide its own motorcycle description. A `MaintenanceReminder` mixin demonstrates reusable behavior through a separate `MotorcycleMaintenance` class that does not inherit from the main `Motorcycle` class.

## Features

- **Base Class:** Defines the common properties and methods of motorcycles using an abstract `Motorcycle` class.
- **Inheritance:** Uses `extends` to create `HondaMotorcycle` and `YamahaMotorcycle` subclasses.
- **Polymorphism:** Demonstrates different method behaviors through overridden methods in the derived classes.
- **Method Overriding:** Uses `@override` to provide specific implementations of `displayInfo()` and `describeMotorcycle()`.
- **Abstract Method:** Requires each concrete motorcycle subclass to implement `describeMotorcycle()`.
- **Mixin:** Uses `MaintenanceReminder` to provide reusable maintenance reminder functionality through the `with` keyword.
- **Encapsulation:** Uses a private `_price` field and methods to retrieve and update the motorcycle price with validation.
- **Constructors:** Initializes motorcycle objects and passes values to the base class using `super()`.
- **List Usage:** Stores different motorcycle subclass objects in a `List<Motorcycle>` and displays their information using a loop.

## Technologies Used

- Dart Programming Language
- Visual Studio Code
- Dart SDK

## How to Run

1. Make sure the Dart SDK is installed on your computer.
2. Open the project folder in Visual Studio Code.
3. Open the terminal in the project folder.
4. Run the following command:

   ```bash
   dart run motorcycle.dart
   ```

5. Check the terminal output to verify the motorcycle information, updated price, and maintenance reminder.

## Expected Output

The program displays the following:

- Honda and Yamaha motorcycle information.
- Different descriptions for each motorcycle.
- The original and updated price of the Honda motorcycle.
- A maintenance reminder demonstrating the mixin functionality.

## Conclusion

This activity extends the Week 9 Motorcycle Brands program by applying inheritance, polymorphism, abstract classes, method overriding, and mixins in Dart. It demonstrates how classes can share common behavior, implement specialized methods, and reuse functionality while maintaining encapsulation.
