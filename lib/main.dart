import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: diCard(),
));

class diCard extends StatefulWidget {
  @override
  State<diCard> createState() => _diCardState();
}
class _diCardState extends State<diCard> {
 int ducklevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('DI ID Card',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30.0,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
        elevation: 0.0,

      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              ducklevel += 1;
            });

          },
          child: Icon(Icons.add),
          backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/duck.jpg'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 70.0,
              color: Colors.grey[900],
            ),
            SizedBox(height: 10.0,),
            Text(
                'NAME',
                  style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                ),
            ),
            SizedBox(height: 10.0,),
             Text(
                  'Mr. Duck',
                    style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 2.0,
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                    ),
             ),
            SizedBox(height: 30.0,),
            Text(
              'CURRENT DUCK LEVEL',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              'LVL $ducklevel',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            Row(
              children: <Widget> [
                Icon(
                  Icons.location_city,
                  color: Colors.white,
                ),
                SizedBox(width: 10.0),
                Text(
                  'Duck Village',
                  style: TextStyle(
                    color: Colors.red[400],
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),

            Row(
              children: <Widget> [
                Icon(
                    Icons.phone,
                    color: Colors.white,
                ),
                SizedBox(width: 10.0),
                Text(
                    '09123456789',
                     style: TextStyle(
                       color: Colors.red[400],
                       fontSize: 18.0,
                       letterSpacing: 1.0,
                     ),
                ),
              ],
            ),

            Row(
              children: <Widget> [
                Icon(
                  Icons.email,
                  color: Colors.white,
                ),
                SizedBox(width: 10.0),
                Text(
                  'mrduck@gmail.com',
                  style: TextStyle(
                    color: Colors.red[400],
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




