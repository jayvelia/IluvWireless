import 'package:flutter/material.dart';

 void main() => runApp(MyApp());

 // boilerplate code
 class MyApp extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
 return MaterialApp(
title: 'Flutter',
home: Scaffold(
appBar: AppBar(
title: Text('Flutter'),
),
body: MyWidget(),
),
);
}
}

// widget class
class MyWidget extends StatefulWidget {
 @override
 _MyWidgetState createState() => _MyWidgetState();
 }

 // state class
 // We will replace this class in each of the examples below
 class _MyWidgetState extends State<MyWidget> {

 // state variable

     String _textString = 'Hello world';
     int sum = 0;

 // The State class must include this method, which builds the widget
 @override
 Widget build(BuildContext context) {
  return ListView(
   children: <Widget>[
    Text('sum = '+sum.toString()),
 ListTile(
 leading: CircleAvatar(
 backgroundImage: AssetImage('assets/images/1.jpg'),
 ),
 title: Text('Dream terror and death'),
  subtitle: Text('Price: \$7'),
  trailing: Icon(Icons.keyboard_arrow_right),
  onTap: () {
  print('Dream terror and death');
  _doSomething(7);
  },
  ),
  ListTile(
  leading: CircleAvatar(
  backgroundImage: AssetImage('assets/images/2.jpg'),
  ),
  title: Text('Book of horror'),
  subtitle: Text('Price: \$10'),
  trailing: Icon(Icons.keyboard_arrow_right),
  onTap: () {
  print('Book of horror');
  _doSomething(10);
  },
  ),
  ListTile( leading: CircleAvatar(backgroundImage: AssetImage('assets/images/3.jpg'),),
  title: Text('the colour out spaces'),
  subtitle: Text('Price: \$6'),
  trailing: Icon(Icons.keyboard_arrow_right),
  onTap: () {
  print('the colour out spaces');
  _doSomething(6);
  },
  ),
  ListTile(
  leading: CircleAvatar(
  backgroundImage: AssetImage('assets/images/4.jpg'),
  ),
  title: Text('The complete fiction'),
  subtitle: Text('Price: \$10'),
  trailing: Icon(Icons.keyboard_arrow_right),
  onTap: () {
  print('the complete fiction');
  _doSomething(10);
  },
  ),
  ListTile(
  leading: CircleAvatar(
  backgroundImage: AssetImage('assets/images/5.jfif'),
  ),
  title: Text('Cthulhu'),
  subtitle: Text('Price: \$5'),
  trailing: Icon(Icons.keyboard_arrow_right),
  onTap: () {
  print('Cthulhu');
  _doSomething(5);
  },
  ),
  ListTile( leading: CircleAvatar(backgroundImage: AssetImage('assets/images/6.jpg'),),
  title: Text('the horror in the museum'),
  subtitle: Text('Price: \$6'),
  trailing: Icon(Icons.keyboard_arrow_right),
  onTap: () {
  print('the horror in the museum');
  _doSomething(6);
  },
  ),
    ListTile( leading: CircleAvatar(backgroundImage: AssetImage('assets/images/7.jpg'),),
     title: Text('Nine chilling tales'),
     subtitle: Text('Price: \$7'),
     trailing: Icon(Icons.keyboard_arrow_right),
     onTap: () {
      print('nine chilling tales');
      _doSomething(7);
     },
    ),
    ListTile( leading: CircleAvatar(backgroundImage: AssetImage('assets/images/8.jfif'),),
     title: Text('the haunter of the dark'),
     subtitle: Text('Price: \$8'),
     trailing: Icon(Icons.keyboard_arrow_right),
     onTap: () {
      print('the haunter of the dark');
      _doSomething(8);
     },
    ),
    ListTile( leading: CircleAvatar(backgroundImage: AssetImage('assets/images/9.jfif'),),
     title: Text('Country'),
     subtitle: Text('Price: \$6'),
     trailing: Icon(Icons.keyboard_arrow_right),
     onTap: () {
      print('Country');
      _doSomething(6);
     },
    ),
    ListTile( leading: CircleAvatar(backgroundImage: AssetImage('assets/images/10.jpg'),),
     title: Text('At the mountain of madness'),
     subtitle: Text('Price: \$8'),
     trailing: Icon(Icons.keyboard_arrow_right),
     onTap: () {
      print('At the mountain of madness');
      _doSomething(8);
     },
    ),
  ],
  );
  }

 // this private method is run whenever the button is pressed

 void _doSomething(int price) {

 // Using the callback State.setState() is the only way to get the build
 // method to rerun with the updated state value.

 setState(() {
 sum+=price;
 });
 }
 }