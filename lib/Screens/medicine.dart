import 'package:flutter/material.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

class Medicine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(double.infinity, 100),
          child: AppBar(
            title: Text(
              'Medicine',
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
                        image: AssetImage('Assets/b.png'), fit: BoxFit.cover))),
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
                                image: AssetImage('Assets/gg.png'))),
                      ),
                      Container(
                        height: 170,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Gray's Anatomy 4th E",
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
                                    "Richard Drake",
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
                                    "Elsevier",
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
                                    "1180 pages",
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
                                                  "https://doc-0s-6c-docs.googleusercontent.com/docs/securesc/fckhps39feh3t647f658n9h0ob44um92/p5fj0gn0u07t6r5oljf9jgiis840dnvk/1626294225000/05962682788361275980/09843084308280239137/17zWnz02m_wcMLZkj8Afz0rbmcYRoBfQj?e=download&authuser=0",
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
                                image: AssetImage('Assets/s.png'))),
                      ),
                      Container(
                        height: 170,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Guyton's Physiology",
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
                                    "Arthur Guyton",
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
                                    "Elsevier Health",
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
                                    "1152 Pages",
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
                                                  "https://m965k0pdhw.pdcdn.xyz/dl2.php?id=186663331&h=18856d34351228ab10a5646c7bd79fb7&u=cache&ext=pdf&n=Guyton%20and%20hall%20textbook%20of%20medical%20physiology",
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
                                image: AssetImage('Assets/h.png'))),
                      ),
                      Container(
                        height: 170,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Harrison's Principles",
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
                                    "Antoni Fauci",
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
                                    "McGraw-Hill",
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
                                    "4048 Pages",
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
                                                  "https://doc-0g-3k-docs.googleusercontent.com/docs/securesc/fckhps39feh3t647f658n9h0ob44um92/38h5jvim6fp036k42h23t9hetr3dlab9/1626297150000/06571355361889614428/09843084308280239137/1z5zkPqb2gc-DgKyTnWvGySLJZe9CV78C?e=download&authuser=0&nonce=ta9okrtfopoiq&user=09843084308280239137&hash=nfljnd0i3amkavvgnsu45on63tdoi2ro",
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
                                image: AssetImage('Assets/m.png'))),
                      ),
                      Container(
                        height: 170,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Macleod's Examination",
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
                                    "Graham Douglas",
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
                                    "Elsevier Health",
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
                                    "471 Pages",
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
                                                  "http://www.karary.edu.sd/site/assets/files/24714/macleods_clinical_examination_14_ed.pdf",
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
