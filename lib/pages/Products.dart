import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Products',
          style: TextStyle(fontWeight: FontWeight.bold), // Bold title
        ),
        centerTitle: true,
        backgroundColor: Colors.amber,
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.black), // Menu icon
          onPressed: () {
            // Open the drawer when menu icon is pressed
            Scaffold.of(context).openDrawer();
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.black), // Search icon
            onPressed: () {
              // Search action here
            },
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView( // Allow scrolling if content is too long
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 20), // Space between AppBar and images

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Image.network(
                        'https://th.bing.com/th/id/OIP.UEDXfxzAsJ2tNBj5A9bH3wHaJQ?w=144&h=180&c=7&r=0&o=5&pid=1.7',
                      ),
                      TextButton.icon(
                        onPressed: () {
                          Navigator.pushNamed(context, '/Alittlelife');
                        },
                        icon: Icon(Icons.book),
                        label: Text(
                          'A Little Life',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.network(
                        'https://th.bing.com/th/id/OIP.RoqC7vI7iTyQjx28o8IWSAAAAA?w=196&h=196&c=7&r=0&o=5&pid=1.7',
                      ),
                      TextButton.icon(
                        onPressed: () {
                          Navigator.pushNamed(context, '/laptop');
                        },
                        icon: Icon(Icons.laptop),
                        label: Text(
                          'MSI Katana A17',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.network(
                        'https://th.bing.com/th/id/OIP.tW3n94vb9HqrW1t68xiT8QAAAA?w=244&h=183&c=7&r=0&o=5&pid=1.7',
                      ),
                      TextButton.icon(
                        onPressed: () {
                          Navigator.pushNamed(context, '/watch');
                        },
                        icon: Icon(Icons.watch),
                        label: Text(
                          'Rolex Watch',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],

              ),

              // Space before the Creatine product
              SizedBox(height: 30),

              // Creatine product aligned to the left
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround, // Align to the left
                children: [
                  Column(
                    children: [
                      Image.network(
                        'https://th.bing.com/th/id/OIP.ctdiZo0_S0P6lUUiPw2UhAHaHa?w=179&h=180&c=7&r=0&o=5&pid=1.7',
                      ),
                      TextButton.icon(
                        onPressed: () {
                          Navigator.pushNamed(context, '/creatine');
                        },
                        icon: Icon(Icons.watch),
                        label: Text(
                          'Creatine',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              // Space before the iPhone product


              SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                     'https://th.bing.com/th/id/OIP.F9sQ-mKiT51gmA21z3DGtgAAAA?w=201&h=245&c=7&r=0&o=5&pid=1.7',
                  ),
                  TextButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(context, '/tshirt');
                    },
                    label: Text(
                      'Tshirt',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),// Adds space below the button
            ],
          ),


        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Product(),
  ));
}

