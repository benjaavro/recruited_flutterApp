import 'dart:async';
import 'package:floor/floor.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

import 'athlete.dart';
import 'athleteDAO.dart';

part 'database.g.dart'; // the generated code will be there

@Database(version: 1, entities: [Athlete,Post])
abstract class AppDatabase extends FloorDatabase {
  AthleteDao get athleteDao;
}