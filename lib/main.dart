import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flying Wolf'),
        centerTitle: true,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: 40,
              ),
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                  'https://via.placeholder.com/150',
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                child: Text(
                  'Komal Tikoo',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              '2250 Elo rating',
              style: TextStyle(
                fontSize: 13,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: 80,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      ),
                      color: Colors.orangeAccent,
                    ),
                    padding: EdgeInsets.only(left: 20, right: 8, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '34',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 2),
                            Text(
                              'Tournaments ',
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white),
                            ),
                            SizedBox(height: 2),
                            Text(
                              ' played',
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.purple,
                    padding: EdgeInsets.only(left: 20, right: 8, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '09',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 2),
                            Text(
                              'Tournaments ',
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white),
                            ),
                            SizedBox(height: 2),
                            Text(
                              ' won',
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      color: Colors.deepOrange,
                    ),
                    padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '26%',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 2),
                            Text(
                              'Winning ',
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white),
                            ),
                            SizedBox(height: 2),
                            Text(
                              ' percentage',
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
