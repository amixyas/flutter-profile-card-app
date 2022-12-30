import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Home Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyProfileHomePage(title: 'Profile Home Page'),
    );
  }
}

class MyProfileHomePage extends StatefulWidget {
  const MyProfileHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyProfileHomePage> createState() => _MyProfileHomePageState();
}

class _MyProfileHomePageState extends State<MyProfileHomePage> {
  static const IconData avatar = IconData(0xe491, fontFamily: 'MaterialIcons');

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          clipBehavior: Clip.none,
          children: <Widget>[
            Container(
              width: 290,
              height: 190,
              color: Colors.pink,
              child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget> [
                      const Text(
                        'User User',
                        style: TextStyle(
                          fontSize: 35.0,
                          fontFamily: 'AlexBrush',
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 4),
                            child: const Icon(
                              Icons.email,
                              size: 30.0,
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 4),
                            child: const Text(
                              'user.user@gmail.com',
                              style: TextStyle(
                                  fontSize: 16.0, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 4),
                            child: const Icon(
                              //Icons.person,
                              avatar,
                              size: 30.0,
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 4.0),
                            child: const Text(
                              'Twitter : @user_user',
                              style: TextStyle(
                                  fontSize: 16.0, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )),
            ),
            Positioned(
              bottom: 150,
              right: 70,
              child: Container(
                decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('images/flutter.png'),
                      fit: BoxFit.fill,
                    ),
                    border: Border.all(
                      color: Colors.pink,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(180))),
                width: 150,
                height: 150,
              ),
            ),
          ],
        ),
      ),
    );
  }
}