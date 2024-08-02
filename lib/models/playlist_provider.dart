import 'package:flutter/material.dart';
import 'package:music_app/models/song.dart';



class PlaylistProvider extends ChangeNotifier{
  // playlist of songs
  final List<Song> _playlist=[
    // song 1
    Song(
      songName: "Song 1",
      artistName: "Artist 1",
      albumArtImagePath: "assets/images/Album1_Large.jpg",
      audioPath: "audio/song1.mp3",
    ),
    // song 2
    Song(
      songName: "Song 2",
      artistName: "Artist 2",
      albumArtImagePath: "assets/images/Album2_Large.jpg",
      audioPath: "audio/song2.mp3",
    ),

    // song 3
    Song(
      songName: "Song 3",
      artistName: "Artist 3",
      albumArtImagePath: "assets/images/Album3_Large.jpg",
      audioPath: "audio/song3.mp3",
    ),
  ];

  // current song playing index
int? _currentSongIndex;

// getter

List<Song> get playlist=> _playlist;
int? get currentSongIndex => _currentSongIndex;
}