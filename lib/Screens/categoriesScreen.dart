import 'package:Library_App/Screens/architecture.dart';
import 'package:Library_App/Screens/art.dart';
import 'package:Library_App/Screens/biology.dart';
import 'package:Library_App/Screens/business.dart';
import 'package:Library_App/Screens/economics.dart';
import 'package:Library_App/Screens/engineering.dart';
import 'package:Library_App/Screens/law.dart';
import 'package:Library_App/Screens/maths.dart';
import 'package:Library_App/Screens/medicine.dart';
import 'package:Library_App/Screens/physics.dart';
import 'package:Library_App/Screens/searchBar.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  void selectCategory(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (c) => Architecture(),
      ),
    );
  }

  void selectCategory2(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (c) => Engineering(),
      ),
    );
  }

  void selectCategory3(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (c) => Art(),
      ),
    );
  }

  void selectCategory4(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (c) => Biology(),
      ),
    );
  }

  void selectCategory5(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (c) => Business(),
      ),
    );
  }

  void selectCategory6(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (c) => Economics(),
      ),
    );
  }

  void selectCategory7(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (c) => Law(),
      ),
    );
  }

  void selectCategory8(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (c) => Maths(),
      ),
    );
  }

  void selectCategory9(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (c) => Medicine(),
      ),
    );
  }

  void selectCategory10(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (c) => Physics(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 70),
        child: AppBar(
          title: Text(
            "Libro",
            style: TextStyle(
              fontFamily: 'DMSans',
              fontWeight: FontWeight.w700,
              fontSize: 45,
              color: Colors.grey[800],
            ),
          ),
          flexibleSpace: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('Assets/bb.png'), fit: BoxFit.cover))),
          elevation: 5,
          bottomOpacity: 0,
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  showSearch(context: context, delegate: DataSearch());
                },
                color: Colors.grey[800],
                iconSize: 35),
            IconButton(
                icon: Icon(Icons.menu),
                color: Colors.grey[800],
                onPressed: () => debugPrint("tapped"),
                iconSize: 35),
          ],
        ),
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(12),
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        crossAxisCount: 2,
        childAspectRatio: 1.233,
        children: <Widget>[
          InkWell(
            onTap: () => selectCategory(context),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('Assets/Architecture.png'),
                  fit: BoxFit.cover,
                ),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 0,
                      blurRadius: 10,
                      offset: Offset(4, 8)),
                ],
                borderRadius: BorderRadius.circular(35.0),
              ),
              padding: EdgeInsets.all(12),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  "Architecture",
                  style: TextStyle(
                      fontFamily: 'DMSans',
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                      color: Colors.grey[800]),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () => selectCategory2(context),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('Assets/Engineering.png'),
                  fit: BoxFit.cover,
                ),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey, blurRadius: 10, offset: Offset(4, 8)),
                ],
                borderRadius: BorderRadius.circular(35.0),
              ),
              padding: EdgeInsets.all(12),
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'Engineering',
                    style: TextStyle(
                      fontFamily: 'DMSans',
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                      color: Colors.grey[800],
                    ),
                  )),
            ),
          ),
          InkWell(
            onTap: () => selectCategory6(context),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('Assets/Economics.png'),
                  fit: BoxFit.cover,
                ),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey, blurRadius: 10, offset: Offset(4, 8)),
                ],
                borderRadius: BorderRadius.circular(35.0),
              ),
              padding: EdgeInsets.all(12),
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'Economics',
                    style: TextStyle(
                        fontFamily: 'DMSans',
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                        color: Colors.grey[800]),
                  )),
            ),
          ),
          InkWell(
            onTap: () => selectCategory9(context),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('Assets/Medicine.png'),
                  fit: BoxFit.cover,
                ),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey, blurRadius: 10, offset: Offset(4, 8)),
                ],
                borderRadius: BorderRadius.circular(35.0),
              ),
              padding: EdgeInsets.all(12),
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'Medicine',
                    style: TextStyle(
                        fontFamily: 'DMSans',
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                        color: Colors.grey[800]),
                  )),
            ),
          ),
          InkWell(
            onTap: () => selectCategory4(context),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('Assets/Biology.png'),
                  fit: BoxFit.cover,
                ),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey, blurRadius: 10, offset: Offset(4, 8)),
                ],
                borderRadius: BorderRadius.circular(35.0),
              ),
              padding: EdgeInsets.all(12),
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'Biology',
                    style: TextStyle(
                        fontFamily: 'DMSans',
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                        color: Colors.grey[800]),
                  )),
            ),
          ),
          InkWell(
            onTap: () => selectCategory5(context),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('Assets/Business.png'),
                  fit: BoxFit.cover,
                ),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey, blurRadius: 10, offset: Offset(4, 8)),
                ],
                borderRadius: BorderRadius.circular(35.0),
              ),
              padding: EdgeInsets.all(12),
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'Business',
                    style: TextStyle(
                        fontFamily: 'DMSans',
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                        color: Colors.grey[800]),
                  )),
            ),
          ),
          InkWell(
            onTap: () => selectCategory10(context),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('Assets/Physics.png'),
                  fit: BoxFit.cover,
                ),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey, blurRadius: 10, offset: Offset(4, 8)),
                ],
                borderRadius: BorderRadius.circular(35.0),
              ),
              padding: EdgeInsets.all(12),
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'Physics',
                    style: TextStyle(
                        fontFamily: 'DMSans',
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                        color: Colors.grey[800]),
                  )),
            ),
          ),
          InkWell(
            onTap: () => selectCategory8(context),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('Assets/Maths.png'),
                  fit: BoxFit.cover,
                ),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey, blurRadius: 15, offset: Offset(4, 8)),
                ],
                borderRadius: BorderRadius.circular(35.0),
              ),
              padding: EdgeInsets.all(12),
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'Maths',
                    style: TextStyle(
                        fontFamily: 'DMSans',
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                        color: Colors.grey[800]),
                  )),
            ),
          ),
          InkWell(
            onTap: () => selectCategory3(context),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('Assets/Art.png'),
                  fit: BoxFit.cover,
                ),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey, blurRadius: 15, offset: Offset(4, 8)),
                ],
                borderRadius: BorderRadius.circular(35.0),
              ),
              padding: EdgeInsets.all(12),
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'Art',
                    style: TextStyle(
                        fontFamily: 'DMSans',
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                        color: Colors.grey[800]),
                  )),
            ),
          ),
          InkWell(
            onTap: () => selectCategory7(context),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('Assets/Law.png'),
                  fit: BoxFit.cover,
                ),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey, blurRadius: 15, offset: Offset(4, 8)),
                ],
                borderRadius: BorderRadius.circular(35.0),
              ),
              padding: EdgeInsets.all(12),
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'Law',
                    style: TextStyle(
                        fontFamily: 'DMSans',
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                        color: Colors.grey[800]),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
