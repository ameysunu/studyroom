import 'package:flutter/material.dart';
import 'agora/main.dart';

class HomeUI extends StatefulWidget {
  @override
  _HomeUIState createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  @override
  String meeting = "Meeting in-session.";
  bool presentSelected = false;
  bool isSelected = false;
  bool isSelected1 = false;
  bool isSelected2 = false;

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "Welcome",
            style: TextStyle(color: Colors.white, fontFamily: 'Poppins'),
          ),
        ),
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Welcome to StudyRoom, choose your seat and join a meeting or be the presenter.",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                        fontSize: 15),
                  ),
                ),
                Card(
                  color: Colors.grey[900],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(25.0),
                      bottom: Radius.circular(25.0),
                    ),
                  ),
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 20, 20, 5),
                        child: SizedBox(
                          width: double.infinity,
                          height: 100,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Meetings',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 24.0,
                                    color: Colors.white),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                child: Text(
                                  meeting,
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 15.0,
                                      color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Card(
                    color: Colors.grey[900],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(25.0),
                        bottom: Radius.circular(25.0),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        InkWell(
                          onTap: () {
                            presentSelected = !presentSelected;
                            setState(() {});
                          },
                          child: presentSelected
                              ? Icon(
                                  Icons.laptop_mac,
                                  size: 75,
                                  color: Colors.white54,
                                )
                              : Icon(
                                  Icons.laptop_mac,
                                  size: 75,
                                  color: Colors.white,
                                ),
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  15.0, 8.0, 8.0, 8.0),
                              child: InkWell(
                                onTap: () {
                                  isSelected = !isSelected;
                                  setState(() {});
                                },
                                child: isSelected
                                    ? Icon(
                                        Icons.event_seat,
                                        size: 75,
                                        color: Colors.white54,
                                      )
                                    : Icon(
                                        Icons.event_seat,
                                        size: 75,
                                        color: Colors.white,
                                      ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(
                                onTap: () {
                                  isSelected1 = !isSelected1;
                                  setState(() {});
                                },
                                child: isSelected1
                                    ? Icon(
                                        Icons.event_seat,
                                        size: 75,
                                        color: Colors.white54,
                                      )
                                    : Icon(
                                        Icons.event_seat,
                                        size: 75,
                                        color: Colors.white,
                                      ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 75,
                                width: 75,
                                child: Image.asset("images/genz.jpg"),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.event_seat,
                                color: Colors.white,
                                size: 75,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(15, 8, 8, 8),
                              child: Container(
                                height: 75,
                                width: 75,
                                child: Image.asset("images/gen1.jpg"),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.event_seat,
                                color: Colors.white,
                                size: 75,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.event_seat,
                                color: Colors.white,
                                size: 75,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.event_seat,
                                color: Colors.white,
                                size: 75,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(15, 8, 8, 8),
                              child: Icon(
                                Icons.event_seat,
                                color: Colors.white,
                                size: 75,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 75,
                                width: 75,
                                child: Image.asset("images/gen2.jpg"),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(
                                onTap: () {
                                  isSelected2 = !isSelected2;
                                  setState(() {});
                                },
                                child: isSelected2
                                    ? Icon(
                                        Icons.event_seat,
                                        size: 75,
                                        color: Colors.white54,
                                      )
                                    : Icon(
                                        Icons.event_seat,
                                        size: 75,
                                        color: Colors.white,
                                      ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.event_seat,
                                color: Colors.white,
                                size: 75,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(15, 8, 8, 8),
                              child: Icon(
                                Icons.event_seat,
                                color: Colors.white,
                                size: 75,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.event_seat,
                                color: Colors.white,
                                size: 75,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.event_seat,
                                color: Colors.white,
                                size: 75,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 75,
                                width: 75,
                                child: Image.asset("images/gen3.jpg"),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: RaisedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => MyApp()),
                            );
                          },
                          child: Text(
                            'Meeting room',
                            style: TextStyle(fontFamily: 'Poppins'),
                          ),
                          color: Colors.white,
                          textColor: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
