import 'package:flutter/material.dart';

class Loginscreen extends StatefulWidget {
  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  GlobalKey<FormState> FormKey = GlobalKey();
  send() {
    if (FormKey.currentState!.validate()) {
      Navigator.of(context).pushNamed('SuccessScreen');
      print('valid');
    } else {
      print('Not valid');
    }
  }

  alert() {
    Text('enter user name ');
    print('enter user name ');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Login '),
        ),
        body: Form(
          key: FormKey,
          child: Column(
            children: [
              SizedBox(height: 50),
              TextFormField(
                autovalidateMode: AutovalidateMode.always,
                validator: (value) {
                  // if (value!.length < 1) {
                  //   return 'Enter Name ';
                  // }
                  if (value!.length < 5) {
                    return ' Full User Name  ';
                  }
                },
                decoration: InputDecoration(
                  errorStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 222, 103, 6),
                      width: 3,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 173, 220, 2),
                      width: 3,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 3,
                    ),
                  ),
                  hintText: 'User Name',
                  label: Text('User Name'),
                  prefixIcon: Icon(
                    Icons.person,
                  ),
                ),
              ),
              SizedBox(height: 50),
              TextFormField(
                autovalidateMode: AutovalidateMode.always,
                validator: (value) {
                  if (value!.length < 1) {
                    return 'enter password  ';
                  }
                  if (value!.length < 5) {
                    return 'enter strong password ';
                  }
                },
                decoration: InputDecoration(
                  errorStyle: TextStyle(color: Colors.grey),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 222, 103, 6),
                      width: 3,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 173, 220, 2),
                      width: 3,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 3,
                    ),
                  ),
                  hintText: 'Password',
                  label: Text('Password'),
                  prefixIcon: Icon(
                    Icons.password,
                  ),
                ),
              ),
              SizedBox(height: 50),
              TextButton(
                onPressed: () {
                  send();
                },
                child: Text('Login'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Back'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
