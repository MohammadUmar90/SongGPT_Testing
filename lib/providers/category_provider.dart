// import 'package:flutter/material.dart';

// class CategoryProvider with ChangeNotifier {
//   List<Map<String, dynamic>> _categories = [
//     {
//       'name': 'Pop',
//       'image': 'https://source.unsplash.com/1600x900/?pop-music',
//       'count': 69,
//     },
//     {
//       'name': 'Rock',
//       'image': 'https://source.unsplash.com/1600x900/?rock-music',
//       'count': 58,
//     },
//     {
//       'name': 'Jazz',
//       'image': 'https://source.unsplash.com/1600x900/?jazz',
//       'count': 32,
//     },
//     {
//       'name': 'Hip-Hop',
//       'image': 'https://source.unsplash.com/1600x900/?hiphop',
//       'count': 27,
//     },
//     {
//       'name': 'Electronic',
//       'image': 'https://source.unsplash.com/1600x900/?electronic-music',
//       'count': 40,
//     },
//     {
//       'name': 'Classical',
//       'image': 'https://source.unsplash.com/1600x900/?classical-music',
//       'count': 15,
//     },
//     {
//       'name': 'Reggae',
//       'image': 'https://source.unsplash.com/1600x900/?reggae',
//       'count': 20,
//     },
//     {
//       'name': 'Blues',
//       'image': 'https://source.unsplash.com/1600x900/?blues',
//       'count': 18,
//     },
//     {
//       'name': 'Country',
//       'image': 'https://source.unsplash.com/1600x900/?country-music',
//       'count': 24,
//     },
//     {
//       'name': 'Folk',
//       'image': 'https://source.unsplash.com/1600x900/?folk-music',
//       'count': 12,
//     },
//     {
//       'name': 'R&B',
//       'image': 'https://source.unsplash.com/1600x900/?RnB',
//       'count': 22,
//     },
//     {
//       'name': 'Soul',
//       'image': 'https://source.unsplash.com/1600x900/?soul-music',
//       'count': 25,
//     },
//     {
//       'name': 'Metal',
//       'image': 'https://source.unsplash.com/1600x900/?metal-music',
//       'count': 30,
//     },
//     {
//       'name': 'Punk',
//       'image': 'https://source.unsplash.com/1600x900/?punk',
//       'count': 14,
//     },
//     {
//       'name': 'Latin',
//       'image': 'https://source.unsplash.com/1600x900/?latin-music',
//       'count': 16,
//     },
//     {
//       'name': 'Alternative',
//       'image': 'https://source.unsplash.com/1600x900/?alternative-music',
//       'count': 19,
//     },
//     {
//       'name': 'Disco',
//       'image': 'https://source.unsplash.com/1600x900/?disco',
//       'count': 11,
//     },
//     {
//       'name': 'Techno',
//       'image': 'https://source.unsplash.com/1600x900/?techno',
//       'count': 17,
//     },
//     {
//       'name': 'House',
//       'image': 'https://source.unsplash.com/1600x900/?house-music',
//       'count': 21,
//     },
//     {
//       'name': 'Trance',
//       'image': 'https://source.unsplash.com/1600x900/?trance',
//       'count': 13,
//     },
//     {
//       'name': 'Dubstep',
//       'image': 'https://source.unsplash.com/1600x900/?dubstep',
//       'count': 8,
//     },
//     {
//       'name': 'Ambient',
//       'image': 'https://source.unsplash.com/1600x900/?ambient-music',
//       'count': 9,
//     },
//     {
//       'name': 'Indie',
//       'image': 'https://source.unsplash.com/1600x900/?indie-music',
//       'count': 26,
//     },
//     {
//       'name': 'Gospel',
//       'image': 'https://source.unsplash.com/1600x900/?gospel-music',
//       'count': 7,
//     },
//     {
//       'name': 'Opera',
//       'image': 'https://source.unsplash.com/1600x900/?opera',
//       'count': 6,
//     },
//     {
//       'name': 'K-Pop',
//       'image': 'https://source.unsplash.com/1600x900/?kpop',
//       'count': 10,
//     },
//     {
//       'name': 'Bollywood',
//       'image': 'https://source.unsplash.com/1600x900/?bollywood-music',
//       'count': 28,
//     },
//     {
//       'name': 'EDM',
//       'image': 'https://source.unsplash.com/1600x900/?edm',
//       'count': 23,
//     },
//     {
//       'name': 'Trap',
//       'image': 'https://source.unsplash.com/1600x900/?trap-music',
//       'count': 18,
//     },
//     {
//       'name': 'Afrobeat',
//       'image': 'https://source.unsplash.com/1600x900/?afrobeat',
//       'count': 13,
//     },
//     {
//       'name': 'Grunge',
//       'image': 'https://source.unsplash.com/1600x900/?grunge',
//       'count': 5,
//     },
//     {
//       'name': 'Swing',
//       'image': 'https://source.unsplash.com/1600x900/?swing',
//       'count': 4,
//     },
//     {
//       'name': 'New Age',
//       'image': 'https://source.unsplash.com/1600x900/?new-age-music',
//       'count': 6,
//     },
//     {
//       'name': 'Bossa Nova',
//       'image': 'https://source.unsplash.com/1600x900/?bossa-nova',
//       'count': 2,
//     },
//     {
//       'name': 'Reggaeton',
//       'image': 'https://source.unsplash.com/1600x900/?reggaeton',
//       'count': 29,
//     },
//   ];

