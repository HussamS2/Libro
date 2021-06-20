import 'package:flutter/material.dart';

class Engineering extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 110),
        child: AppBar(
          title: Text(
            'Engineering',
            style: TextStyle(
              fontFamily: 'DMSans',
              fontWeight: FontWeight.w700,
              fontSize: 30,
              color: Colors.grey[800],
            ),
          ),
          iconTheme: IconThemeData(color: Colors.grey[800]),
          backgroundColor: Colors.grey[200],
        ),
      ),
      body: Center(
        child: Text(''),
      ),
    );
  }
}
