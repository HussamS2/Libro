import 'package:flutter/material.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

class Engineering extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(double.infinity, 100),
          child: AppBar(
            title: Text(
              'Engineering',
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
                                image: AssetImage('Assets/materials_s.png'))),
                      ),
                      Container(
                        height: 170,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Material Science",
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
                                    "Avalon Publishing, 2007",
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
                                            primary: Colors.amberAccent[700]),
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
                                                  "http://kaizenha.com/wp-content/uploads/2016/04/Materials-Textbook-8th-Edition.pdf",
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
                                image: AssetImage('Assets/the_great_b.png'))),
                      ),
                      Container(
                        height: 170,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "The Great Bridge",
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
                                    "Thames & Hudson, 2008",
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
                                            primary: Colors.amberAccent[700]),
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
                                                  "https://doc-04-9k-docs.googleusercontent.com/docs/securesc/hivqupevjqpb90ng9oc5km6936t64pk9/447ugn1h97g1k5vdp9vdhan96are7ig8/1626338175000/03862603172112226995/08654462311410185864Z/1BZgUEZamBjgUzp-Y6xJbqu8KVxDvWJ_u?e=download&nonce=lsgh0ncg77pj2&user=08654462311410185864Z&hash=ja7h09tr4kl3qvr7jamp87pnarf9v6lr",
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
                                image: AssetImage('Assets/why_b.png'))),
                      ),
                      Container(
                        height: 170,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Why Buildings Fall Down",
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
                                    "Roman Mars",
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
                                    "Houghton Harcourt, 2020",
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
                                    "400 Pages",
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
                                            primary: Colors.amberAccent[700]),
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
                                                  "https://civiltechnocrats.files.wordpress.com/2013/11/82003327-why-buildings-fall-down-how-structures-fail.pdf",
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
                                image: AssetImage('Assets/the_design.png'))),
                      ),
                      Container(
                        height: 170,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "The Design of Everyday",
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
                                            primary: Colors.amberAccent[700]),
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
                                                  "https://www.sunyoungkim.org/class/old/hci_f18/pdf/The-Design-of-Everyday-Things-Revised-and-Expanded-Edition.pdf",
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
