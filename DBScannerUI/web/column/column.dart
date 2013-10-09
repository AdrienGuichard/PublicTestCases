part of dbscanner;

//@CustomTag('column-loop') TODO: Do want
class ColumnElement extends PolymerElement with ObservableMixin {
  @observable int numberOfColumns = 567;
  List<ColumnEntity> columns;
  TableElement te;
  @observable List<ColumnEntity> columnsToShow = toObservable([]);
  Map<int, ColumnEntity> columnMap = {};

  void created() {
    super.created();
    numberOfColumns = columns.length;
    // bindProperty(_te, const Symbol('tablesToShow'), _performColumnFilter); TODO: Not working
    columns.forEach((ColumnEntity c) {
      columnMap[c.id] = c;
    });
  }
  
  
  _filterColumns(Completer cmp) {
    Iterable<TableEntity> ite = te.tablesToShow.where((TableEntity tef) {
      return tef.columnsId != null && tef.columnsId.length > 0;
    }).take(20);
    if (ite == null || ite.length == 0) return;
    List<ColumnEntity> cel = [];
    ite.forEach((TableEntity te){
      te.columnsId.forEach((int id) {
        cel.add(columnMap[id]);
      });
    });
    return cmp.complete(cel);
  }
  
  performColumnFilterFuture() {
    if(te.filter.length < 2) {
      columnsToShow.clear();
      return;
    }
    Completer cmp = new Completer();
    Future<Iterable<ColumnEntity>> f = cmp.future;
    f.then((lc) {
      columnsToShow.clear();
      columnsToShow.addAll(lc.take(100));
    });
    _filterColumns(cmp);
  }

  performColumnFilter() {
    if(te.filter.length < 2) {
      columnsToShow.clear();
      return;
    }
    Iterable<TableEntity> ite = te.tablesToShow.where((TableEntity tef) {
      return tef.columnsId != null && tef.columnsId.length > 0;
    }).take(20);
    if (ite == null || ite.length == 0) return;
    List<ColumnEntity> cel = [];
    ite.forEach((TableEntity te){
      te.columnsId.forEach((int id) {
        cel.add(columnMap[id]);
      });
    });
    columnsToShow.clear();
    columnsToShow.addAll(cel.take(100));

  }
}