import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

//Creating Music App

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  AudioPlayer player = AudioPlayer();

  void soundplay(int soundtype) async {
    await player.play(AssetSource('tone$soundtype.mp3'));
  }

  List<bool> isplayer = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];
  // bool isplayer = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Demo flutter"),
          centerTitle: true,
        ),
        body: Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(
                    () {
                      int index = 0;
                      if (isplayer[index]) {
                        player.pause();
                      } else {
                        soundplay(1);
                      }
                      isplayer = List.generate(
                          7, (i) => i == index ? !isplayer[i] : false);
                    },
                  );
                },
                child:
                    isplayer[0] ? Icon((Icons.pause)) : Icon(Icons.play_arrow),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.yellow,
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    int index = 1;
                    if (isplayer[index]) {
                      player.pause();
                    } else {
                      soundplay(2);
                    }
                    // isplayer = !isplayer;
                    isplayer = List.generate(
                        7, (i) => i == index ? !isplayer[i] : false);
                  });
                },
                child:
                    isplayer[1] ? Icon((Icons.pause)) : Icon(Icons.play_arrow),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    int index = 2;
                    if (isplayer[index]) {
                      player.pause();
                    } else {
                      soundplay(3);
                    }
                    isplayer = List.generate(
                        7, (i) => i == index ? !isplayer[i] : false);
                  });
                },
                child:
                    isplayer[2] ? Icon((Icons.pause)) : Icon(Icons.play_arrow),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.pink,
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    int index = 3;
                    if (isplayer[index]) {
                      player.pause();
                    } else {
                      soundplay(4);
                    }
                    isplayer = List.generate(
                        7, (i) => i == index ? !isplayer[i] : false);
                  });
                },
                child:
                    isplayer[3] ? Icon((Icons.pause)) : Icon(Icons.play_arrow),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.deepOrange,
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    int index = 4;
                    if (isplayer[index]) {
                      player.pause();
                    } else {
                      soundplay(5);
                    }
                    isplayer = List.generate(
                        7, (i) => i == index ? !isplayer[i] : false);
                  });
                },
                child:
                    isplayer[4] ? Icon((Icons.pause)) : Icon(Icons.play_arrow),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    int index = 5;
                    if (isplayer[index]) {
                      player.pause();
                    } else {
                      soundplay(6);
                    }
                    isplayer = List.generate(
                        7, (i) => i == index ? !isplayer[i] : false);
                  });
                },
                child:
                    isplayer[5] ? Icon((Icons.pause)) : Icon(Icons.play_arrow),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.greenAccent,
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    int index = 6;
                    if (isplayer[index]) {
                      player.pause();
                    } else {
                      soundplay(7);
                    }
                    isplayer = List.generate(
                        7, (i) => i == index ? !isplayer[i] : false);
                  });
                },
                child: isplayer[6] ? Icon(Icons.pause) : Icon(Icons.play_arrow),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.cyanAccent,
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
