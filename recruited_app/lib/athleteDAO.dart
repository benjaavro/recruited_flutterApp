import 'package:floor/floor.dart';
import 'athlete.dart';

@dao
abstract class AthleteDao {
  @Query('SELECT * FROM post')
  Future<List<Post>> findAllPost();

  @Query('SELECT * FROM athlete WHERE id = :id')
  Future<Athlete> findAthleteById(int id);

  @insert
  Future<void> insertAthlete(Athlete athlete);

  @insert
  Future<void> insertPost(Post post);
}