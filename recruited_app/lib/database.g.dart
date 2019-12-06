// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

class $FloorAppDatabase {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder databaseBuilder(String name) =>
      _$AppDatabaseBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder inMemoryDatabaseBuilder() =>
      _$AppDatabaseBuilder(null);
}

class _$AppDatabaseBuilder {
  _$AppDatabaseBuilder(this.name);

  final String name;

  final List<Migration> _migrations = [];

  Callback _callback;

  /// Adds migrations to the builder.
  _$AppDatabaseBuilder addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  /// Adds a database [Callback] to the builder.
  _$AppDatabaseBuilder addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  /// Creates the database and initializes it.
  Future<AppDatabase> build() async {
    final database = _$AppDatabase();
    database.database = await database.open(
      name ?? ':memory:',
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$AppDatabase extends AppDatabase {
  _$AppDatabase([StreamController<String> listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  AthleteDao _athleteDaoInstance;

  Future<sqflite.Database> open(String name, List<Migration> migrations,
      [Callback callback]) async {
    final path = join(await sqflite.getDatabasesPath(), name);

    return sqflite.openDatabase(
      path,
      version: 1,
      onConfigure: (database) async {
        await database.execute('PRAGMA foreign_keys = ON');
      },
      onOpen: (database) async {
        await callback?.onOpen?.call(database);
      },
      onUpgrade: (database, startVersion, endVersion) async {
        MigrationAdapter.runMigrations(
            database, startVersion, endVersion, migrations);

        await callback?.onUpgrade?.call(database, startVersion, endVersion);
      },
      onCreate: (database, version) async {
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `athlete` (`id` INTEGER PRIMARY KEY AUTOINCREMENT, `name` TEXT NOT NULL, `mail` TEXT NOT NULL, `sport` TEXT NOT NULL, `team` TEXT NOT NULL, `age` INTEGER NOT NULL)');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `post` (`id` INTEGER PRIMARY KEY AUTOINCREMENT, `athleteId` INTEGER NOT NULL, `content` TEXT NOT NULL, FOREIGN KEY (`athleteId`) REFERENCES `athlete` (`id`) ON UPDATE NO ACTION ON DELETE NO ACTION)');

        await callback?.onCreate?.call(database, version);
      },
    );
  }

  @override
  AthleteDao get athleteDao {
    return _athleteDaoInstance ??= _$AthleteDao(database, changeListener);
  }
}

class _$AthleteDao extends AthleteDao {
  _$AthleteDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database),
        _athleteInsertionAdapter = InsertionAdapter(
            database,
            'athlete',
            (Athlete item) => <String, dynamic>{
                  'id': item.id,
                  'name': item.name,
                  'mail': item.mail,
                  'sport': item.sport,
                  'team': item.team,
                  'age': item.age
                }),
        _postInsertionAdapter = InsertionAdapter(
            database,
            'post',
            (Post item) => <String, dynamic>{
                  'id': item.id,
                  'athleteId': item.athleteId,
                  'content': item.content
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  static final _postMapper = (Map<String, dynamic> row) =>
      Post(row['id'] as int, row['athleteId'] as int, row['content'] as String);

  static final _athleteMapper = (Map<String, dynamic> row) => Athlete(
      row['id'] as int,
      row['name'] as String,
      row['mail'] as String,
      row['sport'] as String,
      row['team'] as String,
      row['age'] as int);

  final InsertionAdapter<Athlete> _athleteInsertionAdapter;

  final InsertionAdapter<Post> _postInsertionAdapter;

  @override
  Future<List<Post>> findAllPost() async {
    return _queryAdapter.queryList('SELECT * FROM post', mapper: _postMapper);
  }

  @override
  Future<List<Athlete>> findAllAthlete() async {
    return _queryAdapter.queryList('SELECT * FROM athlete',
        mapper: _athleteMapper);
  }

  @override
  Future<Athlete> findAthleteById(int id) async {
    return _queryAdapter.query('SELECT * FROM athlete WHERE id = ?',
        arguments: <dynamic>[id], mapper: _athleteMapper);
  }

  @override
  Future<void> insertAthlete(Athlete athlete) async {
    await _athleteInsertionAdapter.insert(
        athlete, sqflite.ConflictAlgorithm.abort);
  }

  @override
  Future<void> insertPost(Post post) async {
    await _postInsertionAdapter.insert(post, sqflite.ConflictAlgorithm.abort);
  }
}
