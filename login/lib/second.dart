import 'package:flutter/material.dart';

import 'home_screen.dart';
class MyStatefulWidgetsecondscreen extends StatefulWidget {
  const MyStatefulWidgetsecondscreen({Key? key}) : super(key: key);

  @override
  _MyStatefulWidgetsecondscreen createState() => _MyStatefulWidgetsecondscreen();
}

class _MyStatefulWidgetsecondscreen extends State<MyStatefulWidgetsecondscreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
   @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(20),
            ),
            Center(
              child: CircleAvatar(
                backgroundColor: Color.fromARGB(255, 255, 255, 255),
                radius: 20,
                child: Text(
                  'R',
                  style: TextStyle(
                      fontSize: 25, color: Color.fromARGB(255, 206, 44, 101)),
                ), //Text
              ),
            ),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(20),
                child: const Text(
                  'Sign Up Now',
                  style: TextStyle(
                      color: Color.fromARGB(255, 17, 18, 18),
                      fontWeight: FontWeight.w500,
                      fontSize: 20),
                )),
            Container(
                alignment: Alignment.center,
                child: const Text(
                  'please fill the details and create account',
                  style: TextStyle(fontSize: 10),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Fullname',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                //forgot password screen
              },
              child: const Text(
                'Password must be more than 8 characyers',
              ),
            ),
            Container(
                height: 50,
                //color: Color.fromARGB(246, 197, 6, 92),
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Log in'),
                  onPressed: () {
                    print(nameController.text);
                    print(passwordController.text);
                  },
                )),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(30),
                ),
                const Text(
                  'Already have an account ? ',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
                TextButton(
                  child: const Text(
                    'Log in',
                    style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
                  ),
                  onPressed: () {
                    //signup screen
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(40),
                ),
                const Text(
                  'Or connect with',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 35, 27, 147),
                  radius: 20,
                  child: Text(
                    'f',
                    style: TextStyle(
                        fontSize: 25,
                        color: Color.fromARGB(255, 239, 232, 234)),
                  ), //Text
                ),
                CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 45, 134, 186),
                  radius: 20,
                  child: Text(
                    'twi',
                    style: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 229, 231, 234)),
                  ), //Text
                ),
                CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 201, 37, 11),
                  radius: 20,
                  child: Text(
                    'G+',
                    style: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 229, 231, 234)),
                  ), //Text
                ),
              ],
            ),
          ],
        ));
  }
}
