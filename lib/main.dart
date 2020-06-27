import 'package:flutter/material.dart';
import 'package:music_trial/instrumental_page.dart';
import 'package:music_trial/jungle_path.dart';
import 'package:music_trial/music_widgets.dart';
import 'package:music_trial/naps_page.dart';
import 'package:music_trial/oceans_page.dart';

void main() {
  runApp(new MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.green[300],
              Colors.blue[200],
            ]
            )
        ),
          child: Container(
            padding: EdgeInsets.fromLTRB(20, 40, 20, 20),
            child: Column(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: 250,
                  decoration: BoxDecoration(
                    borderRadius: new BorderRadius.only(
                      topLeft: const Radius.circular(40.0),
                      topRight: const Radius.circular(40.0),
                      bottomLeft: const Radius.circular(40.0),
                      bottomRight: const Radius.circular(40.0),
                    ),
                    gradient: LinearGradient(
                      colors: [
                        Colors.transparent,
                        Colors.black.withOpacity(0.05)
                      ]
                    )
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: new BorderRadius.only(
                          topLeft: const Radius.circular(40.0),
                          topRight: const Radius.circular(40.0),
                          bottomLeft: const Radius.circular(40.0),
                          bottomRight: const Radius.circular(40.0),
                        ),
                        gradient: LinearGradient(
                            begin: Alignment.bottomRight,
                            colors: [
                              Colors.black.withOpacity(0.2),
                              Colors.black.withOpacity(0.1),
                            ])),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Music',
                          style: TextStyle(fontSize: 30.0, color: Colors.white),
                        ),
                        SizedBox(height: 30.0),
                        Text(
                          "To Improve your sleep",
                          style: TextStyle(fontSize: 15.0)),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: GridView.count(
                      crossAxisCount: 2,
                      padding: EdgeInsets.all(15.0),
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10.0,
                      children: [
                        MusicWidgets(
                            'assets/picture1.jpg', 'Power Naps', SongTwo()),
                        MusicWidgets(
                            'assets/picture2.jpg', 'Jungle', LocalAudio()),
                        MusicWidgets(
                            'assets/picture3.jpg', 'Ocean', OceansAudio()),
                        MusicWidgets(
                            'assets/picture4.jpg', 'Instrumental', InstrumentalAudio()),
                      ]),
                ),
              ],
            ),
          ),
        ));
  }
}
