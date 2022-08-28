import 'package:flutter/material.dart';

class MyStatefulWidgetwelcome extends StatefulWidget {
  const MyStatefulWidgetwelcome({Key? key}) : super(key: key);

  @override
  _MyStatefulWidgetStatewelcome createState() =>
      _MyStatefulWidgetStatewelcome();
}

class _MyStatefulWidgetStatewelcome extends State<MyStatefulWidgetwelcome> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      "https://wallpaperaccess.com/full/2637581.jpg",
      "https://thumbs.dreamstime.com/b/jour-de-terre-d-environnement-dans-les-mains-des-arbres-cultivant-jeunes-plantes-bokeh-verdissent-la-main-femelle-fond-tenant-l-130247647.jpg"
    ];
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(30),
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
              child: Image.asset('assets/images/image.jpeg'),
            ),
            TextButton(
              onPressed: () {
                //forgot password screen
              },
              child: const Text(
                'Welcome',
                style: TextStyle(
                    fontSize: 30, color: Color.fromRGBO(0, 10, 12, 20)),
              ),
            ),
            Container(
              child: Center(
                child: Text(
                  'Create an account and access thousand of cool stuff',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
            ),
            Container(
                height: 50,
                //color: Color.fromARGB(246, 197, 6, 92),
                padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Getting Started'),
                  onPressed: () {
                    print(nameController.text);
                    print(passwordController.text);
                  },
                )),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(80),
                ),
                Center(
                  child: const Text(
                    'Already have an account ? ',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
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
          ],
        ));
  }
}
