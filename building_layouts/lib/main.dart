import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  title: "Building layout Demo",
  home: Scaffold(
    appBar: AppBar(title: Text("Building Layouut"),),
    body: Column(
      children: [
        titleSection,
        buttonSection,
      ],
    ),
  ),
));


Widget titleSection = Container(
  padding: EdgeInsets.all(16),
  color: Colors.amber,
  child: Row(
    children: [
      Expanded(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("This is the heading",
              style: TextStyle(
                  fontWeight: FontWeight.bold
              ),
            ),
            Text("This is description")
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(
          Icons.mail,
          color: Colors.red,
        ),
      ),
      Text('41')
    ],
  ),
);

Widget buttonSection = Container(
  padding: EdgeInsets.all(8),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      createButtonClumn(Icons.mail, "Mail"),
      createButtonClumn(Icons.print, "Print"),
      createButtonClumn(Icons.add, "Add")
    ],
  ),
);


Column createButtonClumn(IconData iconData, String iconName){

  return Column(
    children: [
      Icon(
        iconData,
        color: Colors.red,
      ),
      Text(iconName)
    ],
  );

}



