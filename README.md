# 🎲 Roll Dice Mini App

## 📌 Overview
This is a simple **Flutter** application built for practice to strengthen my understanding of Flutter fundamentals. The app allows users to roll a dice by tapping a button, which updates the displayed dice image randomly. This project helped reinforce my knowledge of state management, widgets, and UI design in Flutter.

## ✨ Features
- 🎨 **Gradient Background** for a visually appealing UI.
- 🎲 **Dice Roller** functionality with dynamic image updates.
- 🔄 **Stateful Widget** to manage dice roll changes.
- 🖌️ **Custom AppBar Styling**.

## 📂 Project Structure
```
roll_dice_app/
│── assets/images/          # Dice images (dice-1.png to dice-6.png)
│── lib/
│   ├── main.dart           # Entry point of the app
│   ├── gradient_container.dart # Widget for gradient background
│   ├── dice_roller.dart    # Stateful widget to handle dice rolling logic
│── pubspec.yaml           # Flutter dependencies & asset configurations
```

## 📜 Code Implementation

### **main.dart** (Entry Point)
```dart
import 'package:flutter/material.dart';
import 'package:roll_dice_app/gradinet_container.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Roll Dice Mini App",
            style: TextStyle(color: Colors.white, fontSize: 28),
          ),
          backgroundColor: const Color.fromARGB(255, 49, 122, 205),
        ),
        body: GradinetContainer([
          Color.fromARGB(255, 41, 97, 143),
          Color.fromARGB(255, 18, 58, 79),
        ]),
      ),
    ),
  );
}
```

### **gradient_container.dart** (Gradient Background)
```dart
import 'package:flutter/material.dart';
import 'package:roll_dice_app/dice_roller.dart';

class GradinetContainer extends StatelessWidget {
  const GradinetContainer(this.colors, {super.key});
  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(child: DiceRoller()),
    );
  }
}
```

### **dice_roller.dart** (Dice Rolling Logic)
```dart
import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var currentRollDice = 1;

  void rollDice() {
    setState(() {
      currentRollDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/dice-\$currentRollDice.png', width: 200),
        SizedBox(height: 40),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: TextStyle(fontSize: 28),
          ),
          child: Text('Roll The Dice'),
        ),
      ],
    );
  }
}
```

## 🛠️ Widgets Used
### **Stateless Widgets**
- `GradinetContainer`: Used to create the gradient background.
- `AppBar`: Custom-styled app bar with title text.

### **Stateful Widgets**
- `DiceRoller`: Manages dice rolling logic using `setState()` to update the UI dynamically.

### **Other Widgets & Features**
- `Container`: Holds the gradient background.
- `Image.asset()`: Displays the dice images dynamically.
- `TextButton`: Allows users to roll the dice by pressing a button.

## 📽️ Output
(Add your screen recording or screenshots of the app running here.)

## 📌 How to Run
1. Clone the repository:
   ```sh
   git clone https://github.com/yourusername/roll_dice_app.git
   ```
2. Navigate to the project directory:
   ```sh
   cd roll_dice_app
   ```
3. Get the dependencies:
   ```sh
   flutter pub get
   ```
4. Run the app:
   ```sh
   flutter run
   ```

## 📄 License
This project is for learning purposes. Feel free to modify and use it as needed!

---
### 🚀 Made with ❤️ using Flutter
---

Let me know if you want any modifications! 🎯

