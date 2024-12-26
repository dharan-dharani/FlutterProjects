import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CounterApp extends StatefulWidget {
  @override
  _CounterAppState createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int _counter = 0;

  @override
  void initState() {
    super.initState();
    _loadCounter(); // Load saved counter value when the app starts
  }

  // Load counter value from SharedPreferences
  Future<void> _loadCounter() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      setState(() {
        _counter = prefs.getInt('counter') ?? 0; // Default to 0 if not found
      });
    } catch (e) {
      print("Error loading counter: $e");
    }
  }

  // Increment counter and save it in SharedPreferences
  Future<void> _incrementCounter() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      setState(() {
        _counter++;
      });
      await prefs.setInt('counter', _counter); // Save the updated value
    } catch (e) {
      print("Error saving counter: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter with SharedPreferences'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'You have pressed the button this many times:',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            Text(
              '$_counter',
              style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

void main() => runApp(MaterialApp(home: CounterApp()));
