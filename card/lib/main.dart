import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey,
        body: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    radius: 50.0,
                    backgroundColor: Colors.blueGrey,
                    backgroundImage: AssetImage('images/photo.jpg'),
                  ),
                  Text(
                    'Kit Cat',
                    style: TextStyle(
                        fontSize: 40.0,
                        color: Colors.black,
                        fontFamily: 'Pacifico',
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Flutter Developer',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.bold),
                  ),
                  Card(
                      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                      child: Container(
                        color: Colors.grey.shade400,
                        width: 300.0,
                        height: 50.0,
                        child: ListTile(
                          leading: Icon(
                              Icons.phone,
                            color: Colors.teal,
                          ),
                          title: Text(
                            '+375 25 935 30 62',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 24.0,
                              fontFamily: 'Open Sans',
                            ),
                          ),
                        ),
                      )),
                  Card(
                      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                      child: Container(
                        color: Colors.grey.shade400,
                        width: 300.0,
                        height: 50.0,
                        child: ListTile(
                          leading: Icon(
                            Icons.email,
                            color: Colors.teal,
                          ),
                          title: Text(
                            'vadimirsvs@gmail.com',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: 'Open Sans',
                            ),
                          ),
                        ),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
