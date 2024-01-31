import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  TextEditingController txtController = TextEditingController();
  late String value;
  @override
  void initState() {
    value = "";
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stateful Page'),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: txtController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter value',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    value = txtController.text;
                  });
                },
                child: const Text('SHOW'),
              ),
              Text('value: $value'),
            ],
          ),
        ),
      ),
    );
  }
}
