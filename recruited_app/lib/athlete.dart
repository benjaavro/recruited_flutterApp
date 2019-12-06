import 'package:floor/floor.dart';

@Entity(tableName: 'athelte')
class Athlete {
  @PrimaryKey(autoGenerate: true)
  final int id;

  @ColumnInfo(name: 'name', nullable: false)
  final String name;

  @ColumnInfo(name: 'mail', nullable: false)
  final String mail;

  @ColumnInfo(name: 'sport', nullable: false)
  final String sport;

  @ColumnInfo(name: 'team', nullable: false)
  final String team;

  @ColumnInfo(name: 'age', nullable: false)
  final int age;

  Athlete(this.id,this.name,this.mail,this.sport,this.team,this.age);

}