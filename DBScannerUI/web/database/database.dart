part of dbscanner;

//@CustomTag('database-loop')
class DatabaseElement extends PolymerElement with ObservableMixin {
  @observable List<DatabaseEntity> databases;
  @observable Map<int, bool> dbToDisplay = {};
  @observable bool tutu = true;

  void created() {
    super.created();
    print("AUO db created");
    databases.forEach((DatabaseEntity de){
      dbToDisplay[de.id] = false;
    });
    bindProperty(this, const Symbol('dbToDisplay'), performDbFilter);
    bindProperty(this, const Symbol('tutu'), performDbFilter2);
  }
  
  void inserted() {
    super.inserted();
    print("AUO db inserted");
  }
  
  void attributeChanged(String name, String oldValue, String newValue) {
    super.attributeChanged(name, oldValue, newValue);
    print("AUO db attributeChanged");

  }
  
  performDbFilter() {
    print("AUO dbToDisplay ${dd++}");
  }
  performDbFilter2() {
    print("AUO2 dbToDisplay ${dd++}");
  }

  int dd = 0;

  void display(MouseEvent event, detail, InputElement target) {
    print("$event , $detail , $target, ${target.id}, ${target.checked}");
  }
}