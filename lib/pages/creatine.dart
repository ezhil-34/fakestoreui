import 'package:flutter/material.dart';

class Creatine extends StatefulWidget {
  @override
  creatineState createState() => creatineState();
}

class creatineState extends State<Creatine> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title:Text(
          'Creatine',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold, // Makes the text bold
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start, // Align items at the top
        children: [
          Padding(
            padding: const EdgeInsets.all(30.0), // Padding around the image
            child: Column(
              children: [
                Image.network(
                  'https://th.bing.com/th/id/OIP.ctdiZo0_S0P6lUUiPw2UhAHaHa?w=179&h=180&c=7&r=0&o=5&pid=1.7',
                  height: 300,
                  width: 300,
                ),
                SizedBox(height: 8), // Space between image and title
                Text(
                  'Creatine',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold, // Makes the text bold
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 20), // Space between title and review
                Text(
                  'Review:',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,// Slightly lighter color for the review
                    fontSize: 40,
                  ),
                  textAlign: TextAlign.center, // Center the review text
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 30.0), // Space from the left and top
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, // Align text to the start (left)
              children: [
                Text(
                  'Creatine: Monohydrate',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold, // Makes the text bold
                    fontSize: 50,
                  ),
                ),
                Text(
                  'Micronised creatine',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal, // Normal text weight
                    fontSize: 25,
                  ),
                ),
                Text(
                  'Category: Supplement',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal, // Normal text weight
                    fontSize: 20,
                  ),
                ),
                Text(
                  '\$49', // Corrected price display
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold, // Makes the text bold
                    fontSize: 25,
                  ),
                ),
                SizedBox(height: 10), // Space between price and stars
                StarRating(rating: 4.5), // Add StarRating widget here
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class StarRating extends StatelessWidget {
  final double rating; // Rating value (0.0 to 5.0)

  StarRating({required this.rating});

  @override
  Widget build(BuildContext context) {
    // Create a list of stars based on the rating
    List<Widget> stars = [];
    for (int i = 1; i <= 5; i++) {
      stars.add(
        Icon(
          i <= rating ? Icons.star : Icons.star_border, // Filled or unfilled star
          color: Colors.amber,
          size: 30.0, // Size of the stars
        ),
      );
    }

    return Row(
      children: stars,
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Creatine(),
  ));
}
