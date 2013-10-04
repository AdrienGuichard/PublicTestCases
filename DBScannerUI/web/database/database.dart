part of dbscanner;

//@CustomTag('database-loop')
class DatabaseElement extends PolymerElement with ObservableMixin {
  @observable List<DatabaseEntity> databases;
}