import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: CardMain(),
    ));

class CardMain extends StatefulWidget {
  @override
  State<CardMain> createState() => _CardMainState();
}

class _CardMainState extends State<CardMain> {
  int experienceYear = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3F3E3E),
      appBar: AppBar(
        title: Text("ASTARTA's ID Card"),
        centerTitle: true,
        backgroundColor: Color(0xFF2F2E2E),
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            experienceYear += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: const Color.fromARGB(255, 34, 33, 33),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            _buildProfileImage(
              'https://scontent.ftbs2-2.fna.fbcdn.net/v/t39.30808-6/225560109_1074175199776219_8123171032433289508_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=5f2048&_nc_ohc=T6WD_KZvq04AX8vn4J5&_nc_ht=scontent.ftbs2-2.fna&oh=00_AfAIn7nYf-U57NQN_V0DmBSS_4Y8qwnvTxR4U3WLEJVUvw&oe=6558DD53',
            ),
            SizedBox(height: 12.0),
            _buildInfoText("NAME", Colors.grey, 30.0),
            SizedBox(height: 12.0),
            _buildInfoText("Nini Gedeshuri", Colors.red, 20.0, true),
            SizedBox(height: 30.0),
            _buildInfoText("Rate Developer", Colors.grey, 30.0),
            SizedBox(height: 12.0),
            _buildInfoText("$experienceYear", Colors.red, 20.0, true),
            SizedBox(height: 30.0),
            _buildContactRow(
                Icons.email, "ngedeshuri2001@gmail.com", Colors.grey, 18.0),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileImage(String imageUrl) {
    return FadeInImage(
      placeholder: AssetImage('assets/nini.jpg'),
      image: NetworkImage(imageUrl),
      fit: BoxFit.cover,
    );
  }

  Widget _buildInfoText(String text, Color color, double fontSize,
      [bool bold = false]) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        letterSpacing: 2.0,
        fontSize: fontSize,
        fontWeight: bold ? FontWeight.bold : FontWeight.normal,
      ),
    );
  }

  Widget _buildContactRow(
      IconData icon, String text, Color color, double fontSize) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          color: Colors.grey,
        ),
        SizedBox(width: 10.0),
        Text(
          text,
          style: TextStyle(
            color: color,
            fontSize: fontSize,
            letterSpacing: 1.0,
          ),
        ),
      ],
    );
  }
}
