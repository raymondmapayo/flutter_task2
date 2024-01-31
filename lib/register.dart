import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController usernamecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController cpasswordcontroller = TextEditingController();
  TextEditingController gendercontroller = TextEditingController();
  TextEditingController civilstatuscontroller = TextEditingController();
  TextEditingController birthdatecontroller = TextEditingController();
  late String errormessage;
  late bool isError;

  @override
  void initState() {
    errormessage = "This is an error";
    isError = false;
    super.initState();
  }

  var txtstyle = const TextStyle(
    fontWeight: FontWeight.bold,
    letterSpacing: 2,
    fontSize: 38,
  );
  var errortxtstyle = const TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.red,
    letterSpacing: 1,
    fontSize: 18,
  );

  void checkRegister(
      name, username, password, cpassword, gender, civilstatus, birthdate) {
    setState(() {
      if (name == "") {
        errormessage = "Please input your name";
        isError = true;
      } else if (username == "") {
        errormessage = "Please input your username";
        isError = true;
      } else if (password == "") {
        errormessage = "Please input your password";
        isError = true;
      } else if (cpassword == "") {
        errormessage = "Please input your confirm password";
        isError = true;
      } else if (password != cpassword) {
        errormessage = "Both passwords must be the same";
        isError = true;
      } else if (gender == "") {
        errormessage = "Please input your gender";
        isError = true;
      } else if (civilstatus == "") {
        errormessage = "Please input your civil status";
        isError = true;
      } else if (birthdate == "") {
        errormessage = "Please input your birthdate";
        isError = true;
      } else {
        errormessage = "";
        isError = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          shrinkWrap: true,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'SIGN IN',
                    style: txtstyle,
                  ),
                  const SizedBox(height: 15),
                  TextField(
                    controller: namecontroller,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter name',
                      prefixIcon: Icon(Icons.account_box),
                    ),
                  ),
                  const SizedBox(height: 15),
                  TextField(
                    controller: usernamecontroller,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter Username',
                      prefixIcon: Icon(Icons.person),
                    ),
                  ),
                  const SizedBox(height: 15),
                  TextField(
                    controller: passwordcontroller,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter Password',
                      prefixIcon: Icon(Icons.lock),
                    ),
                  ),
                  const SizedBox(height: 15),
                  TextField(
                    controller: cpasswordcontroller,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter Confirm Password',
                      prefixIcon: Icon(Icons.lock),
                    ),
                  ),
                  const SizedBox(height: 15),
                  TextField(
                    controller: gendercontroller,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter gender',
                      prefixIcon: Icon(Icons.male),
                    ),
                  ),
                  const SizedBox(height: 15),
                  TextField(
                    controller: civilstatuscontroller,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter civil status',
                      prefixIcon: Icon(Icons.social_distance),
                    ),
                  ),
                  const SizedBox(height: 15),
                  TextField(
                    controller: birthdatecontroller,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter birthdate',
                      prefixIcon: Icon(Icons.calendar_month),
                    ),
                  ),
                  const SizedBox(height: 15),
                  ElevatedButton(
                    key: const Key('registerButton'),
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(50),
                    ),
                    onPressed: () {
                      checkRegister(
                        namecontroller.text,
                        usernamecontroller.text,
                        passwordcontroller.text,
                        cpasswordcontroller.text,
                        gendercontroller.text,
                        civilstatuscontroller.text,
                        birthdatecontroller.text,
                      );
                    },
                    child: const Text('REGISTER'),
                  ),
                  const SizedBox(height: 15),
                  (isError)
                      ? Text(
                          errormessage,
                          style: errortxtstyle,
                        )
                      : Container(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
