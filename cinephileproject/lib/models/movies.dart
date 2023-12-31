// ignore_for_file: camel_case_types

import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';

part 'movies.g.dart';

@HiveType(typeId: 1)
class movies extends HiveObject{
  @HiveField(0)
  final String title;
  @HiveField(1)
  final int releaseyear;
  @HiveField(2)
  final String movielanguage;
  @HiveField(3)
  final int time;
  @HiveField(4)
  final String moviedirector;
  @HiveField(5)
  final dynamic movierating;
  @HiveField(6)
  final String moviegenre;
  @HiveField(7)
  final String review;
  @HiveField(8)
  final String imageUrl;

  movies(
      {required this.title,
      required this.releaseyear,
      required this.movielanguage,
      required this.time,
      required this.moviedirector,
      required this.movierating,
      required this.moviegenre,
      required this.review,
      required this.imageUrl});
}
