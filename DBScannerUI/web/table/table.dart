part of dbscanner;

//@CustomTag('database-loop')
class TableElement extends PolymerElement with ObservableMixin {
  @observable List<TableEntity> tablesToShow = toObservable([]);
  @observable String filter;
  @observable int numberOfTables = 0;
  @observable bool top20 = true;
  
  List<TableEntity> tables;
  ColumnElement ce;
  Map<int, TableEntity> tableMap = {};

  int get takeValue => top20?20:20000;

  void created() {
    super.created();
    tablesToShow.addAll(tables.take(takeValue));
    numberOfTables = tables.length;
    tables.forEach((TableEntity t) {
      tableMap[t.id] = t;
    });
    super.created();
    bindProperty(this, const Symbol('filter'), performTableFilter);
    bindProperty(this, const Symbol('top20'), performTableFilter);
  }

  void attributeChanged(String name, String oldValue, String newValue) {
    super.attributeChanged(name, oldValue, newValue);
    print("AUO TableElement attributeChanged");
  }
  performTableFilter() {
    tablesToShow.clear();
    if (filter == null || filter.length == 0) {
      tablesToShow.addAll(top20?tables.take(20):tables);
      ce.columnsToShow.clear();
      return;
    }
    RegExp re = new RegExp(filter);
    
    tablesToShow.addAll(tables.where((TableEntity t) {
      if (t.name != null && t.name.contains(re)) return true;
      else return false;
    }).take(takeValue));
 
    ce.performColumnFilter();
  }
}