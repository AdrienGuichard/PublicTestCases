part of dbscanner;

//@CustomTag('database-loop')
class TableElement extends PolymerElement with ObservableMixin {
  List<TableEntity> tables;
  @observable List<TableEntity> tablesToShow = toObservable([]);
  @observable String filter;
  @observable int numberOfTables = 0;
  @observable bool top20 = true;
  
  ColumnElement ce;

  void created() {
    super.created();
    tablesToShow.addAll(tables.take(top20?20:20000));
    numberOfTables = tables.length;
    super.created();
    bindProperty(this, const Symbol('filter'), _performFilter);
    bindProperty(this, const Symbol('top20'), _performFilter);
  }

  _performFilter() {
    tablesToShow.clear();
    if (filter == null || filter.length == 0) {
      tablesToShow.addAll(top20?tables.take(20):tables);
      ce.columnsToShow.clear();
      ce.skip = false;
      return;
    }
    RegExp re = new RegExp(filter);
    
    // Use Future
    tablesToShow.addAll(tables.where((TableEntity t) {
      if (t.name != null && t.name.contains(re)) return true;
      else return false;
    }).take(top20?20:20000));
    ce._performColumnFilter();
  }
  
 // get columns
}