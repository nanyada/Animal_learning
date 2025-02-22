import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class SoundsSection extends StatelessWidget {
  final AudioPlayer _audioPlayer = AudioPlayer();

  final List<Map<String, String>> animals = [
    {'name': 'Chicken', 'sound': 'chicken.mp3'},
    {'name': 'Dog', 'sound': 'dog.mp3'},
    {'name': 'Duck', 'sound': 'duck.mp3'},
    {'name': 'Elephant', 'sound': 'elephant.mp3'},
    {'name': 'Lion', 'sound': 'lion.mp3'},
    {'name': 'Pig', 'sound': 'pig.mp3'},
  ];

  void _playSound(String soundFile) async {
    await _audioPlayer.play(AssetSource('images/$soundFile'));
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: animals.length,
      itemBuilder: (context, index) {
        final animal = animals[index];
        return ListTile(
          title: Text(animal['name']!),
          trailing: IconButton(
            icon: Icon(Icons.play_arrow),
            onPressed: () => _playSound(animal['sound']!),
          ),
        );
      },
    );
  }
}