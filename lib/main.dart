import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 155, 155, 153),
        ),
        drawer: Drawer(),
        body: ListView(
          children: [
            Container(
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      "https://parispeaceforum.org/wp-content/uploads/2021/10/NET-ZERO-SPACE-INITIATIVE-1.png"),
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            "http://cdn.cnn.com/cnnnext/dam/assets/220727110543-06-space-perspective.jpg"),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://images.immediate.co.uk/production/volatile/sites/25/2020/04/Things-never-knew-astronomy-e454e5d.jpg?resize=620,413?quality=90&resize=620,414"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    child: RaisedButton(
                      disabledElevation: 30,
                      colorBrightness: Brightness.light,
                      elevation: 50,
                      focusElevation: 70,
                      child: Text(
                        "press",
                      ),
                      color: Color.fromARGB(255, 31, 31, 96),
                      onPressed: () {
                        print("welcome");
                      },
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shadowColor: Colors.amber,
                        fixedSize: Size(80, 20),
                        onPrimary: Colors.white,
                        primary: Color.fromARGB(255, 0, 34, 81),
                        elevation: 20,
                      ),
                      onLongPress: () {
                        print("you prissed to long");
                      },
                      onPressed: () {
                        print("welcome");
                      },
                      child: Text("press here"),
                    ),
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  Container(
                    child: ElevatedButton.icon(
                      onLongPress: () {
                        print("you pressed to long ");
                      },
                      onPressed: () {
                        print("welcome");
                      },
                      icon: Icon(
                        Icons.question_answer,
                        color: Color.fromARGB(255, 86, 25, 2),
                      ),
                      label: Text("message us "),
                      style: ElevatedButton.styleFrom(
                        shadowColor: Color.fromARGB(255, 10, 10, 10),
                        onPrimary: Color.fromARGB(255, 86, 25, 2),
                        primary: Color.fromARGB(255, 169, 199, 214),
                        elevation: 20,
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Container(
                    child: MaterialButton(
                      disabledElevation: 20,
                      height: 50,
                      minWidth: 40,
                      textColor: Colors.white,
                      elevation: 50,
                      disabledColor: Colors.amber,
                      color: Color.fromARGB(255, 58, 58, 57),
                      child: Text("press here",style: TextStyle(fontSize: 20),),
                      
                      onPressed:() {
                      print("welcome");

                    },),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
