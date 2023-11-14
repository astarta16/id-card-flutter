import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: CardMain(),
    ));

class CardMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 63, 62, 62),
      appBar: AppBar(
        title: Text("ASTARTA's ID"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 47, 46, 46),
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                radius: 80.0,
                backgroundColor: Colors.grey,
                backgroundImage: NetworkImage(
                  'https://scontent.ftbs2-2.fna.fbcdn.net/v/t39.30808-6/225560109_1074175199776219_8123171032433289508_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=5f2048&_nc_ohc=T6WD_KZvq04AX8vn4J5&_nc_ht=scontent.ftbs2-2.fna&oh=00_AfAIn7nYf-U57NQN_V0DmBSS_4Y8qwnvTxR4U3WLEJVUvw&oe=6558DD53',
                ),
              ),
            ),
            SizedBox(height: 12.0),
            Text(
              "NAME",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
                fontSize: 30.0,
              ),
            ),
            SizedBox(height: 12.0),
            Text(
              "Nini Gedeshuri",
              style: TextStyle(
                color: Colors.red,
                letterSpacing: 2.0,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              "Developer",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
                fontSize: 30.0,
              ),
            ),
            SizedBox(height: 12.0),
            Text(
              "1.5 Years experience",
              style: TextStyle(
                color: Colors.red,
                letterSpacing: 2.0,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey,
                ),
                SizedBox(width: 10.0),
                Text(
                  "ngedeshuri2001@gmail.com",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
