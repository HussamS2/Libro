import 'package:flutter/material.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

class Economics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(double.infinity, 100),
          child: AppBar(
            title: Text(
              'Economics',
              style: TextStyle(
                fontFamily: 'DMSans',
                fontWeight: FontWeight.w700,
                fontSize: 23,
                color: Colors.black,
              ),
            ),
            iconTheme: IconThemeData(color: Colors.black),
            flexibleSpace: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('Assets/eng.png'),
                        fit: BoxFit.cover))),
          ),
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                elevation: 14,
                shadowColor: Colors.grey,
                child: Container(
                  height: 170.0,
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 170.0,
                        width: 125.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                topLeft: Radius.circular(20)),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('Assets/animal_s.png'))),
                      ),
                      Container(
                        height: 170,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Animal Spirits",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Color.fromARGB(255, 48, 48, 54),
                                    fontFamily: 'DMSans',
                                    fontWeight: FontWeight.w700),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 5, 0, 2),
                                child: Container(
                                  width: 200,
                                  child: Text(
                                    "George Akerlof",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Color.fromARGB(255, 48, 48, 54),
                                        fontFamily: 'DMSans',
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 5, 0, 2),
                                child: Container(
                                  width: 200,
                                  child: Text(
                                    "Princeton University, 2010",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Color.fromARGB(255, 48, 48, 54),
                                        fontFamily: 'DMSans',
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 5, 0, 2),
                                child: Container(
                                  width: 200,
                                  child: Text(
                                    "261 pages",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Color.fromARGB(255, 48, 48, 54),
                                        fontFamily: 'DMSans',
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: Container(
                                  width: 100,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      new ElevatedButton(
                                        child: Text("Download"),
                                        onPressed: () async {
                                          final status = await Permission
                                              .storage
                                              .request();
                                          if (status.isGranted) {
                                            final externalDir =
                                                await getExternalStorageDirectory();

                                            // ignore: unused_local_variable
                                            final id =
                                                await FlutterDownloader.enqueue(
                                              url:
                                                  "http://www.library.fa.ru/files/Shiller.pdf",
                                              savedDir: externalDir.path,
                                              fileName: "Download",
                                              showNotification: true,
                                              openFileFromNotification: true,
                                            );
                                          } else {
                                            print("Permission denied");
                                          }
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                elevation: 14,
                shadowColor: Colors.grey,
                child: Container(
                  height: 170.0,
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 170.0,
                        width: 125.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                topLeft: Radius.circular(20)),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('Assets/thinking_f.png'))),
                      ),
                      Container(
                        height: 170,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Thinking fast & slow",
                                style: TextStyle(
                                    fontSize: 19,
                                    color: Color.fromARGB(255, 48, 48, 54),
                                    fontFamily: 'DMSans',
                                    fontWeight: FontWeight.w700),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 5, 0, 2),
                                child: Container(
                                  width: 200,
                                  child: Text(
                                    "Daniel Kahneman",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Color.fromARGB(255, 48, 48, 54),
                                        fontFamily: 'DMSans',
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 5, 0, 2),
                                child: Container(
                                  width: 200,
                                  child: Text(
                                    "Farrar and Giroux, 2011",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Color.fromARGB(255, 48, 48, 54),
                                        fontFamily: 'DMSans',
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 5, 0, 2),
                                child: Container(
                                  width: 200,
                                  child: Text(
                                    "499 Pages",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Color.fromARGB(255, 48, 48, 54),
                                        fontFamily: 'DMSans',
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: Container(
                                  width: 100,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      new ElevatedButton(
                                        child: Text("Download"),
                                        onPressed: () async {
                                          final status = await Permission
                                              .storage
                                              .request();
                                          if (status.isGranted) {
                                            final externalDir =
                                                await getExternalStorageDirectory();

                                            final id =
                                                await FlutterDownloader.enqueue(
                                              url:
                                                  "http://dspace.vnbrims.org:13000/jspui/bitstream/123456789/2224/1/Daniel-Kahneman-Thinking-Fast-and-Slow-.pdf",
                                              savedDir: externalDir.path,
                                              fileName: "Download",
                                              showNotification: true,
                                              openFileFromNotification: true,
                                            );
                                          } else {
                                            print("Permission denied");
                                          }
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                elevation: 14,
                shadowColor: Colors.grey,
                child: Container(
                  height: 170.0,
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 170.0,
                        width: 125.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                topLeft: Radius.circular(20)),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image:
                                    AssetImage('Assets/the_undercover.png'))),
                      ),
                      Container(
                        height: 170,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "The Undercover Economist",
                                style: TextStyle(
                                    fontSize: 19,
                                    color: Color.fromARGB(255, 48, 48, 54),
                                    fontFamily: 'DMSans',
                                    fontWeight: FontWeight.w700),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 5, 0, 2),
                                child: Container(
                                  width: 200,
                                  child: Text(
                                    "Tim Harfoed",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Color.fromARGB(255, 48, 48, 54),
                                        fontFamily: 'DMSans',
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 5, 0, 2),
                                child: Container(
                                  width: 200,
                                  child: Text(
                                    "Little Brown, 2005",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Color.fromARGB(255, 48, 48, 54),
                                        fontFamily: 'DMSans',
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 5, 0, 2),
                                child: Container(
                                  width: 200,
                                  child: Text(
                                    "289 Pages",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Color.fromARGB(255, 48, 48, 54),
                                        fontFamily: 'DMSans',
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: Container(
                                  width: 100,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      new ElevatedButton(
                                        child: Text("Download"),
                                        onPressed: () async {
                                          final status = await Permission
                                              .storage
                                              .request();
                                          if (status.isGranted) {
                                            final externalDir =
                                                await getExternalStorageDirectory();

                                            final id =
                                                await FlutterDownloader.enqueue(
                                              url:
                                                  "https://www.u-cursos.cl/ingenieria/2008/2/IN2C1/2/material_docente/bajar?id_material=192590",
                                              savedDir: externalDir.path,
                                              fileName: "Download",
                                              showNotification: true,
                                              openFileFromNotification: true,
                                            );
                                          } else {
                                            print("Permission denied");
                                          }
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                elevation: 14,
                shadowColor: Colors.grey,
                child: Container(
                  height: 170.0,
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 170.0,
                        width: 125.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                topLeft: Radius.circular(20)),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('Assets/freakonomics.png'))),
                      ),
                      Container(
                        height: 170,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Freakonomics",
                                style: TextStyle(
                                    fontSize: 19,
                                    color: Color.fromARGB(255, 48, 48, 54),
                                    fontFamily: 'DMSans',
                                    fontWeight: FontWeight.w700),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 5, 0, 2),
                                child: Container(
                                  width: 200,
                                  child: Text(
                                    "Stephen J. Dubner",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Color.fromARGB(255, 48, 48, 54),
                                        fontFamily: 'DMSans',
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 5, 0, 2),
                                child: Container(
                                  width: 200,
                                  child: Text(
                                    "William Morrow, 2005",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Color.fromARGB(255, 48, 48, 54),
                                        fontFamily: 'DMSans',
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 5, 0, 2),
                                child: Container(
                                  width: 200,
                                  child: Text(
                                    "339 Pages",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Color.fromARGB(255, 48, 48, 54),
                                        fontFamily: 'DMSans',
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: Container(
                                  width: 100,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      new ElevatedButton(
                                        child: Text("Download"),
                                        onPressed: () async {
                                          final status = await Permission
                                              .storage
                                              .request();
                                          if (status.isGranted) {
                                            final externalDir =
                                                await getExternalStorageDirectory();

                                            final id =
                                                await FlutterDownloader.enqueue(
                                              url:
                                                  "http://christophe.heintz.free.fr/bgt/Freakonomics__A_Rogue_Economist_Explores_the_Hidden_Side_of_Everything__Revised_and_Expanded_.pdf",
                                              savedDir: externalDir.path,
                                              fileName: "Download",
                                              showNotification: true,
                                              openFileFromNotification: true,
                                            );
                                          } else {
                                            print("Permission denied");
                                          }
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
