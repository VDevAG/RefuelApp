import 'package:flutter/material.dart';

void main() {
  runApp(RefuelApp());
}

class RefuelApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.alarm)),
                Tab(icon: Icon(Icons.assessment)),
              ],
            ),
            title: Text('Pitstop'),
          ),
          body: TabBarView(
            children: <Widget>[
              Icon(Icons.alarm), //Set what view to render here
              Stack(
                children: <Widget>[
                  Text('Resultat'),
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: FuelForm(),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      theme: ThemeData(
        // Add the 3 lines from here...
        primaryColor: Colors.black,
      ),
    );
  }
}

class FuelForm extends StatefulWidget {
  @override
  _FuelFormState createState() => _FuelFormState();
}

class _FuelFormState extends State<FuelForm> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(0),
      crossAxisSpacing: 0,
      mainAxisSpacing: 0,
      crossAxisCount: 2,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.alarm,
                  color: Colors.black,
                ),
                Text(
                  'Elapsed time',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                )
              ],
            ),
          ),
          color: Colors.blue[200],
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "7:00",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'min',
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w200,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          color: Colors.grey[900],
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "22",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'ml',
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w200,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          color: Colors.grey[900],
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.invert_colors,
                  color: Colors.black,
                ),
                Text(
                  'Remaining Fuel',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                )
              ],
            ),
          ),
          color: Colors.blue[200],
        ),
      ],
    );
  }
}
