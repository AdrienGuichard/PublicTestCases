part of dbscanner;

//@CustomTag('column-loop') TODO: Do want
class ColumnElement extends PolymerElement with ObservableMixin {
  @observable int numberOfColumns = 567;
  List<ColumnEntity> columns;
  TableElement te;
  @observable List<ColumnEntity> columnsToShow = toObservable([]);

  void created() {
    super.created();
    numberOfColumns = columns.length;
    // bindProperty(_te, const Symbol('tablesToShow'), _performColumnFilter); TODO: Not working
  }
  

  bool skip = false;
  filterColumns(Completer cmp) {
    String filter = te.filter;
    if (skip) return;
    skip = true;
    Iterable<TableEntity> t = te.tablesToShow.where((TableEntity tef) {
      return tef.columnsId != null && tef.columnsId.length > 0;
    }).take(20);
    if (t == null || t.length == 0) return;
    Iterable<ColumnEntity> lc = columns.where((ColumnEntity c) {
      TableEntity match = t.firstWhere((TableEntity w) {
        return w.id == c.tableId;
      }, orElse: () => null);

      if (match != null) {
        return true;
      } else {
        return false;
      }
    }).take(50);
    skip = false;
    return cmp.complete(lc);
  }
  
  _performColumnFilter() {
    if(te.filter.length < 2) {
      columnsToShow.clear();
      skip = false;
      return;
    }
    if (skip) return;
    Completer cmp = new Completer();
    Future<Iterable<ColumnEntity>> f = cmp.future;
    f.then((lc) {
      columnsToShow.clear();
      columnsToShow.addAll(lc);
    });
    
    filterColumns(cmp);
  }
  
  _performColumnFilterNoFuture() {
    List<TableEntity> t = te.tablesToShow.take(20).toList();
    columnsToShow.clear();
    columnsToShow.addAll(columns.where((ColumnEntity c) {
      if (t.firstWhere((TableEntity w) => w.id == c.tableId, orElse: () => null) != null) 
           return true;
      else return false;
    }).take(50));
  }
}