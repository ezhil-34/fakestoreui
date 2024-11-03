import 'package:flutter/material.dart';

class Tshirt extends StatefulWidget {
  @override
  shirtState createState() => shirtState();
}

class shirtState extends State<Tshirt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title:Text(
          'Tshirt',
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
                  'https://th.bing.com/th/id/OIP.F9sQ-mKiT51gmA21z3DGtgAAAA?w=201&h=245&c=7&r=0&o=5&pid=1.7',
                  height: 300,
                  width: 300,
                ),
                SizedBox(height: 8), // Space between image and title
                Text(
                  ' Tshirt',
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
                  'Tshirt: white color',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold, // Makes the text bold
                    fontSize: 50,
                  ),
                ),
                Text(
                  'Van Heusun',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal, // Normal text weight
                    fontSize: 25,
                  ),
                ),
                Text(
                  'Category: clothes',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal, // Normal text weight
                    fontSize: 20,
                  ),
                ),
                Text(
                  '\$20000', // Corrected price display
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold, // Makes the text bold
                    fontSize: 25,
                  ),
                ),
                SizedBox(height: 10), // Space between price and stars
                StarRating(rating: 3.5), // Add StarRating widget here
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
    home: Tshirt(),
  ));
}
