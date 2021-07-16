import 'package:flutter/material.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

class Architecture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(double.infinity, 100),
          child: AppBar(
            title: Text(
              'Architecture',
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
                        image: AssetImage('Assets/arch.png'),
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
                                image: AssetImage('Assets/arch4.png'))),
                      ),
                      Container(
                        height: 170,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Understanding Arch",
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
                                    "Leland M. Roth",
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
                                    "Avalon Publishing",
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
                                    "696 pages",
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
                                        style: ElevatedButton.styleFrom(
                                            primary: Colors.brown[400]),
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
                                                  "https://prolightinggroup.com/wp-content/uploads/2020/08/Understanding-Architecture_-Its-Elements-History-and-Meaning.pdf",
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
                                image: AssetImage('Assets/arch3.png'))),
                      ),
                      Container(
                        height: 170,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "World Architecture",
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
                                    "Will Pryce",
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
                                    "Thames & Hudson",
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
                                    "313 Pages",
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
                                        style: ElevatedButton.styleFrom(
                                            primary: Colors.brown[400]),
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
                                                  "https://d1wqtxts1xzle7.cloudfront.net/49595105/_Seton_Lloyd__Trewin_Copplestone__World_architectuBookZZ.org.pdf?1476449567=&response-content-disposition=attachment%3B+filename%3DWORLD_ARCHITECTURE.pdf&Expires=1626456787&Signature=JJfCgwtywM3cy-n6wDktSRch7-AmFjOt2JpsBIOvciQChWl0qa47eVQQbpFsw3nvdS57dVLxzqjX2so0MsXbrRr9U7QNULMtbl8lPHols~h6n4cTyG7XXGF5IYEc~TfB7P1w4l9AW3Z68vYJ5KKxVf9CZgo9-Iji-Flqjfjwn9PpAdv-pez2eMmsYAjZN~imMa25FPGzdKY94IyFjr69sk89J1g4BjlgCUfirAU2GnluTKg5-bo3bnxKO3mQPzGBzffYUw27eLxQaPlv-eZ-bqoEj~KbcKm097g-Cg-ZVTUjViDznGrtW6AY46Ly~1ELKkhqmTkSkJ9nCoDgFtWbNA__&Key-Pair-Id=APKAJLOHF5GGSLRBV4ZA",
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
                                image: AssetImage('Assets/f.png'))),
                      ),
                      Container(
                        height: 170,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Future of Architecture",
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
                                    "Marc Kushner",
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
                                    "Simon & Schuster UK",
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
                                    "176 Pages",
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
                                        style: ElevatedButton.styleFrom(
                                            primary: Colors.brown[400]),
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
                                                  "https://firebasestorage.googleapis.com/v0/b/storage-3cff8.appspot.com/o/2020-05-29%2007-18-34.mp4?alt=media&token=841fffde-2b83-430c-87c3-2d2fd658fd41",
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
                                image: AssetImage('Assets/arch2.png'))),
                      ),
                      Container(
                        height: 170,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "The poetics of space",
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
                                    "Gaston Bachelard",
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
                                    "Universitaires de France",
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
                                    "241 Pages",
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
                                        style: ElevatedButton.styleFrom(
                                            primary: Colors.brown[400]),
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
                                                  "https://arena-attachments.s3.amazonaws.com/1796200/8c66206d2c69ec95f936d50025175924.pdf?1519258465",
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
