import 'package:flutter/material.dart';
import 'package:tugas_flutter3/deskripsi.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Application',
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text('Flutter Application'),
          backgroundColor: Colors.blueAccent,
        ),
        body: Column(
          children: <Widget>[
            Image.network(
                'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/pet-shop-banner-design-template-4c29604da3e3601ec0a5d464e2cbeb4b_screen.jpg?ts=1621925071'),
            const Text(
              'Welcome To Our Shop!',
              style: TextStyle(fontSize: 24, fontFamily: "Serif", height: 2.0),
            ),
            SizedBox(height: 20),  // Widget 1: SizedBox (Space)
            ElevatedButton(
              onPressed: () {
                // Action when the button is pressed
                print('Button pressed!');
              },
              child: Text('Click Me'),  // Widget 2: ElevatedButton
            ),
            SizedBox(height: 20),  // Widget 3: SizedBox (Space)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.favorite),  // Widget 4: IconButton
                  onPressed: () {
                    // Action when the icon button is pressed
                    print('Favorite icon pressed!');
                  },
                ),
                IconButton(
                  icon: Icon(Icons.shopping_cart),  // Widget 5: IconButton
                  onPressed: () {
                    // Action when the icon button is pressed
                    print('Shopping cart icon pressed!');
                  },
                ),
              ],
            ),
            SizedBox(height: 20), 
            Text(
              'Browse our products:',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            ListView(
              shrinkWrap: true,
              children: <Widget>[
                ListTile(
                  title: Text('Product 1'),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Deskripsi(),));
                  },
                ),
                ListTile(
                  title: Text('Product 2'),
                  onTap: () {
                    // Action when the list tile is tapped
                    print('Product 2 tapped!');
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class DetailPage {
}


