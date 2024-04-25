import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class ImageToTextAndSound extends StatefulWidget {
  @override
  _ImageToTextAndSoundState createState() => _ImageToTextAndSoundState();
}

class _ImageToTextAndSoundState extends State<ImageToTextAndSound> {
  String currentText = '';
  AudioPlayer audioPlayer = AudioPlayer();

  final List<String> imagePaths = [
    'assets/AKM.png',
    'assets/Kar98k.png',
    'assets/M416.png',
    'assets/M762.png',
    'assets/SCAR-L.png',
  ];

  final List<String> textToShow = [
    'AKM',
    'Kar98k',
    'M416',
    'M762',
    'SCAR-L',
  ];

  final List<String> soundPaths = [
    'assets/AKM_Sound.mp3',
    'assets/Kar98k_Sound.mp3',
    'assets/M416_Sound.mp3',
    'assets/M762_Sound.mp3',
    'assets/SCAR-L_Sound.mp3',
  ];

  void playSound(String soundPath) async {
    int result = await audioPlayer.play(soundPath, isLocal: true);
    if (result != 1) {
      print('Error playing sound');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PUBG Weapon Sound Effect'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        currentText = textToShow[0];
                      });
                      playSound(soundPaths[0]);
                    },
                    child: Image.asset(
                      imagePaths[0],
                      fit: BoxFit.cover,
                      width: 240.0,
                      height: 240.0,
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        currentText = textToShow[1];
                      });
                      playSound(soundPaths[1]);
                    },
                    child: Image.asset(
                      imagePaths[1],
                      fit: BoxFit.cover,
                      width: 240.0,
                      height: 240.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        currentText = textToShow[2];
                      });
                      playSound(soundPaths[2]);
                    },
                    child: Image.asset(
                      imagePaths[2],
                      fit: BoxFit.cover,
                      width: 240.0,
                      height: 240.0,
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        currentText = textToShow[3];
                      });
                      playSound(soundPaths[3]);
                    },
                    child: Image.asset(
                      imagePaths[3],
                      fit: BoxFit.cover,
                      width: 240.0,
                      height: 240.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  currentText = textToShow[4];
                });
                playSound(soundPaths[4]);
              },
              child: Image.asset(
                imagePaths[4],
                fit: BoxFit.cover,
                width: 240.0,
                height: 240.0,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            child: Text(
              currentText,
              style: TextStyle(fontSize: 24.0),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }
}
