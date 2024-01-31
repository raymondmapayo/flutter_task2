import 'package:flutter/material.dart';

class AddPage extends StatefulWidget {
  const AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  TextEditingController value1Controller = TextEditingController();
  TextEditingController value2Controller = TextEditingController();
  late dynamic output;
  @override
  void initState() {
    output = 0;
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void calculate(val1, val2, type) {
    val1 = int.parse(val1);
    val2 = int.parse(val2);
    setState(() {
      if (type == "add") {
        output = val1 + val2;
      } else if (type == "subtract") {
        output = val1 - val2;
      } else if (type == "multiply") {
        output = val1 * val2;
      } else if (type == "divide") {
        output = val1 / val2;
      } else {
        output = "Invalid output";
      }
    });
  }

  btnStyle(Color colorVal) => ElevatedButton.styleFrom(
        backgroundColor: colorVal,
        minimumSize: const Size.fromHeight(50),
      );

  var txtStyle = const TextStyle(
    fontWeight: FontWeight.bold,
    letterSpacing: 2,
    fontSize: 18,
  );

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
                controller: value1Controller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter value 1',
                  prefixIcon: Icon(Icons.numbers),
                ),
              ),
              const SizedBox(
                height: 17,
              ),
              TextField(
                controller: value2Controller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.numbers),
                  labelText: 'Enter value 2',
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                style: btnStyle(Colors.blue),
                onPressed: () {
                  calculate(
                    value1Controller.text,
                    value2Controller.text,
                    "add",
                  );
                },
                child: const Text('ADD'),
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                style: btnStyle(Colors.pink),
                onPressed: () {
                  calculate(
                    value1Controller.text,
                    value2Controller.text,
                    "subtract",
                  );
                },
                child: const Text('SUBTRACT'),
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                style: btnStyle(Colors.green),
                onPressed: () {
                  calculate(
                    value1Controller.text,
                    value2Controller.text,
                    "multiply",
                  );
                },
                child: const Text('MULTIPLY'),
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                style: btnStyle(Colors.orange),
                onPressed: () {
                  calculate(
                    value1Controller.text,
                    value2Controller.text,
                    "divide",
                  );
                },
                child: const Text('DIVIDE'),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'OUTPUT:',
                  ),
                  Text(
                    '$output',
                    style: txtStyle,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
