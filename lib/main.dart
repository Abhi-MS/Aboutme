import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Intro(),
  ));
}
class Intro extends StatefulWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  String level = "Beginner";
  int a=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        title: Text('About Me',
        style: TextStyle(
          color: Colors.white70,
          letterSpacing: 2.0,
          fontSize: 30,
        ),),
        centerTitle: true,
        backgroundColor: Colors.black54,
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            setState(() {
              if(a==1){
                level="Amateur";
                a=2;}
              else{
                level="Pro";
                a=3;
              }
            });
          },
          child: Icon(Icons.upgrade),
          backgroundColor: Colors.black54,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0,0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/a.jpg'),
              radius: 50.0,),
            Divider(
              height: 60,
              color: Colors.black12,
            ),
            Text('NAME',
            style: TextStyle(
                color: Colors.white60,
                letterSpacing:2.0,
                fontSize: 15),),
            SizedBox(height: 10,),
            Text('Abhi Murali',
              style: TextStyle(
                  color: Colors.amber,
                  letterSpacing:2.0,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30,),
            Text('Level',
              style: TextStyle(
                  color: Colors.white60,
                  letterSpacing:2.0,
                  fontSize: 15),),
            SizedBox(height: 10,),
            Text('$level',
              style: TextStyle(
                  color: Colors.amber,
                  letterSpacing:2.0,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                Icon(
                    Icons.email,
                    color: Colors.white54,),
                SizedBox(width: 10.0,),
                Text(
                    'abhimsrami@gmail.com',
                     style: TextStyle(
                       color: Colors.white54,
                       fontSize: 18.0,
                       letterSpacing: 1.0,
                     ),)
              ],
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                Icon(
                  Icons.camera_alt_outlined,
                  color: Colors.white54,),
                SizedBox(width: 10.0,),
                Text(
                  'photo_phile_photography',
                  style: TextStyle(
                    color: Colors.white54,
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  ),)
              ],
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                Icon(
                  Icons.web,
                  color: Colors.white54,),
                SizedBox(width: 10.0,),
                Text(
                  'www.abhimurali.com',
                  style: TextStyle(
                    color: Colors.white54,
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  ),)
              ],
            ),

          ],
        ),

      ),
    );
  }
}


