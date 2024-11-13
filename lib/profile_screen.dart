import 'package:flutter/material.dart';
import 'release_card.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProfileSection(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Activities',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            ReleaseCard(
              albumImage: 'assets/betau.jpeg',
              albumTitle: 'Beta.U Digital Creative',
              year: 'Januari 2024',
              status: 'On Going',
            ),
            ReleaseCard(
              albumImage: 'assets/gemastik.jpeg',
              albumTitle: 'Gemastik 2024',
              year: 'September 2023',
              status: 'Complete',
            ),
            ReleaseCard(
              albumImage: 'assets/ilits.jpeg',
              albumTitle: 'IniLho ITS! 2024',
              year: 'Oktober 2023',
              status: 'Complete',
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.purple[400]!, Colors.white],
        ),
      ),
      child: Column(
        children: [
          CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage('assets/agnes.JPG'),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Agnes Juliana',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 5),
              Icon(Icons.verified, color: Colors.purple),
            ],
          ),
          SizedBox(height: 4),
          Text(
            '5026221006',
            style: TextStyle(fontSize: 16, color: Colors.purple),
          ),
          SizedBox(height: 4),
          Text(
            'Funfact: Islam dari lahir tapi sering dikira non-islam "nama nya nonis banget"',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