//   List<Map<String, dynamic>> get categories => _categories;
// }
import 'package:flutter/material.dart';

class CategoryProvider with ChangeNotifier {
  List<Map<String, dynamic>> _categories = [
    {'name': 'Pop', 'image': 'https://via.placeholder.com/1600x900', 'count': 69},
    {'name': 'Rock', 'image': 'https://via.placeholder.com/1600x900', 'count': 58},
    {'name': 'Jazz', 'image': 'https://via.placeholder.com/1600x900', 'count': 32},
    {'name': 'Hip-Hop', 'image': 'https://via.placeholder.com/1600x900', 'count': 27},
    {'name': 'Electronic', 'image': 'https://via.placeholder.com/1600x900', 'count': 40},
    {'name': 'Classical', 'image': 'https://via.placeholder.com/1600x900', 'count': 15},
    {'name': 'Reggae', 'image': 'https://via.placeholder.com/1600x900', 'count': 20},
    {'name': 'Blues', 'image': 'https://via.placeholder.com/1600x900', 'count': 18},
    {'name': 'Country', 'image': 'https://via.placeholder.com/1600x900', 'count': 24},
    {'name': 'Folk', 'image': 'https://via.placeholder.com/1600x900', 'count': 12},
    {'name': 'R&B', 'image': 'https://via.placeholder.com/1600x900', 'count': 22},
    {'name': 'Soul', 'image': 'https://via.placeholder.com/1600x900', 'count': 25},
    {'name': 'Metal', 'image': 'https://via.placeholder.com/1600x900', 'count': 30},
    {'name': 'Punk', 'image': 'https://via.placeholder.com/1600x900', 'count': 14},
    {'name': 'Latin', 'image': 'https://via.placeholder.com/1600x900', 'count': 16},
    {'name': 'Alternative', 'image': 'https://via.placeholder.com/1600x900', 'count': 19},
    {'name': 'Disco', 'image': 'https://via.placeholder.com/1600x900', 'count': 11},
    {'name': 'Techno', 'image': 'https://via.placeholder.com/1600x900', 'count': 17},
    {'name': 'House', 'image': 'https://via.placeholder.com/1600x900', 'count': 21},
    {'name': 'Trance', 'image': 'https://via.placeholder.com/1600x900', 'count': 13},
    {'name': 'Dubstep', 'image': 'https://via.placeholder.com/1600x900', 'count': 8},
    {'name': 'Ambient', 'image': 'https://via.placeholder.com/1600x900', 'count': 9},
    {'name': 'Indie', 'image': 'https://via.placeholder.com/1600x900', 'count': 26},
    {'name': 'Gospel', 'image': 'https://via.placeholder.com/1600x900', 'count': 7},
    {'name': 'Opera', 'image': 'https://via.placeholder.com/1600x900', 'count': 6},
    {'name': 'K-Pop', 'image': 'https://via.placeholder.com/1600x900', 'count': 10},
    {'name': 'Bollywood', 'image': 'https://via.placeholder.com/1600x900', 'count': 28},
    {'name': 'EDM', 'image': 'https://via.placeholder.com/1600x900', 'count': 23},
    {'name': 'Trap', 'image': 'https://via.placeholder.com/1600x900', 'count': 18},
    {'name': 'Afrobeat', 'image': 'https://via.placeholder.com/1600x900', 'count': 13},
    {'name': 'Grunge', 'image': 'https://via.placeholder.com/1600x900', 'count': 5},
    {'name': 'Swing', 'image': 'https://via.placeholder.com/1600x900', 'count': 4},
    {'name': 'New Age', 'image': 'https://via.placeholder.com/1600x900', 'count': 6},
    {'name': 'Bossa Nova', 'image': 'https://via.placeholder.com/1600x900', 'count': 2},
    {'name': 'Reggaeton', 'image': 'https://via.placeholder.com/1600x900', 'count': 29},
  ];

  List<Map<String, dynamic>> get categories => _categories;
}
