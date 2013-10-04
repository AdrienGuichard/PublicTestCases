library dbscanner;

import 'dart:html';
import "dart:async";

import 'package:polymer/polymer.dart';

import "proto/full.pb.dart";

part "database/database.dart";
part "table/table.dart";
part "column/column.dart";

typedef void httpRequestSignature(HttpRequest req);

void getRemoteData(String resource, httpRequestSignature onSuccess) {
  HttpRequest httpRequest = new HttpRequest();
  httpRequest.responseType = 'arraybuffer';
  httpRequest
    ..open('GET', "${resource}")
    ..onLoadEnd.listen((e) => onSuccess(httpRequest))
    ..send();
}

List<int> loadFileCallback(HttpRequest req) {
  if (req.status != 200) {
    // TODO Error retrievePreviousResponseText();
  } else {
      return req.response as List<int>;
  }
}

void loadListAllDb(HttpRequest r) {
  FullBucket b = new FullBucket.fromBuffer(loadFileCallback(r));
  //query("#dbs").model = b.databaseEntity; TODO not working
  DatabaseElement dbe = new DatabaseElement();
  dbe.databases = b.databaseEntity;
  registerPolymerElement('database-loop', () => dbe);
}

void loadAllUveGot(HttpRequest r) {
  FullBucket b = new FullBucket.fromBuffer(loadFileCallback(r));
  //query("#dbs").model = b.databaseEntity; // TODO: Do Want
  DatabaseElement dbe = new DatabaseElement();
  dbe.databases = b.databaseEntity;

  TableElement te = new TableElement();
  te.tables = b.tableEntity;

  ColumnElement ce = new ColumnElement();
  ce.columns = b.columnEntity;
  te.ce = ce; // Do not want
  ce.te = te;
  
  // TODO: Do not Want !!
  registerPolymerElement('database-loop', () => dbe);
  registerPolymerElement('table-loop', () => te);
  registerPolymerElement('column-loop', () => ce);
}

main() {
  print("Hello AUO");
  //getRemoteData("ERPConverter/info/listAllDb", loadListAllDb);
  //getRemoteData("http://localhost:8080/ERPConverter/info/simplyListAllUveGot", loadAllUveGot);
  getRemoteData("http://127.0.0.1:3030/DBScannerUI/web/auo4everIIp", loadAllUveGot);
}
